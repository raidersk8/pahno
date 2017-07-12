<form class="search-form" role="search" method="get" id="searchform" action="<?php echo home_url( '/' ) ?>" >
	<input class="form-control" type="text" placeholder="Введите значение для поиска" value="<?php echo get_search_query() ?>" name="s" id="s" />
	<input class="hidden" type="submit" id="searchsubmit" value="найти" />
</form>