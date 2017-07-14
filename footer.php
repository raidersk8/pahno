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
						<div class="social">
							<a href="#"><i class="fa fa-vk" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-odnoklassniki" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a>
						</div>
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
					<p>248000, город Калуга,<br />улица Вооруженного Восстания, 2/23</p>
					<p>тел.: (4842) 76-24-76<br />
					тел.: 8-910-528-64-19</p>
					<p>e-mail: beauty_time@mail.ru</p>
				</div>
			</div>
		</div>
		<div class="copyrigh-part">© Калуга <?php echo date('Y'); ?></div>
	</footer>
	<?php wp_footer(); ?>
	</body>
</html>