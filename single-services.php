<?php get_header(); ?>	
<?php if( have_posts() ) : the_post(); 
$act_post_id = get_the_ID();
$act_term = get_the_terms( get_the_ID(), 'services_category' );
if($act_term) $act_term = $act_term[0];
?>
<div class="container single-services">
	<div class="row">
		<div class="col-xs-4">
			<?php get_search_form(); ?>
			<?php $terms = get_terms( 'services_category', array(
				'hide_empty' => false,
			)); 
			if($terms) : ?>
				<div class="navigation-menu">
				<ul>
				<?php foreach($terms as $row) : ?>
					<li class="<?php if($row->term_id == $act_term->term_id) echo 'active'; ?>">
						<a href="<?php echo get_term_link( $row ); ?>"><?php echo $row->name; ?></a>
						<?php if($row->term_id == $act_term->term_id) : ?>
							<?php 
								$query = new WP_Query( array( 'post_type' => 'services', 'posts_per_page' => -1, 
								'tax_query' => array(
									array(
										'taxonomy' => 'services_category',
										'field'    => 'id',
										'terms'    => $act_term->term_id
									)
								))); 
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
		<div class="col-xs-8">
			<div class="row"><div class="col-xs-10-5 col-xs-offset-1-5"><h1><?php the_title(); ?></h1></div></div>
			<div class="post-thumbnail to-the-right">
				<?php if(has_post_thumbnail()) : ?>
					<img src="<?php echo get_the_post_thumbnail_url( get_the_ID(), 'image-905-auto' ); ?>" />
				<?php endif; ?>
			</div>
			<div class="row content-page">
				<div class="col-xs-10-5 col-xs-offset-1-5">
					<?php the_content(); ?>
				</div>
			</div>
		</div>
	</div>
</div>
<?php endif;?>
<?php get_footer(); ?>