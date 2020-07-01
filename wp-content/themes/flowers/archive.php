<? get_header();?>

<section class="section-content">
    <div class="container ">
        <div class="row">
            <div class="col-md-12">
                <?php get_search_form(); ?>
                <h1>Рубрика: <?=single_cat_title()?></h1>
            </div>
        </div>
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
                                                    <div class="post-thumbnail-height">
                                                        <?the_post_thumbnail('medium', array('class'=>'thumb', 'style'=>'object-fit: cover; width: 100%; height: 100%;')) ?>
                                                    </div>
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
        </div>
    </div>
</section>
<!-- /.section-content -->

<? get_footer();?>
