<div class="item">
	<a href="<?php the_permalink(); ?>" class="inner-href">
		<div class="post-thumbnail to-the-right">
			<?php if(has_post_thumbnail()) : ?>
				<img src="<?php echo get_the_post_thumbnail_url( get_the_ID(), 'image-905-auto' ); ?>" />
			<?php endif; ?>
		</div>
		<div class="row"><div class="col-sm-10-5 col-sm-offset-1-5 col-xs-12">
			<h2 class="main-title"><?php the_title(); ?></h2>
			<div class="excerpt">
				<?php the_excerpt(); ?>
			</div>
		</div></div>
	</a>
	<div class="row"><div class="col-sm-10-5 col-sm-offset-1-5 col-xs-12">
		<div class="info-part">
			<div class="row">
				<div class="col-sm-4 col-sm-push-4 col-xs-7 text-center text-left-xs"><em>Автор: <?php the_author(); ?></em></div>
				<div class="col-sm-4 col-sm-push-4 col-xs-5 text-right"><a class="more" href="<?php the_permalink(); ?>">Читать далее</a></div>
				<div class="col-sm-4 col-sm-pull-8 col-xs-12"><em><?php echo get_the_date('d.m.Y'); ?></em></div>
			</div>
		</div>
	</div></div>
</div>