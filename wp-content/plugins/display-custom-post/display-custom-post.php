<?php
/* Plugin Name: Display Custom Post
Plugin URI: https://technofound.com/
Description: Display Custom Posts Using a Simple Shortcode 
Version: 1.0.2
Author: Techno Found
Author URI: https://technofound.com/
License: MIT
*/ 
 
/**
 * List of JavaScript / CSS files for admin
 */
 
add_action('admin_init', 'dcp_scripts');
add_action('admin_menu', 'dcp_menu');

	
/**
 * List of JavaScript / CSS files for admin
 */

if (!function_exists('dcp_scripts')) {
    function dcp_scripts() {
        if (is_admin()) {
			wp_register_style('admin.display.css', plugin_dir_url( __FILE__ ) . '/css/admin.display.css');
			wp_enqueue_style('admin.display.css');
		 
			wp_enqueue_script('jquery');
			
			wp_register_script('admin.script.js', plugin_dir_url( __FILE__ ) . '/js/admin.script.js');
			wp_enqueue_script('admin.script.js');
        }
    }
}


//Adding stylesheet for front-end display

add_action('wp_enqueue_scripts', 'dcp_styles');
function dcp_styles() {
    wp_register_style('display-custom-post.css', plugin_dir_url( __FILE__ ) . '/css/display-custom-post.css');
	wp_enqueue_style('display-custom-post.css');
}


/**
 * Activation Hook for Custom Post Display
 */

function dcp_activation() {
}
register_activation_hook(__FILE__, 'dcp_activation');


/**
 * Deactivation Hook for Custom Post Display
 */
 
function dcp_deactivation() {
}
register_deactivation_hook(__FILE__, 'dcp_deactivation');

/**
 * Plugin Menu for Custom Post Display
 */
 
function dcp_menu() {
	add_menu_page('Display Custom Post', 'Display Custom Post', 'administrator', 'display-custom-post', 'dcp_core');
}

/**
 * Function for Admin Menu Page Option 
 */
 
function dcp_core(){
	$cposts = get_post_types();
	// Builtin types needed.
	$builtin = array(
		'post',
		'page',
		'attachment'
	);
	$cposts = get_post_types( array(
		'public'   => true,
		'_builtin' => false
	) );
	
	$html .= '';
	$html .= '<div class="dash-area">';
	$html .= '<h1>Choose Post Type From Drop Down List and Create Shortcode: </h1><br/>';
	$html .= '<select id="dropdown_selector">'; 
	foreach($cposts as $cpost){ 
	$html .= '<option value="'. strtolower($cpost) .'">' .$cpost . '</option>'; 
	}
	$html .='</select><br/>' ; 
	$html .= '<input type="text" name="name" id="showoption" placeholder="Shortcode will display here..." readonly="readonly" />';
	
	$html .= '<div class="infobox">';
	$html .= '<span class="highlighted">Here is the list of other atributes that you can use with the shortcode:</span><br/>
	<strong>number</strong> => Number of posts display on per page <br/>
	<strong>order</strong> => In what order posts will be displayed, Possible Values: ASC, DESC <br/>
	<strong>orderby</strong> => Possible values are given below: <br/>
	&emsp;date - Default value <br/>
	&emsp;none - No order <br/>
	&emsp;author - Order by author<br/>
	&emsp;title - Order by title<br/>
	&emsp;date - Order by date.<br/>
	&emsp;modified - Order by last modified date<br/>
	&emsp;parent - Order by post/page parent id<br/>
	&emsp;rand - Random order<br/>
	&emsp;comment_count - Order by number of comments<br/>
	&emsp;menu_order - Order by Page Order. Used most often for Pages ';
	
	$html .= '</div><div class="offers"><a href="https://technofound.com/" target="_blank"><img src="' . plugins_url( 'images/dcp_convert-website-into-android-app.jpg', __FILE__ ) . '"></a></div></div>';
	$html .= '';
	echo $html;
}

/**
 * Function for the Shortcode in order to Display Custom Post  
 */
 
// Add Shortcode

function dcp_show( $atts ) {

	// Attributes
	extract( shortcode_atts(
		array(
			'number' => '-1',
			'post_type' => '',
			'orderby' => '',
			'order' => '',
			'type' => '',
			'paged' => $paged,
		), $atts ) 
	);
	
	 global $post;

      $html = "";
	  $paged = (get_query_var('paged')) ? get_query_var('paged') : 1; 
      $my_query = new WP_Query( 
						array(
								'post_type' => $type,
								'posts_per_page' => $number, 
								'orderby' => $orderby, 
								'order' => $order, 
								'paged' => $paged
							  ));

      if( $my_query->have_posts() ) : while( $my_query->have_posts() ) : $my_query->the_post();
   
		$html .= "<div class='custom-post-block'><div class='innerwrapper'>";
		$html .= "<div class='custom-post-thumb'>" . "<a href=". esc_url( get_permalink() ) . ">" . get_the_post_thumbnail() . "</a>" . "</div>";
		$html .= "<h2><a href=". esc_url( get_permalink() ) . ">" . get_the_title() . "</a>";
		$html .= "</h2>";
		$html .= "<div class='custom-post-content'>";
		$html .= "<p>" . get_the_excerpt() . "</p><a href=". esc_url( get_permalink() ) . " class='read-more button'>Read More</a>";
		$html .= "</div></div></div>";
     
		endwhile; endif;
			$big = 9999999999;
			$html .="<div class='custom-post-nav-links'>" . paginate_links( 
				array(
					'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
					'format' => '?paged=%#%',
					'current' => max( 1, get_query_var('paged') ),
					'total' => $my_query->max_num_pages 
				) ) . "</div>";
		return $html;
}
add_shortcode( 'dcp_show', 'dcp_show' ); 

?>