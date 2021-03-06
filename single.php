<?php get_header();
if( have_posts() ) : the_post(); 
$act_post_id = get_the_ID();
$act_term = get_the_terms( get_the_ID(), 'category' );
if($act_term) $act_term = $act_term[0];
?>
<div class="container">
	<div class="row">
		<div class="col-xs-4">
			<?php get_search_form(); ?>
			<?php $terms = get_terms( 'category'); 
			if($terms) : ?>
				<div class="navigation-menu">
				<ul>
				<?php foreach($terms as $row) : ?>
					<li class="<?php if($row->term_id == $act_term->term_id) echo 'active'; ?>">
						<a href="<?php echo get_term_link( $row ); ?>"><?php echo $row->name; ?></a>
					</li>
				<?php endforeach; ?>  
				</ul>
				</div>
			<?php endif; ?>
		</div>
		<div class="col-xs-8 single-blog">
			<div class="row"><div class="col-xs-10-5 col-xs-offset-1-5"><h1><?php the_title(); ?></h1></div></div>
			<div class="img to-the-right">
				<?php if(has_post_thumbnail(get_the_ID())) : ?>
					<img src="<?php echo get_the_post_thumbnail_url( get_the_ID(), 'image-905-auto' ); ?>" />
				<?php endif; ?>
			</div>
			<div class="row content-page">
				<div class="col-xs-10-5 col-xs-offset-1-5">
					<?php the_content(); ?>
				</div>
			</div>
			<div class="row"><div class="col-xs-10-5 col-xs-offset-1-5">
			<div class="info-part">
				<div class="row">
					<div class="col-xs-6"><em><?php echo get_the_date('d.m.Y'); ?></em></div>
					<div class="col-xs-6 text-right"><em>Автор: <?php the_author(); ?></em></div>
				</div>
			</div>		
			</div>
			</div>
		</div>
		
	</div>
</div>
<?php comments_template(); ?>
<?php endif; ?>
<?php get_footer(); ?>
