<?php get_header(); ?>	
<div class="front-page">
	<?php if( have_posts() ) : the_post(); ?>
		<?php get_template_part('blocks/front-page/first-screen'); ?>
		<?php get_template_part('blocks/front-page/services'); ?>
		<?php get_template_part('blocks/front-page/advantages'); ?>
		<?php get_template_part('blocks/front-page/products'); ?>
	<?php endif; ?>
</div>
<?php get_footer(); ?>