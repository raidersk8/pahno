<?php
//Меняем количество символов у краткого описания
function new_excerpt_length($length) {
	return 21;
}
add_filter('excerpt_length', 'new_excerpt_length');

//Меняем читать полностью у кртакого описания
function new_excerpt_more($more) {
	global $post;
	//return '&nbsp;<a class="more" href="'. get_permalink($post->ID) . '">...</a>';
	return '';
}
add_filter('excerpt_more', 'new_excerpt_more');

//Меняем порядок полей в комментариях
function new_order_comment_fields( $fields ){
	// die(print_r( $fields )); // посмотрим какие поля есть

	$new_fields = array(); // сюда соберем поля в новом порядке

	$myorder = array('author','email','url','comment'); // нужный порядок

	foreach( $myorder as $key ){
		$new_fields[ $key ] = $fields[ $key ];
		unset( $fields[ $key ] );
	}

	// если остались еще какие-то поля добавим их в конец
	if( $fields )
		foreach( $fields as $key => $val )
			$new_fields[ $key ] = $val;

	return $new_fields;
}
add_filter('comment_form_fields', 'new_order_comment_fields' );
	/*
// удаляем ненужные поля в комментариях и добавляем новые
function new_comment_form_default_fields( $fields ) {
unset( $fields['url'] );

	$fields[ 'phone' ] = '<p class="comment-form-phone">'.
		  '<label for="phone">' . __( 'Phone' ) . '</label>'.
		  '<input id="phone" name="phone" type="text" size="30"  tabindex="4" /></p>';

	$fields[ 'surname' ] = '<label for="surname">Фамилия</label> ' .
			'<input id="surname" class="form-control" name="surname" type="text" value="" size="30" />';
	return $fields;
} 
add_filter( 'comment_form_default_fields', 'new_comment_form_default_fields');

*/
function the_month_str($index) {
	$month = array("1"=>"Января","2"=>"Февраля","3"=>"Марта","4"=>"Апреля","5"=>"Мая", "6"=>"Июня", "7"=>"Июля","8"=>"Августа","9"=>"Сентября","10"=>"Октября","11"=>"Ноября","12"=>"Декабря");
	echo $month[$index];
}
function get_month_str($index) {
	$month = array("1"=>"января","2"=>"февраля","3"=>"марта","4"=>"апреля","5"=>"мая", "6"=>"июня", "7"=>"июля","8"=>"августа","9"=>"сентября","10"=>"октября","11"=>"ноября","12"=>"декабря");
	return $month[$index];
}


function get_term_of_term($of_term, $term, $post_type) {		
	//Разбиваем по родителям
	$res = array();
	$of_terms_arr = get_terms(array(
		'taxonomy' => $of_term,
		'hide_empty' => true,
		'hierarchical'  => true,
	));
	//Проходим по всем категориям и записываем какие записи отсносятся к категории
	foreach($of_terms_arr as $row) {
		$row->link_terms = array();
		if($row->parent == 0) {
			//Получаем посты которые относятся к категории
			$args = array( 
				'post_type'	=> $post_type,
				'posts_per_page' => -1,		
				'tax_query' => array(
					array(
						'taxonomy' => $of_term,
						'field'    => 'id',
						'terms'    => array($row->term_id),
					)
				)
			);
			$posts = get_posts( $args );
			foreach($posts as $post_row) {
				$terms_arr = wp_get_object_terms($post_row->ID, $term);
				foreach($terms_arr as $terms_row) {
					$row->link_terms[$terms_row->term_id] = $terms_row;
				}				
			}
		}		
		$res[$row->parent][$row->term_id] = $row;
	}
	return $res;
}


function writeParent($id, $parents, $is_collapse) {
	if(isset($parents[$id])) {
		if($is_collapse) {
			echo '<ul id="childs-'.$id.'">';
		}
		else {
			echo '<ul id="childs-'.$id.'" class="collapse">';
		}
		foreach($parents[$id] as $row) {
			echo '<li>';
			if($is_collapse) {
				if(isset($parents[$row->term_id])) {
					echo '<a href="#childs-'.$row->term_id.'" class="collapsed has-childs" data-toggle="collapse" data-parent="#childs-'.$id.'">'.$row->name.'</a>';
				}
				else {					
					echo '<a href="'.get_term_link( $row ).'">'.$row->name.'</a>';
				}
			}
			else {
				echo '<a href="'.get_term_link( $row ).'">'.$row->name.'</a>';
			}
				writeParent($row->term_id, $parents, false);
			echo '</li>';
		}
		echo '</ul>';
	}
}

function get_posts_hierarchy($post_type) {	
	$query = new WP_Query;
	$posts = $query->query(array( 'post_type' => $post_type, 'posts_per_page' => -1));
	//Ассоциативный массив по родителям
	$parent_arr = array();
	foreach( $posts as $row ) {
		if(!isset($parent_arr[$row->post_parent])) $parent_arr[$row->post_parent] = array();
		$parent_arr[$row->post_parent][] = $row;
	}
	return $parent_arr;
}

//
function getUrlParam($param, $valParam) {
	//Если параметр есть то мы его находим в строке и заменяем новым значением
	if(!count($_GET)) {
		return $_SERVER['REQUEST_URI'].'?'.$param.'='.$valParam;
	}
	else if(isset($_GET[$param])) {
		$request_uri = $_SERVER['REQUEST_URI'];					
		$pattern = '/('.$param.'=)[^&]+/i';
		$replacement = '${1}'.$valParam;
		return preg_replace($pattern, $replacement, $request_uri);
	}
	else if(!isset($_GET[$param])) {
		return $_SERVER['REQUEST_URI'].'&'.$param.'='.$valParam;
	}
	return '';
}

function has_more() {
    global $post;
    if (empty($post)) return;
    return (bool) preg_match('/<!--more(.*?)?-->/', $post->post_content);
}

function queryPagination($pagination_query) {
	$big = 999999999; // уникальное число для замены

	$args = array(
		'base'			=> str_replace( $big, '%#%', get_pagenum_link( $big ) ),
		'format'		=> '',
		'current'		=> max( 1, get_query_var('paged') ),
		'total'			=> $pagination_query->max_num_pages,
		'prev_text'		=> '<i class="fa fa-chevron-left" aria-hidden="true"></i>',
		'next_text'		=> '<i class="fa fa-chevron-right" aria-hidden="true"></i>',
		'end_size'		=> '1',//Сколько номеров показывать сначала и конца
		'mid_size'		=> '1',//Сколько номеров показывать сначала и конца
	);

	$result = paginate_links( $args );

	// удаляем добавку к пагинации для первой страницы
	$result = str_replace( '/page/1/', '', $result );

	echo $result;
}

?>