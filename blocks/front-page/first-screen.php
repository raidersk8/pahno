<div class="first-screen">
	<div class="container">
		<div class="row">
			<div class="col-sm-7 col-xs-12">
				<div class="logo">
					<div class="text">Время красоты</div>
					Центр медицинской косметологии<br />
					Ольги Пахно
				</div>
				<div class="first-text text-center-xs">Время можно остановить,<br />красоту — сохранить</div>
				<?php if( have_rows('phones', 'options') ): ?>
					<div class="phones text-center-xs">
						<?php while ( have_rows('phones', 'options') ) : the_row(); ?>							
							<?php the_sub_field('text'); ?><br />
						<?php endwhile; ?>
					</div>
				<?php endif; ?>
				<div class="address text-center-xs">
					<?php the_field('address'); ?>
				</div>
			</div>
		</div>
	</div>
	<div class="right-part hidden-xs"></div>
</div>