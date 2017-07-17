<div class="first-screen">
	<div class="container">
		<div class="row">
			<div class="col-xs-7">
				<div class="logo">
					<div class="text">Время красоты</div>
					Центр медицинской косметологии<br />
					Ольги Пахно
				</div>
				<div class="first-text">Время можно остановить,<br />красоту — сохранить</div>
				<?php if( have_rows('phones', 'options') ): ?>
					<div class="phones">
						<?php while ( have_rows('phones', 'options') ) : the_row(); ?>							
							<?php the_sub_field('text'); ?><br />
						<?php endwhile; ?>
					</div>
				<?php endif; ?>
				<div class="address">
					<?php the_field('address'); ?>
				</div>
			</div>
		</div>
	</div>
	<div class="right-part"></div>
</div>