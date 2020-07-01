<form class="form-inline my-2 my-lg-0" method="get" id="searchform" action="<?php echo esc_url( home_url( '/' ) ); ?>">
    <input type="search" class="form-control mr-sm-2" name="s" id="s" placeholder="<?php esc_attr_e('Поиск...'); ?>" />
    <input type="submit" class="btn btn-search my-2 my-sm-0" name="submit"  value="<?php esc_attr_e('Поиск'); ?>" />
</form>