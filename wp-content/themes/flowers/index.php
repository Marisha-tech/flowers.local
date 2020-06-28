<? get_header();?>

<section class="section-content">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <? if (have_posts()) : ?>
                        <? while (have_posts()) : the_post(); ?>
                        <div class="col-md-6">
                            <article class="article-preview">
                                <div class="article-excerpt">
                                    <?if (has_post_thumbnail()): ?>
                                        <p>
                                            <a href="<?the_permalink() ?>">
                                                <?the_post_thumbnail('medium', array('class'=>'thumb')) ?>
                                                <h4><?the_title();?></h4>
                                            </a>
                                            <?the_content('')?>
                                        </p>
                                    <?endif;?>
                                    <p><a href="<?the_permalink() ?>" class="more"><?_e('Подробнее', 'flowers')?></a></p>
                                </div>
                            </article>
                            <!-- /.article-preview -->
                        </div>
                        <? endwhile; ?>
                        <?the_posts_pagination(array(
                            'end_size'     => 1,
                            'mid_size'     => 1,
                            'type'         => 'list',
                        ))?>
                    <?endif;?>
                </div>

                <!--<nav aria-label="...">
                    <ul class="pagination">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item active" aria-current="page">
                            <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>-->
            </div>
            <?get_sidebar()?>
            <!-- /.col-md-4 -->
            <!-- /.col-md-8 -->
<!--            <div class="col-md-4">-->
<!--                <div class="sidebar-widget widget-categories">-->
<!--                    <h5 class="widget-title">Рубрики</h5>-->
<!--                    <h5 class="widget-title">Комнатные растения</h5>-->
<!--                    <ul>-->
<!--                        <li>-->
<!--                            <a href="#"><img src="img/i/1.png" alt="" class="category_icon">Ампельные растения</a>-->
<!--                            <span class="cat-count">42</span>-->
<!--                        </li>-->
<!--                        <li>-->
<!--                            <a href="#"><img src="img/i/2.png" alt="" class="category_icon">Декоративно-лиственные</a>-->
<!--                            <span class="cat-count">42</span>-->
<!--                        </li>-->
<!--                        <li>-->
<!--                            <a href="#"><img src="img/i/3.png" alt="" class="category_icon">Орхидеи</a>-->
<!--                            <span class="cat-count">42</span>-->
<!--                        </li>-->
<!--                        <li>-->
<!--                            <a href="#"><img src="img/i/4.png" alt="" class="category_icon">Пальмы</a>-->
<!--                            <span class="cat-count">42</span>-->
<!--                        </li>-->
<!--                        <li>-->
<!--                            <a href="#"><img src="img/i/5.png" alt="" class="category_icon">Суккуленты</a>-->
<!--                            <span class="cat-count">42</span>-->
<!--                        </li>-->
<!--                        <li>-->
<!--                            <a href="#"><img src="img/i/6.png" alt="" class="category_icon">Цветущие</a>-->
<!--                            <span class="cat-count">42</span>-->
<!--                        </li>-->
<!---->
<!---->
<!--                    </ul>-->
<!--                </div>-->
<!--                <!-- /.sidebar-widget widget-categories -->
<!--            </div>-->
            <!-- /.col-md-4 -->
        </div>
    </div>
</section>
<!-- /.section-content -->

<? get_footer();?>
