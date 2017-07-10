<?php get_header(); ?>	
<?php if( have_posts() ) : the_post(); ?>	
	<div class="front-page">
		<div id="fullpage">
			<div class="section">
				<?php get_template_part('blocks/front-page/first-screen'); ?>
			</div>
			<div class="section">
				<?php get_template_part('blocks/front-page/about'); ?>
			</div>
			<div class="section">
				<?php get_template_part('blocks/front-page/statistic'); ?>
			</div>
			<div class="section">
				<?php get_template_part('blocks/front-page/clothing-design'); ?>
			</div>
		</div>		
	</div>
	<?php //get_template_part('blocks/front-page/list-actions'); ?>
<?php endif; ?>
<?php get_footer(); ?>
