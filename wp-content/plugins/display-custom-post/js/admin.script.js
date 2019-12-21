/*
 * Display Custom Post WordPress Plugin Jquery For Settings Page
*/  
 
jQuery(document).ready( function ($){
	/* we are assigning change event handler for select box */
	/* it will run when selectbox options are changed */
	var cval = $(this).find('option:selected').val();
	$('#dropdown_selector').change(function(){
		/* setting currently changed option value to option variable */
		/* setting input box value to selected option value */
		var option = $(this).find('option:selected').val();
		$('#showoption').val("[dcp_show type='"+option+"']");
	});
	$('#showoption').val("[dcp_show type='"+cval+"']");
});
   