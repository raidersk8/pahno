<?php get_header(); ?>	
<div class="container single-services">
	<div class="row">
		<div class="col-xs-4">
			<?php get_search_form(); ?>
			<?php $terms = get_terms( 'services_category', array(
				'hide_empty' => false,
			)); 
			if($terms) : ?>
				<div class="navigation-menu">
				<ul>
				<?php foreach($terms as $row) : ?>
					<li>
						<a href="<?php echo get_term_link( $row ); ?>"><?php echo $row->name; ?></a>
					</li>
				<?php endforeach; ?>  
				</ul>
				</div>
			<?php endif; ?>
		</div>
		<div class="col-xs-8">
		</div>
	</div>
</div>
<?php get_footer(); ?>