<?php
global $postType;
$postType = 'services';
global $wp_query;
$act_term = get_queried_object();
?>
<div class="container blog">
	<div class="row">
		<div class="col-xs-4">
			<?php get_search_form(); ?>
			<?php $terms = get_terms( 'services_category'); 
			if($terms) : ?>
				<div class="navigation-menu">
				<ul>
				<?php foreach($terms as $row) : ?>
					<li class="<?php if($row->term_id == $act_term->term_id) echo 'active'; ?>">
						<a href="<?php echo get_term_link( $row ); ?>"><?php echo $row->name; ?></a>
					</li>
				<?php endforeach; ?>  
				</ul>
				</div>
			<?php endif; ?>
		</div>
		<div class="col-xs-8">
			<?php if( have_posts() ) : ?>
				<?php while( have_posts() ) : the_post(); ?>
					<div class="item">
						<a href="<?php the_permalink(); ?>" class="inner-href">
							<div class="post-thumbnail to-the-right">
								<?php if(has_post_thumbnail()) : ?>
									<img src="<?php echo get_the_post_thumbnail_url( get_the_ID(), 'image-905-auto' ); ?>" />
								<?php endif; ?>
							</div>
							<div class="row"><div class="col-xs-10-5 col-xs-offset-1-5">
								<h2 class="main-title"><?php the_title(); ?></h2>
								<div class="excerpt">
									<?php the_excerpt(); ?>
								</div>
							</div></div>
						</a>
						<div class="row">
						<div class="col-xs-10-5 col-xs-offset-1-5">
							<div class="info-part">
								<div class="row">
									<div class="col-xs-4 col-xs-offset-8 text-right"><a class="more" href="<?php the_permalink(); ?>">Читать далее</a></div>
								</div>
							</div>
						</div>
						</div>
					</div>
				<?php endwhile; ?>
				<div class="query-pagination"><?php queryPagination($wp_query); ?></div>
				<?php else : ?>
					<?php if(isset($_GET['s'])) : ?>
						<h1>По вашему запросу ничего не найдено</h1>
					<?php endif; ?>
			<?php endif; ?>
		</div>
	</div>
</div>