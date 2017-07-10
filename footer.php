	<div style="display: none;">
		<div id="fancybox-calculate-the-lot" class="fancybox-form fancybox-full-screen-window">
			<div class="wrap-vertical-position">
				<div class="vertical-middle">
					<div class="container">
						<div class="row">
							<div class="col-xs-4 col-xs-offset-1">
								<div class="h1">Заявка на Расчёт партии</div>
								<p>Заполните форму справа используя добавление продукции построчно, либо загрузите файл с техническим заданием. Наш специалист рассчитает примерную стоимость и отправит коммерческое предложение на указанный вами email и свяжется по телефону.</p>
								<p>Нажимая кнопку «Отправить запрос» вы принимаете все условия и  соглашаетесь с   порядком обработки персональных данных.</p>
							</div>
							<div class="col-xs-6 col-xs-offset-1">
								<ul class="nav-list-tabs">
									<li class="active"><a href="#form" data-toggle="tab">Заполнить форму</a></li>
									<li><a href="#file" data-toggle="tab">Отправить файл</a></li>
								</ul>
								<div>
									<div class="tab-pane-content active" id="form">	
										<div id="all-item-order">
										</div>
										<?php echo do_shortcode('[contact-form-7 id="103" title="Заявка на расчёт партии заполнить форму"]'); ?>
									</div>
									<div class="tab-pane-content" id="file">
										<?php echo do_shortcode('[contact-form-7 id="104" title="Заявка на расчёт партии отправить файл"]'); ?>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<div style="display: none" id="template-item-order">
		<div class="row item-order">
			<div class="col-xs-4">
				<div class="form-group">
					<label class="btn-block">Выберите продукцию</label>
					<select class="selectpicker-fancybox-append"  data-width="100%">
						<?php $query = new WP_Query( array( 'post_type' => 'services', 'posts_per_page' => -1 ) ); ?>
						<?php while ( $query->have_posts() ) : $query->the_post(); ?>
						<option value="<?php the_title(); ?>"><?php the_title(); ?></option>
						<?php endwhile; wp_reset_postdata(); ?>
					</select>
				</div>
			</div>
			<div class="col-xs-6">
				<label class="btn-block">Размер партии (шт.)</label>
				<div class="form-group">
					<div class="wrap-input-slider">
						<input value="250" />
						<div class="row">
							<div class="col-xs-6"><label class="btn-block">250</label></div>
							<div class="col-xs-6 text-right"><label class="max-right"><span>&nbsp;-&nbsp;</span>более 1000</label></div>
						</div>
						<label class="present-value">300</label>
						<div class="input-slider-append" data-min="250" data-max="1000" data-step="50"></div>
					</div>
				</div>
			</div>
			<div class="col-xs-2">
				<label class="btn-block">&nbsp;</label>
				<a href="#" class="delete-icon delete-item"></a>
				<a href="#" class="add-icon add-item"></a>
			</div>
		</div>
	</div>
	<?php wp_footer(); ?>
	</body>
</html>