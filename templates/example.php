<?php
/*
Template Name: example-template
Template Post Type: example
*/
?>
<?php 
//Пример подключения файла
get_template_part('blocks/examples/example'); 
?>
<?php get_header(); ?>	
<?php 
//Пример инициализации поста перед выводом
if ( have_posts() ) : the_post(); ?>
	<?php the_title(); ?>
	<?php the_content(); ?>
<?php endif; ?>

<?php //Пример цикла ?>
<?php $query = new WP_Query( array( 'post_type' => 'examples', 'posts_per_page' => -1 ) ); ?>
<?php while ( $query->have_posts() ) : $query->the_post(); ?>
	<?php the_title(); ?>
	<?php the_content(); ?>
<?php endwhile ?>

<?php //Пример вывода картинки прикрепленной к записи ?>
<?php if(has_post_thumbnail()) : ?>
<img src="<?php echo get_the_post_thumbnail_url( get_the_ID(), 'image-455-auto' ); ?>" />
<?php endif; ?>
<?php //Пример вывода картинки из шаблона ?>
<img src="<?php echo get_bloginfo('template_url'); ?>"/img/img.png" alt="" />


<?php get_footer(); ?>