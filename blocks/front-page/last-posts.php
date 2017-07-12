<div class="last-posts">
	<div class="container-fluid">
		<div class="row">
			<?php $query = new WP_Query( array( 'post_type' => 'post', 'posts_per_page' => 3 ) ); ?>
			<?php $i=0; while ( $query->have_posts() ) : $query->the_post(); $i++; ?>
				<div class="col-xs-4 no-p type-<?php echo $i; ?>">	
					<?php 
					if($i == 2) { 
						frontPageLastPostInner();
						frontPageLastPostTerm();
						frontPageLastPostImg();
					}
					else {
						frontPageLastPostImg(); 
						frontPageLastPostTerm();
						frontPageLastPostInner();						
					}
					?>
				</div>
			<?php endwhile ?>
		</div>
	</div>
</div>
<?php 
function frontPageLastPostImg() { ?>
	<?php if(has_post_thumbnail()) : ?>
		<a href="<?php the_permalink(); ?>" style="background-image: url(<?php echo get_the_post_thumbnail_url( get_the_ID(), 'image-480-350' ); ?>)" class="img"></a>
	<?php endif; ?>
<?php }
function frontPageLastPostTerm() { ?>
	<?php $terms = wp_get_post_terms( get_the_ID(), 'category'); 
		if($terms) : ?>
			<div class="terms"><a href="<?php echo get_term_link( $terms[0] ); ?>"><?php echo $terms[0]->name; ?></a></div>
	<?php endif; ?>
<?php }
function frontPageLastPostInner() { ?>
	<div class="inner">
		<h2 class="title"><?php the_title(); ?></h2>
		<div class="text"><?php the_excerpt(); ?></div>		
	</div>
<?php } ?>