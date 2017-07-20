<?php get_header(); 
global $wp_query;
$act_term = get_queried_object();

$postTypes = array(
	'services' => 'blocks/base/services-loop',
	'products' => 'blocks/base/products-loop', 
	'post' => 'blocks/base/blog-loop',
);
$templateName = $postTypes[$_GET['post-type']];

get_template_part($templateName); ?>
<?php get_footer(); ?>
