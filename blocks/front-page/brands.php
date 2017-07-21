<?php $terms = get_terms( 'brands', array('hide_empty' => false) ); ?>
<?php if($terms) : ?>
<div class="brands">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 no-p-xs">
				<?php $responsivecountitem = (wpmd_is_phone()) ? 1 : 5; ?>
				<div class="wrap-jcarousel" data-wrap="circular" data-responsivecountitem="<?php echo $responsivecountitem; ?>">
					<div class="jcarousel">
						<ul>
							<?php if(wpmd_is_phone()) : ?>
							<li><div class="row">
								<?php foreach($terms as $key=>$row) : 
									$img = get_field('img', $row); ?>
									<?php if($img) : ?>
									<div class="col-xs-6 text-center"><a href="<?php echo get_term_link( $row ); ?>"><img src="<?php echo $img['sizes']['image-210-auto']; ?>" alt="" /></a></div>
									<?php if(!(($key+1)%4) && $key < count($terms)-1) : ?></div></li><li><div class="row"><?php endif; ?>
									<?php endif; ?>								
								<?php endforeach; ?>
								</div>
							</li>
							<?php else : ?>
								<?php foreach($terms as $row) : 
									$img = get_field('img', $row); ?>
									<?php if($img) : ?>
									<li><a href="<?php echo get_term_link( $row ); ?>"><img src="<?php echo $img['sizes']['image-210-auto']; ?>" alt="" /></a></li>
									<?php endif; ?>								
								<?php endforeach; ?>
							<?php endif; ?>
						</ul>
					</div>
					<a href="#" class="jcarousel-prev hidden-xs"></a>
					<a href="#" class="jcarousel-next hidden-xs"></a>
					<?php if(wpmd_is_phone()) : ?>
						<div class="jcarousel-scroll-pagination"></div>
					<?php endif; ?>
				</div>				
			</div>
		</div>
	</div>
</div>
<?php endif; ?>