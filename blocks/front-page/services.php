<?php 
$menu_name = 'services-menu';
$locations = get_nav_menu_locations();

if( $locations && isset($locations[ $menu_name ]) ) : 
	$menu = wp_get_nav_menu_object( $locations[ $menu_name ] );
	$menu_items = wp_get_nav_menu_items( $menu );
?>
<div class="services">
	<div class="container-fluid">
		<div class="row list">
			<?php foreach($menu_items as $row) : ?>
			<div class="col-xs-4 item no-p">
				<?php $term = get_term($row->object_id); ?>
				<a href="<?php echo get_term_link( $term ); ?>" class="inner">
					<?php $img = get_field('img', $term); 
					if($img) : ?>
					<img src="<?php echo $img['url']; ?>" alt="" />
					<?php endif; ?>
					<div class="text"><?php echo $row->title; ?></div>
				</a>
			</div>
			<?php endforeach; ?>
			<div class="col-xs-4 item no-p">
				<a href="/services" class="inner"><div class="text">Все услуги</div></a>
			</div>
		</div>
	</div>
</div>
<?php endif; ?>


