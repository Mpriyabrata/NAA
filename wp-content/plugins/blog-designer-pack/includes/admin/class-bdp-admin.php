<?php
/**
 * Admin Class
 *
 * Handles the Admin side functionality of plugin
 *
 * @package Blog Designer Pack
 * @since 1.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

class Bdp_Admin {

	function __construct() {

		// Action to register admin menu
		add_action( 'admin_menu', array($this, 'bdp_register_menu'), 9 );

		// Filter to add row action in category table
		add_filter( 'category_row_actions', array($this, 'bdp_add_tax_row_data'), 10, 2 );

		// Action to add admin message
		add_action( 'admin_init', array($this, 'bdp_admin_processes') );

		// Action to add admin message
		add_action( 'admin_notices', array($this, 'bdp_premium_admin_messages') );

		// Filter to add plugin action link
		add_filter( 'plugin_action_links_' . BDP_PLUGIN_BASENAME, array($this, 'bdp_plugin_action_links') );
	}

	/**
	 * Function to register admin menus
	 * 
	 * @package Blog Designer Pack
	 * @since 1.0.4
	 */
	function bdp_register_menu() {
		
		// Getting Started Page
		add_menu_page( __('Blog Designer Pack', 'blog-designer-pack'), __('Blog Designer Pack', 'blog-designer-pack'), 'edit_posts', 'bdp-about', array($this, 'bdp_getting_started_page'), 'dashicons-editor-bold', 6 );
		
		// Register plugin premium page
		add_submenu_page( 'bdp-about', __('Premium - Blog Designer Pack', 'blog-designer-pack'), '<span style="color:#ffd800">'.__('Premium', 'blog-designer-pack').'</span>', 'edit_posts', 'bdp-premium', array($this, 'bdp_premium_page') );
	}	
	
	/**
	 * Getting Started Page Html
	 * 
	 * @package Blog Designer Pack	
	 * @since 1.0
	 */
	function bdp_premium_page() {
		include_once( BDP_DIR . '/includes/admin/premium.php' );
	}

	/**
	 * Function to get 'How It Works' HTML
	 *
	 * @package Blog Designer Pack	
	 * @since 1.0.0
	 */
	function bdp_getting_started_page() {
		include_once( BDP_DIR . '/includes/admin/getting-started.php' );
	}

	/**
	 * Function to add category row action
	 * 
	 * @package Blog Designer Pack
	 * @since 1.0
	 */
	function bdp_add_tax_row_data( $actions, $tag ) {
		return array_merge( array( 'pluginplay_id' => "<span style='color:#555'>ID: {$tag->term_id}</span>" ), $actions );
	}

	/**
	 * Function to perform some admin prior processes
	 * 
	 * @since 1.0.7
	 */
	function bdp_admin_processes() {
		
		// If promote notice is cancelled
		if( isset( $_GET['message'] ) && $_GET['message'] == 'bdp-pro-buy-notice' && isset( $_GET['_wpnonce'] ) && wp_verify_nonce( $_GET['_wpnonce'], 'bdp-promote-notice' ) ) {
			set_transient( 'bdp_pro_buy_notice', 1, 10 * DAY_IN_SECONDS );
		}
	}

	/**
	 * Function to add admin message for premium version
	 * 
	 * @since 1.0.7
	 */
	function bdp_premium_admin_messages() {

		$notice_transient	= get_transient( 'bdp_pro_buy_notice' );

		if ( $notice_transient == false ) {

			$notice_link	= wp_nonce_url( add_query_arg( array('message' => 'bdp-pro-buy-notice') ), 'bdp-promote-notice' );
			$premium_link	= 'https://1.envato.market/MNM';
			
			$notices = array(
								0 => sprintf( __('Hey! It looks like that you are using Blog Designer Pack for a while. Would you like to a look at the Pro version? <a href="%s" target="_blank">Click here</a> for the amazing features.', 'blog-designer-pack'), $premium_link ),
								1 => sprintf( __('Hey! Do you know Blog Designer Pack Pro have 90+ premium layouts? <a href="%s" target="_blank">Click here</a> to take a look.', 'blog-designer-pack'), $premium_link ),
								2 => sprintf( __('Hey! Blog Designer Pack Pro supports Custom Post type and Custom taxonomy. <a href="%s" target="_blank">Upgrade now</a> to create a any layout for Custom Post type.', 'blog-designer-pack'), $premium_link ),
								4 => sprintf( __('Hey! Do you want more layouts for Post Slider and Post Carousel? <a href="%s" target="_blank">Upgrade now</a>', 'blog-designer-pack'), $premium_link ),
								5 => sprintf( __('Load More or Infinite Scrolling pagination can be a good feature for your blog page with Blog Designer Pack. <a href="%s" target="_blank">Take a look</a>', 'blog-designer-pack'), $premium_link ),
								6 => sprintf( __('Create Category Grid or Category Slider with Blog Designer Pack Pro. <a href="%s" target="_blank">Take a look</a>', 'blog-designer-pack'), $premium_link ),
								7 => sprintf( __('Create Post Timeline layout with Blog Designer Pack Pro. <a href="%s" target="_blank">Upgrade now</a>', 'blog-designer-pack'), $premium_link ),
								8 => sprintf( __('Display Featured Post or Trending Post with Blog Designer Pack Pro. <a href="%s" target="_blank">Upgrade now</a>', 'blog-designer-pack'), $premium_link ),
								9 => sprintf( __('Use social sharing feature for Post with Blog Designer Pack Pro. <a href="%s" target="_blank">Upgrade now</a>', 'blog-designer-pack'), $premium_link ),
							);
			$notice_key = array_rand( $notices );

			echo '<div class="updated notice" style="position:relative;">
					<p>'.$notices[ $notice_key ].' <span style="background-color:tomato; display:inline-block; padding:1px 5px; margin:0 0 0 10px; border-radius:3px; color:#fff; font-size:12px; font-weight:600;">Hot</span></p>
					<a href="'.esc_url( $notice_link ).'" class="notice-dismiss" style="text-decoration:none;"></a>
				</div>';
		}
	}

	/**
	 * Function to add license plugins link
	 * 
	 * @package Blog Designer Pack
	 * @since 1.0
	 */
	function bdp_plugin_action_links( $links ) {

		$links['bdp_feedback'] = '<a href="' . esc_url('https://docs.google.com/forms/d/e/1FAIpQLSdmNTAhqYbaspdSeTcqtbKyxKId5OX094sSKKDHdGf7h4SuFA/viewform') . '" title="' . esc_attr( __( 'Your Feedback', 'blog-designer-pack' ) ) . '" target="_blank" style="color:tomato;">' . __( 'Feedback', 'blog-designer-pack' ) . '</a>';
		$links['bdp_upgrade'] = '<a href="' . esc_url('https://1.envato.market/MNM') . '" title="' . esc_attr( __( 'Unlock Premium Features', 'blog-designer-pack' ) ) . '" target="_blank" style="color:green;">' . __( 'Upgrade', 'blog-designer-pack' ) . '</a>';

		return $links;
	}
}

$bdp_admin = new Bdp_Admin();