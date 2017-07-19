<?php get_header(); ?>	
<?php $act_term = get_queried_object(); 
$queryArgs = array( 'post_type' => 'about', 'posts_per_page' => -1, 
'tax_query' => array(
	array(
		'taxonomy' => 'about_category',
		'field'    => 'id',
		'terms'    => $act_term->term_id
	)
));
?>
<div class="container">
	<div class="row">
		<div class="col-xs-4">
			<?php get_search_form(); ?>
			<?php $terms = get_terms( 'about_category', array(
				'hide_empty' => false,
			)); 
			if($terms) : ?>
				<div class="navigation-menu">
					<ul>
					<?php foreach($terms as $row) : ?>
						<li class="<?php if($row->term_id == $act_term->term_id) echo 'active'; ?>">
							<?php 
								$queryArgs['tax_query'][0]['terms'] = $row->term_id;
								$query = new WP_Query; 
								$queryPost = $query->query($queryArgs);
							?>
							<a href="<?php if($queryPost && count($queryPost) == 1) echo get_post_permalink($queryPost[0]->ID); else echo get_term_link( $row ); ?>"><?php echo $row->name; ?></a>
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
	</div>
</div>
<?php get_template_part('blocks/front-page/have-questions'); ?>
<?php get_footer(); ?>