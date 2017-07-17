<?php if( have_rows('why') ): ?>
<div class="advantages">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<h2 class="text-center">Почему мы лучшие!</h2>
				<?php while ( have_rows('why') ) : the_row(); ?>	
					<?php if(get_sub_field('type') == 'type-1') : ?>
					<div class="border-text">
						<div class="row">
							<div class="col-xs-6"><?php the_sub_field('left_text'); ?></div>
							<div class="col-xs-6"><div class="right-part"><?php the_sub_field('right_text'); ?></div></div>
						</div>
					</div>
					<?php else : ?>
						<div class="text">
						<div class="row">
							<div class="col-xs-6"><div class="left-part"><?php the_sub_field('left_text'); ?></div></div>
							<div class="col-xs-6"><div class="right-part"><?php the_sub_field('right_text'); ?></div></div>
						</div>
						</div>
					<?php endif; ?>
				<?php endwhile; ?>
			</div>
		</div>
	</div>
</div>
<?php endif; ?>


