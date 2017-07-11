<?php $popular_goods = get_field('popular_goods');
if($popular_goods) : ?>
<div class="products">	
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<h2 class="text-center main-title">популярные косметические средства</h2>				
				<div class="row">
					<div class="col-xs-12 no-p">
						<div id="sliderScrollbar" class="content slider-wich-scrollbar">
							<ul>
								<?php foreach($popular_goods as $row) : ?>
									<li>
										<a href="<?php echo get_the_permalink ( $row->ID ); ?>" class="item">
										<?php if(has_post_thumbnail($row->ID)) : ?>
											<div class="img">
												<img src="<?php echo get_the_post_thumbnail_url( $row->ID, 'image-auto-200' ); ?>" />
											</div>
										<?php endif; ?>
										<div class="inner">
											<h3><?php echo $row->post_title; ?></h3>
											<div class="text">
												<?php echo $row->post_excerpt; ?>
											</div>
										</div>
										<div class="price"><?php the_field('price', $row->ID); ?> &#8381; <?php if(get_field('old_price', $row->ID) != '') : ?><span>18 740 &#8381;</span><?php endif; ?></div>
										<div class="dose"><?php the_field('dose', $row->ID); ?></div>
										<div class="wrap-btn"><span class="btn btn-transparent btn-block">Подробнее</span></div>
										</a>
									</li>
								<?php endforeach; ?>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php endif; ?>