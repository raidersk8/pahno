<?php $act_term = get_queried_object(); 
$queryArgs = array( 'post_type' => 'services', 'posts_per_page' => -1, 
'tax_query' => array(
	array(
		'taxonomy' => 'services_category',
		'field'    => 'id',
		'terms'    => $act_term->term_id
	)
));
$query = new WP_Query; 
$queryPost = $query->query($queryArgs);
if($queryPost) { 
	wp_redirect(get_post_permalink($queryPost[0]->ID));
	exit();
}

global $wp_query;
$wp_query->set_404();
status_header( 404 );
get_template_part( 404 ); exit();
?>