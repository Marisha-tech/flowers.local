<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Комнатные растения</title>
    <?wp_head()?>
</head>

<body>

<header class="main-header-other">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.html">
            <?$custom_logo = wp_get_attachment_image_src(get_theme_mod('custom_logo'));?>
            <?if ($custom_logo):?>
                <img src="<?echo $custom_logo[0]?>" alt="<?bloginfo('name')?>">
            <?endif?>
<!--            --><?//bloginfo('name')?>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>

        <!--<div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Главная</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="flowers.html">Комнатные растения</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Пересадка</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Огород на подоконнике</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.html">Обо мне</a>
                </li>
            </ul>
        </div>-->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <?wp_nav_menu(array(
                'theme_location'  => 'header_menu',
                'container'       => false,
                'menu_class'      => 'navbar-nav ml-auto',
            ))?>
        </div>
    </nav>
</header>