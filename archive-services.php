<?php if( have_posts() ) { the_post(); 
	wp_redirect(get_post_permalink(get_the_ID()));
	exit();
}