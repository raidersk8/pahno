<?php
/*
Template Name: contacts
Template Post Type: page
*/
?>
<?php get_header(); ?>
<?php if ( have_posts() ) : the_post(); ?>
<div class="contacts">
	<div class="map" id="map" lat="54.518586" lng="36.242605" placemark="<?php echo get_bloginfo('template_url'); ?>/img/placemark.png" placemark-width="60" placemark-height="60"></div>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-4 col-xs-offset-7">
					<div class="inner">
						<div class="main-title h3">Контактная информация</div>
						<?php the_content(); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
		<?php get_template_part('blocks/front-page/have-questions'); ?>
<?php endif; ?>
<?php get_footer(); ?>