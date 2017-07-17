<a href="<?php echo get_the_permalink ( get_the_ID() ); ?>" class="product-item">
	<?php if(get_field('old_price', get_the_ID()) != '') : ?>
		<div class="type type-discount">скидка</div>
	<?php elseif(get_field('is-new', get_the_ID())) : ?>
		<div class="type type-new">Новинка</div>	
	<?php endif; ?>
	<div class="img">
		<?php if(has_post_thumbnail(get_the_ID())) : ?>
			<img src="<?php echo get_the_post_thumbnail_url( get_the_ID(), 'image-905-auto' ); ?>" />
		<?php endif; ?>
	</div>
	<div class="inner">
		<h3><?php the_title(); ?></h3>
		<div class="text">
			<?php the_excerpt(); ?>
		</div>
	</div>
	<div class="price"><?php the_field('price', get_the_ID()); ?> &#8381; <?php if(get_field('old_price', get_the_ID()) != '') : ?><span><?php the_field('old_price', get_the_ID()); ?> &#8381;</span><?php endif; ?></div>
	<div class="dose"><?php the_field('dose', get_the_ID()); ?></div>
	<div class="wrap-btn"><span class="btn btn-transparent btn-block">Подробнее</span></div>
</a>