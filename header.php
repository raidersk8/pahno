<!DOCTYPE html>
<html <?php language_attributes(); ?> <?php get_locale(); ?>>
  <head>
	<link rel="shortcut icon" href="/favicon.png" type="image/png">
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><?php bloginfo('name'); ?><?php wp_title(); ?></title>
	<?php wp_head(); ?>
	<link rel="icon" href="<? echo get_template_directory(); ?>/favicon.png" type="image/png">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="<?php if(wpmd_is_phone()) echo 'is-phone'; ?> <?php if(wpmd_is_tablet()) echo 'is-tablet'; ?>">
  <header>
	<div id="loader"></div>
	<div class=" visible-xs">  
		<div id="collapse-menu" class="collapse text-center">
			<?php wp_nav_menu( array( 'theme_location' => 'main-menu', 'container_class' => 'menu', 'menu_class' => '' ) ); ?>
		</div>
		<div class="top-block">
			<div class="container">
				<div class="row">
					<div class="col-xs-9 text-center">
						<?php if( have_rows('social', 'options') ): ?>
						<div class="social">							
							<?php while ( have_rows('social', 'options') ) : the_row(); ?>		
								<a href="<?php the_sub_field('href'); ?>"><i class="fa <?php the_sub_field('icon'); ?>" aria-hidden="true"></i></a>		
							<?php endwhile; ?>
						</div>
						<?php endif; ?>
					</div>
					<div class="col-xs-3">
						<a class="switch-mobile-menu collapsed" data-toggle="collapse" href="#collapse-menu"><div class="icon"><div class="middle-line"></div></div></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container hidden-xs">
		<div class="row">
			<div class="col-xs-12 position-static">
				<?php wp_nav_menu( array( 'theme_location' => 'main-menu', 'container_class' => 'menu', 'menu_class' => '' ) ); ?>
			</div>
		</div>
	</div>
	<?php if( have_rows('social', 'options') ): ?>
	<div class="social hidden-xs">							
		<?php while ( have_rows('social', 'options') ) : the_row(); ?>		
			<a href="<?php the_sub_field('href'); ?>"><i class="fa <?php the_sub_field('icon'); ?>" aria-hidden="true"></i></a>		
		<?php endwhile; ?>
	</div>
	<?php endif; ?>
  </header>
	<?php if(!is_front_page()) : ?>
	  <div class="total-first-screen">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-xs-3 text-center-xs">
					<a href="/" class="logo">
						<div class="hidden-xs"><div class="title">Время красоты</div>
						Центр медицинской косметологии<br />Ольги Пахно</div>
					</a>
				</div>
				<?php if( have_rows('phones', 'options') ): ?>
				<div class="col-sm-6 col-xs-6 text-right text-center-xs phones text-center-xs">
					<?php while ( have_rows('phones', 'options') ) : the_row(); ?>	
					<?php the_sub_field('text'); ?><br />
					<?php endwhile; ?>
				</div>
				<?php endif; ?>
				<div class="col-xs-3 visible-xs">
					<a class="switch-mobile-menu collapsed" data-toggle="collapse" href="#collapse-sub-menu"><div class="icon"><div class="middle-line"></div></div></a>
				</div>
			</div>
		</div>
	  </div>
	<?php endif; ?>