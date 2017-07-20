<?php
global $postType;
$postType = 'post';
global $wp_query;
$act_term = get_queried_object();
?>
<div class="container blog">
	<div class="row">
		<div class="col-xs-4">
			<?php get_search_form(); ?>
			<?php $terms = get_terms( 'category'); 
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
					<?php get_template_part('blocks/blog/item'); ?>
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