<?php get_header(); ?>	
<?php $act_term = get_queried_object(); ?>
<div class="container">
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
	</div>
</div>
<?php get_template_part('blocks/front-page/have-questions'); ?>
<?php get_footer(); ?>