<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Сайт цветоводов</title>
    <?wp_head()?>
</head>
<body>
<button class="scrollToTop"><i class="fas fa-angle-up"></i></button>
<header class="main-header" <?echo flowers_get_background('header_bg')?>>
    <nav class="navbar navbar-expand-lg">
        <a class="navbar-brand logo-mob-position" href="<?echo home_url('/')?>">
            <?$custom_logo = wp_get_attachment_image_src(get_theme_mod('custom_logo'));?>
            <?if ($custom_logo):?>
                <img src="<?echo $custom_logo[0]?>" alt="<?bloginfo('name')?>" >
            <?endif?>
            <?//bloginfo('name')?>
        </a>
        <button class="navbar-toggler mobile-position" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>

        <div class="search-mobile"><?php get_search_form(); ?></div>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <?wp_nav_menu(array(
                'theme_location'  => 'header_menu',
                'container'       => false,
                'menu_class'      => 'navbar-nav ml-auto',
            ))?>
        </div>
        <div class="search-desktop"><?php get_search_form(); ?></div>
    </nav>
    <div class="main-header-text">
        <?if(get_field('header1')):?>
            <h2><?the_field('header1')?></h2>
        <?endif?>
        <?if(get_field('header_text')):?>
            <p class="description"><?the_field('header_text')?></p>
        <?endif?>
        <div class="main-header-buttons">
<!--            <button type="button" class="btn">Контакты</button>-->
            <?if(get_field('header_btn1')):?>
                <?$link = get_field('header_btn1');?>
                <a href="<?echo esc_url( $link['url']); ?>" class="btn"><?echo esc_html( $link['title']);?></a>
            <?endif?>
        </div>
    </div>
    <!-- /.main-header-text -->
</header>