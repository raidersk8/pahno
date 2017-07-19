<?php get_header();
if( have_posts() ) : the_post(); 
$act_post_id = get_the_ID();
$act_term = get_the_terms( get_the_ID(), 'about_category' );
if($act_term) $act_term = $act_term[0];
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
		<div class="col-xs-8 single-blog">
			<div class="row"><div class="col-xs-10-5 col-xs-offset-1-5"><h1><?php the_title(); ?></h1></div></div>
				<?php if(has_post_thumbnail(get_the_ID())) : ?>
					<div class="img to-the-right">
							<img src="<?php echo get_the_post_thumbnail_url( get_the_ID(), 'image-905-auto' ); ?>" />
					</div>
				<?php endif; ?>
			<div class="row content-page">
				<?php if( have_rows('content') ): ?>

				<?php while ( have_rows('content') ) : the_row(); ?>
					<?php 						
						$openDiv = '<div class="col-xs-10-5 col-xs-offset-1-5">';
						if(get_sub_field('type') == 'type-2') {
							$openDiv = '<div class="col-xs-12">';
						}
						echo $openDiv;
					?>
					<?php the_sub_field('text'); ?>
					</div>
				<?php endwhile; ?>
				<?php endif; ?>
			</div>
		</div>
		
	</div>
</div>
<?php endif; ?>
<?php get_footer(); ?>
