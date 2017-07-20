<?php $terms = get_terms( 'brands' ); ?>
<?php if($terms) : ?>
<div class="brands">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="wrap-jcarousel" data-wrap="circular" data-responsivecountitem="5">
					<div class="jcarousel">
						<ul>
							<?php foreach($terms as $row) : 
								$img = get_field('img', $row);
								if($img) : ?>
								<li><a href="<?php echo get_term_link( $row ); ?>"><img src="<?php echo $img['sizes']['image-210-auto']; ?>" alt="" /></a></li>
								<?php endif; ?>
							<?php endforeach; ?>
						</ul>
					</div>
					<a href="#" class="jcarousel-prev"></a>
					<a href="#" class="jcarousel-next"></a>
				</div>				
			</div>
		</div>
	</div>
</div>
<?php endif; ?>