<!DOCTYPE html>
<html <?php language_attributes(); ?> <?php get_locale(); ?>>
  <head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><?php bloginfo('name'); ?><?php wp_title(); ?></title>
	<?php wp_head(); ?>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <header>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<?php wp_nav_menu( array( 'theme_location' => 'main-menu', 'container_class' => 'menu', 'menu_class' => '' ) ); ?>
			</div>
		</div>
	</div>
	<div class="social">
		<a href="#"><i class="fa fa-vk" aria-hidden="true"></i></a>
		<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
		<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
		<a href="#"><i class="fa fa-odnoklassniki" aria-hidden="true"></i></a>
		<a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a>
	</div>
  </header>
	<?php if(!is_front_page()) : ?>
	  <div class="total-first-screen">
		<div class="container">
			<div class="row">
				<div class="col-xs-6">
					<a href="/" class="logo">
						<div class="title">Время красоты</div>
						Центр медицинской косметологии<br />Ольги Пахно
					</a>
				</div>
			</div>
		</div>
		<div class="phones">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-2 col-xs-offset-10">
						+7 (4842) 76-24-76<br />+7 (910) 528-64-19
					</div>
				</div>
			</div>
		</div>
	  </div>
	<?php endif; ?>