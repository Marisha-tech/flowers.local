<?get_header()?>
<section class="section-content">
    <div class="container">
        <div class="row">
            <div class="col-md-8">

                <? if (have_posts()) : ?>
                    <h2>Результаты поиска: <?php the_search_query() ?></h2>
                    <? while (have_posts()) : the_post(); ?>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="article-excerpt">
                                <?if (has_post_thumbnail()): ?>
                                    <div class="flowers-thumb">
                                        <a href="<?the_permalink() ?>">
                                            <?the_post_thumbnail('large', array('class'=>'thumb', 'style' => 'object-fit: cover; width: 100%; height: 100%;')) ?>
                                        </a>
                                    </div>
                                <?endif;?>

                            </div>
                        </div>
                        <!-- /.col-md-4 -->
                        <!--<script>
                            var search = document.getElementsByClassName('no-search');
                            window.onload = function(){
                                for (var i = 0; i < search.length; i++)
                                {
                                    search[i].style.display = "none";
                                }
                            }
                        </script>-->
                        <div class="col-md-8">
                            <article class="article-preview">
                                <div class="article-excerpt">
                                    <a href="<?the_permalink() ?>"><h4><?the_title()?></h4></a>
                                <!--                            <p><span class="article-date"><i class="far fa-calendar-alt"></i>--><?//the_time('d.m.Y')?><!--</span></p>-->
                                    <? flowers_pruning_text_search(); ?>
<!--                                --><?//the_content('')?>
                                </div>
                            </article>

                        </div>
                        <!-- /.col-md-8 -->
                    </div>
                    <? endwhile; ?>
                <?endif;?>
                <?
                // If comments are open or we have at least one comment, load up the comment template.
                if ( comments_open() || get_comments_number() ) {
                    comments_template();
                }
                ?>
            </div>
            <!-- /.col-md-8 -->
            <?get_sidebar()?>
        </div>
        <!-- /.col-md-4 -->


    </div>
    </div>
</section>
<!-- /.section-content -->
<?get_footer()?>
