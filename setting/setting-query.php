<?php
function setting_pre_get_posts_for_custom_post($query) {
	
	if ( ! is_admin() && $query->is_main_query() ) {
	  
	  
		if(is_post_type_archive('products') || is_tax( 'products_category' )) {
			$query->set( 'posts_per_page', -1);
			$priceOrder = (isset($_GET['price-order']) && $_GET['price-order'] == 'desc') ? 'DESC' : 'ASC';
			$query->set( 'meta_key', 'price');
			$query->set( 'orderby', 'meta_value');
			$query->set( 'order', $priceOrder);
		}
	  
		/*
		//Проверяем является ли запрос отображение записей в таксономии category_examples
		if (is_tax('category_examples')) {
			//Отключаем пагинацию на страница отображения по метки портфолио
			$query->set( 'posts_per_page', -1 );
		}
		if(is_post_type_archive('service')) {
			$query->set( 'posts_per_page', -1 );
			//$query->set( 'post_parent__not_in', array('0') );
			
			
			//Сортировка
			if($_GET['sort-type']=='zone' && is_numeric($_GET['zone'])) {
				$query->set( 'tax_query', 
					array(array(
						'taxonomy' => 'service_direction',
						'field'    => 'id',
						'terms'    => array( intval($_GET['zone']) ),
					)));
			}
			if($_GET['sort-type']=='spec' && is_numeric($_GET['spec'])) {
				$services = get_field('services', intval($_GET['spec']));
				$arrId = array();
				if($services) {
					foreach($services as $row) {
						$arrId[] = $row->ID;
					}
				}
				$query->set( 'post_parent', $arrId );
				$query->set( 'post__in', $arrId );
			}		
		}
		if(is_post_type_archive('product') || is_tax( 'product_cat' ) || is_tax( 'product_cat' ) || is_tax( 'product_brand' )) {
			$query->set( 'posts_per_page', 9);
			
		}
		if(isset($_GET['on-page'])) {
			$posts_per_page = $_GET['on-page'];
			if($_GET['on-page'] == 'all') {
				$posts_per_page = -1;
			}
			$query->set( 'posts_per_page', (int)$posts_per_page);
		}*/
	}
}

add_action( 'pre_get_posts', 'setting_pre_get_posts_for_custom_post' );