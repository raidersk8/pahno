<?php get_header(); 
$postType = 'products';
if( have_posts() ) : the_post(); 
$act_post_id = get_the_ID();
$act_term = get_the_terms( get_the_ID(), 'products_category' );
if($act_term) $act_term = $act_term[0];
?>
<div class="shop single-product">
	<div class="container">
		<div class="row">
			<div class="col-xs-4">
				<?php get_search_form(); ?>
				<?php $terms = get_terms( 'products_category'); 
				if($terms) : ?>
					<div class="navigation-menu type-2">
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
				<div class="top-part">
					<div class="vertical-middle">
						<a class="to-back" href="#" onclick="history.back();"><i class="fa fa-angle-left" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;Назад в каталог</a>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6">
						<?php if(has_post_thumbnail()) : ?>
							<div class="img">
								<img src="<?php echo get_the_post_thumbnail_url( get_the_ID(), 'image-370-auto' ); ?>" />
							</div>
						<?php endif; ?>
						<div class="price"><?php the_field('price'); ?> &#8381; <?php if(get_field('old_price') != '') : ?><span><?php the_field('old_price'); ?> &#8381;</span><?php endif; ?></div>
					</div>
					<div class="col-xs-6">
						<h1><?php the_title(); ?></h1>
						<div class="dose">
							(<?php the_field('dose'); ?>)
						</div>
						<a href="#order-product" class="btn btn-block btn-persian-green btn-lg scroll-to">Заказать товар</a>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-11 col-xs-offset-1">
						<div class="text-content">
							<?php the_content(); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="order-product"></div>
<?php get_template_part('blocks/base/order-prod'); ?>
<?php endif; ?>
<?php get_footer(); ?>