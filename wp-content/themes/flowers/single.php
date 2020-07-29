<?get_header()?>
<section class="section-content">
    <div class="container">
        <div class="row">
            <div class="col-md-8">

                <? if (have_posts()) : ?>
                    <? while (have_posts()) : the_post(); ?>
                        <article class="article-preview">
                            <h2><?the_title()?></h2>
<!--                            <p><span class="article-date"><i class="far fa-calendar-alt"></i>--><?//the_time('d.m.Y')?><!--</span></p>-->
                            <div class="article-excerpt">
                                <?/*if (has_post_thumbnail()): */?><!--
                                    <div class="flowers-thumb">
                                        <a href="<?/*the_permalink() */?>">
                                            <?/*the_post_thumbnail('large', array('class'=>'thumb', 'style' => 'object-fit: cover; width: 100%; height: 100%;')) */?>
                                        </a>
                                    </div>
                                --><?/*endif;*/?>
                                <?the_content('')?>
                            </div>
                        </article>
                        <!-- /.article-preview -->
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
