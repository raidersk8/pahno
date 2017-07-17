	<footer>
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-4">
					<div class="left-part">
						<div class="logo">
							<div class="title">Время красоты</div>
							Центр медицинской косметологии<br />
							Ольги Пахно
						</div>
						<div class="text">Центр медицинской косметологии «Время красоты» — место, где мечта становится реальностью, а реальность обретает новые краски.</div>		
						<?php if( have_rows('social', 'options') ): ?>
						<div class="social">							
							<?php while ( have_rows('social', 'options') ) : the_row(); ?>		
								<a href="<?php the_sub_field('href'); ?>"><i class="fa <?php the_sub_field('icon'); ?>" aria-hidden="true"></i></a>		
							<?php endwhile; ?>
						</div>
						<?php endif; ?>
					</div>
				</div>
				<div class="col-xs-4">
					<div class="center-part">
						<div class="main-title">Основные разделы сайта</div>
						<?php wp_nav_menu( array( 'theme_location' => 'footer-menu', 'container_class' => 'menu', 'menu_class' => '' ) ); ?>
					</div>					
				</div>
				<div class="col-xs-4">
					<div class="main-title">Контактная информация</div>
					<p><?php the_field('address', 'options'); ?></p>
					<?php if( have_rows('phones', 'options') ): ?>
						<p>
							<?php while ( have_rows('phones', 'options') ) : the_row(); ?>							
								тел.: <?php the_sub_field('text'); ?><br />
							<?php endwhile; ?>
						</p>
					<?php endif; ?>
					<?php if(get_field('email', 'options')) : ?>
					<p>e-mail: <?php the_field('email', 'options'); ?></p>
					<?php endif; ?>
				</div>
			</div>
		</div>
		<div class="copyrigh-part">© Калуга <?php echo date('Y'); ?></div>
	</footer>
	<?php wp_footer(); ?>
	</body>
</html>