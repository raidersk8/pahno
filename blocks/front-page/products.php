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
								<?php global $post; foreach($popular_goods as $row) : $post = $row; setup_postdata( $post ); ?>
									<li>
										<?php get_template_part('blocks/base/product-item'); ?>
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