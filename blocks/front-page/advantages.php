<?php if( have_rows('why') ): ?>
<div class="advantages">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<h2 class="text-center">Почему мы лучшие!</h2>				
				<div class="row">
					<?php $i=0; while ( have_rows('why') ) : the_row(); $i++; ?>
					<div class="col-sm-6 col-xs-12">
						<div class="row border-text">
							<div class="col-xs-12"><div class="left-part"><?php the_sub_field('title'); ?></div></div>
						</div>
						<div class="text"><div class="left-part"><?php the_sub_field('text'); ?></div></div>
					</div>
					<?php 
						if(!($i%2)) echo '</div><div class="row">'; 
						endwhile;
					?>					
				</div>
			</div>
		</div>
	</div>
</div>
<?php endif; ?>


