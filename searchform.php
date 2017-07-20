<?php
global $postType;
?>
<?php if($postType) : ?>
<form class="search-form" role="search" method="get" id="searchform" action="<?php echo home_url( '/' ) ?>" >
	<input class="form-control" type="text" placeholder="Введите значение для поиска" value="<?php echo get_search_query() ?>" name="s" id="s" />
	<input class="hidden" type="text" value="<?php echo $postType; ?>" name="post-type" id="s" />
	<input class="searchsubmit" type="submit" id="searchsubmit" value="" />
</form>
<?php endif; ?>