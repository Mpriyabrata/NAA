=== Display Custom Post ===
Contributors: smallbusinesswebdesign
Donate link: https://technofound.com/
Tags: custom post, wordpress custom posts, custom post display, display custom post, custom post shortcode, display blog posts, post grid 
Requires at least: 3.0
Tested up to: 5.2.1
Stable tag: 1.0
License: GPLv2
License URI: http://www.gnu.org/licenses/gpl-2.0.html

Display Custom Post provides a simple way to show your custom posts in a post or page using a simple shortcode.  

== Description ==

<p>This plugin allow you to show your custom posts in a page / post / custom post within few seconds. You will need to select the custom post type from dropdown and it will provide you shortcode <strong>[dcp_show type='your-custom-post-slug']</strong> which you need to put in any post or page in order to show custom posts in grid layout. There are number of attributes that you can use with the provided shortcode. </p>

<p>You can even <strong>display default WordPress blog posts</strong> with shortcode [dcp_show type='post'] using same attributes.</p>

<p>https://www.youtube.com/watch?v=QJNPrC9ssU0</p>

<p><strong>List of shortcode attributes is given below:</strong></p>

<ul>
<li>number => Number of posts display on per page</li> 
<li>order => In what order posts will be displayed, Possible Values: ASC, DESC</li> 
<li>orderby => Possible values are given below:
	<ul>
		<li>date - Default value</li> 
		<li>none - No order </li>
		<li>author - Order by author</li>
		<li>title - Order by title</li>
		<li>date - Order by date</li>
		<li>modified - Order by last modified date</li>
		<li>parent - Order by post/page parent id</li>
		<li>rand - Random order </li>
		<li>comment_count - Order by number of comments</li>
		<li>menu_order - Order by Page Order. Used most often for Pages</li>
	</ul>
</li>	
</ul>
	
<h3>Features of Display Custom Post WordPress Plugin:</h3>
<ol>
<li>It provide you ready-made grid layout for your every custom post, you may simply have to put shortcode. That's it.</li>
<li>It is mobile responsive as well. </li>
<li>You may also put number of posts to be shown, order, orderby etc in shortcode. Please see attributes list above.</li>
<li>Also provide Pagination if your total posts are more than 'number' attribute.</li>
</ol>	

You may contact if you have any query regarding this plugin: 
<a href="https://technofound.com/" target="_blank">https://technofound.com/</a>

 	
== Screenshots ==

1. Plugin setting page
2. Shortcode added on any wordpress post or page
3. Custom post layout 
4. Mobile responsive 

== Installation ==

1. Upload Display Custom Post to the '/wp-content/plugins/' directory
2. Activate the plugin through the 'Plugins' menu in WordPress
3. Admin Menu --> Display Custom Post

== Frequently Asked Questions ==

= How can I display all posts on a single page without pagination? =

You will do it by setting attribute "number" to -1. For example: [dcp_show post='your-post-type-slug' number= '-1']

= How can blog posts can be shown using your plugin? = 

Use shortcode [dcp_show type='post'] with same attributes.

= How to show custom posts associated with custom taxonomies? = 

Please wait for the next release. 

== Changelog ==

= 1.2 =

* Minor Fixing.

= 1.0 =

* Initial version.

