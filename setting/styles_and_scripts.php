<?php
//Подключаем стили
function remove_head_scripts() {
	remove_action('wp_head', 'wp_print_scripts');
	remove_action('wp_head', 'wp_print_head_scripts', 9);
	remove_action('wp_head', 'wp_enqueue_scripts', 1);

	add_action('wp_footer', 'wp_print_scripts', 5);
	add_action('wp_footer', 'wp_enqueue_scripts', 5);
	add_action('wp_footer', 'wp_print_head_scripts', 5);
}

if ($GLOBALS['pagenow'] != 'wp-login.php' && !is_admin()) {
	add_action( 'wp_enqueue_scripts', 'remove_head_scripts' );
}
function theme_name_scripts() {	
	remove_action('wp_head', 'wp_print_scripts');
	remove_action('wp_head', 'wp_print_head_scripts', 9);
	remove_action('wp_head', 'wp_enqueue_scripts', 1);

	add_action('wp_footer', 'wp_print_scripts', 5);
	add_action('wp_footer', 'wp_enqueue_scripts', 5);
	add_action('wp_footer', 'wp_print_head_scripts', 5);
	
	//СТИЛИ
	//Шрифты
	wp_enqueue_style( 'fonts', 'https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic' );
	
	wp_enqueue_style( 'fancybox', get_template_directory_uri() . '/fancybox/source/jquery.fancybox.css' );
	wp_enqueue_style( 'main', get_template_directory_uri() . '/css/main.css' );	
	
	//Библиотека гугл карты
	wp_enqueue_script( 'google-map', 'https://maps.googleapis.com/maps/api/js?key=AIzaSyAoIhlfl0vA6Uv0DuIgbriry2cZYDbNw2g' );
	//jquery
	wp_enqueue_script( 'jquery-2', get_template_directory_uri() . '/js/jquery.min.js' );
	
	//ui-slider
	wp_enqueue_script( 'jquery-ui', get_template_directory_uri() . '/js/jquery-ui.min.js' );
	
	//wrap-jcarousel и все что нужно для этого плагина
	wp_enqueue_script( 'jcarousel', get_template_directory_uri() . '/js/jcarousel/jquery.jcarousel.min.js' );
	wp_enqueue_script( 'touchSwipe', get_template_directory_uri() . '/js/jcarousel/jquery.touchSwipe.min.js' );
	wp_enqueue_script( 'wrap-jcarousel', get_template_directory_uri() . '/js/jcarousel/jquery.wrap.jcarousel.js' );
	
	
	//bootstrap
	wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/js/bootstrap/bootstrap.js' );
	wp_enqueue_script( 'bootstrap-select', get_template_directory_uri() . '/js/bootstrap/bootstrap-select.js' );	
	
	//Fancybox	
	wp_enqueue_script( 'mousewheel', get_template_directory_uri() . '/fancybox/lib/jquery.mousewheel.pack.js' );
	wp_enqueue_script( 'fancybox', get_template_directory_uri() . '/fancybox/source/jquery.fancybox.pack.js' );	
	
	//fullpage	
	wp_enqueue_script( 'easings', get_template_directory_uri() . '/js/fullpage/jquery.easings.min.js' );
	wp_enqueue_script( 'scrolloverflow', get_template_directory_uri() . '/js/fullpage/scrolloverflow.min.js' );
	//wp_enqueue_script( 'fullPage', get_template_directory_uri() . '/js/fullpage/jquery.fullPage.min.js' );
	//Модифицировал отличается от оригинала!!!
	wp_enqueue_script( 'fullPage', get_template_directory_uri() . '/js/fullpage/jquery.fullPage.js' );
	
	//Паралакс плагин
	wp_enqueue_script( 'stellar', get_template_directory_uri() . '/js/jquery.stellar-paralax.min.js' );	
	
	//Скроллбар
	wp_enqueue_script( 'stellar', get_template_directory_uri() . '/js/jquery.jscrollpane.min.js' );	
	
	//Общие плагины для стандартного функционла
	wp_enqueue_script( 'malton-plagins', get_template_directory_uri() . '/js/malton-plagins.js' );
	
	//Инициализация всего
	wp_enqueue_script( 'main', get_template_directory_uri() . '/js/main.js' );
	wp_enqueue_script( 'map', get_template_directory_uri() . '/js/map.js' );
	
	
}
if ($GLOBALS['pagenow'] != 'wp-login.php' && !is_admin()) {
	add_action( 'wp_enqueue_scripts', 'theme_name_scripts' );
}
?>