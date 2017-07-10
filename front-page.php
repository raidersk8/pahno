<?php get_header(); ?>	
<div class="front-page">
	<?php if( have_posts() ) : the_post(); ?>
		<?php get_template_part('blocks/front-page/first-screen'); ?>
	<?php endif; ?>
</div>
<?php get_footer(); ?>