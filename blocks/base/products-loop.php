<?php
global $postType;
$postType = 'products';
global $wp_query, $act_term;
$priceOrder = (isset($_GET['price-order']) && $_GET['price-order'] == 'desc') ? 'asc' : 'desc';
?>
<div class="shop products-page">
	<div class="container">
		<div class="row">
			<div class="col-sm-4 col-xs-12 no-p-xs text-center-xs">
				<?php get_search_form(); ?>
				<?php $terms = get_terms( 'products_category'); 
				if($terms) : ?>
					<div class="navigation-menu show-parents <?php if(wpmd_is_phone()) echo 'collapse'; ?> type-2" id="collapse-sub-menu">
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
			<div class="col-sm-8 col-xs-12">
				<?php if(have_posts()) : ?>
				<div class="row">
					<div class="col-sm-8 col-sm-push-4 col-xs-12 no-pl text-right">
						<div class="top-panel"><div class="vertical-middle"><div class="query-pagination"><?php queryPagination($wp_query); ?></div></div></div>
					</div>
					<div class="col-sm-4 col-sm-pull-8 col-xs-12">
						<div class="top-panel filter"><div class="vertical-middle">Сотритовка по: <a class="<?php echo $priceOrder;?>" href="?price-order=<?php echo $priceOrder; ?>">цене</a></div></div>
					</div>
				</div>
				<div class="row">
					<?php while( have_posts() ) : the_post(); ?>
						<div class="col-sm-6 col-xs-12">
							<?php get_template_part('blocks/base/product-item'); ?>
						</div>
					<?php endwhile; ?>
				</div>
				<div class="row">
					<div class="col-xs-4">
						<div class="top-panel filter"><div class="vertical-middle">Сотритовка по: <a class="<?php echo $priceOrder;?>" href="?price-order=<?php echo $priceOrder; ?>">цене</a></div></div></div>
					<div class="col-xs-8 no-pl text-right">
						<div class="top-panel"><div class="vertical-middle"><div class="query-pagination"><?php queryPagination($wp_query); ?></div></div></div>
					</div>
				</div>
				<?php else : ?>
					<?php if(isset($_GET['s'])) : ?>
						<h1>По вашему запросу ничего не найдено</h1>
					<?php endif; ?>
				<?php endif; ?>
			</div>
		</div>
	</div>
</div>