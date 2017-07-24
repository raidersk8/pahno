<?php get_header(); ?>	
<?php if( have_posts() ) : the_post(); 
$act_post_id = get_the_ID();
$act_term = get_the_terms( get_the_ID(), 'services_category' );
if($act_term) $act_term = $act_term[0];
$queryArgs = array( 'post_type' => 'services', 'posts_per_page' => -1, 
'order'   => 'ASC',
'tax_query' => array(
	array(
		'taxonomy' => 'services_category',
		'field'    => 'id',
		'terms'    => $act_term->term_id,
	)
));
$postType = 'services';
?>
<div class="container single-services">
	<div class="row">
		<div class="col-sm-4 col-xs-12 no-p-xs text-center-xs">
			<?php get_search_form(); ?>
			<?php $terms = get_terms( 'services_category'); 
			if($terms) : ?>
				<div class="navigation-menu <?php if(wpmd_is_phone()) echo 'collapse'; ?>" id="collapse-sub-menu">
				<ul>
				<?php foreach($terms as $row) : ?>
					<li class="<?php if($row->term_id == $act_term->term_id) echo 'active'; ?>">
						<?php 
							$queryArgs['tax_query'][0]['terms'] = $row->term_id;
							$query = new WP_Query; 
							$queryPost = $query->query($queryArgs);
						?>
						<a href="<?php if($queryPost) echo get_post_permalink($queryPost[0]->ID); else echo get_term_link( $row ); ?>"><?php echo $row->name; ?></a>
						<?php if($row->term_id == $act_term->term_id && count($queryPost) > 1) : ?>
							<?php 
								$query = new WP_Query($queryArgs); 
							?>
							<?php if($query->have_posts()) : ?>
							<ul>
								<?php while ( $query->have_posts() ) : $query->the_post(); ?>
								<li class="<?php if($act_post_id == get_the_ID()) echo 'active'; ?>"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>
								<?php endwhile; wp_reset_postdata(); ?>
							</ul>
							<?php endif; ?>
						<?php endif;?>
					</li>
				<?php endforeach; ?>  
				</ul>
				</div>
			<?php endif; ?>
		</div>
		<div class="col-sm-8 col-xs-12">
			<div class="row">
				<div class="col-sm-10-5 col-sm-offset-1-5 col-xs-12 col-xs-offset-0"><h1><?php the_title(); ?></h1></div>
			</div>
				<?php if(has_post_thumbnail()) : ?>
					<div class="post-thumbnail to-the-right" style="background-image: url(<?php echo get_the_post_thumbnail_url( get_the_ID(), 'image-1140-auto' ); ?>);">
					</div>
					<div class="row img-title">
						<div class="col-sm-9 col-sm-offset-1-5 col-xs-12 col-xs-offset-0">
							<div class="inner">
								<div class="vertical-middle">
									<h2><?php the_field('img-title'); ?></h2>
								</div>
							</div>
						</div>
					</div>
				<?php endif; ?>
			<div class="row content-page">
				<div class="col-sm-10-5 col-sm-offset-1-5 col-xs-12 col-xs-offset-0">
					<?php the_content(); ?>
				</div>
			</div>
		</div>
	</div>
</div>
<?php endif;?>
<?php get_template_part('blocks/front-page/have-questions'); ?>
<?php get_footer(); ?>