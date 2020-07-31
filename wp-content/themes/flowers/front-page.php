<? get_header('main');?>

<?$about_cat = get_category(3);?>
<?if ($about_cat):?>
    <? $posts = get_posts(array(
        'numberposts' => 1,
        'category' => $about_cat->term_id,
    ));
        //flowers_debug($about_cat);
    ?>
    <section class="section-about wow fadeInUp" data-wow-duration="2s" data-wow-offset="10">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="main-about-text">
                        <h3><?= $about_cat->name ?></h3>
                        <p><?= $about_cat->description ?></p>
                    </div>
                </div>
                <!-- /.col-lg-6 -->
                <div class="col-lg-6 offset-lg-3 text-center">
                    <img src="/img/signature.png" alt="">
                </div>
                <!-- /.col-lg-6 -->
            </div>
        </div>
    </section>
    <!-- /.section-about -->
<?endif;?>
<?$skills_cat = get_category(4);?>
<?if ($skills_cat):?>
<? $posts = get_posts(array(
    'numberposts' => 1,
    'category' => $skills_cat->term_id,
));
//flowers_debug($skills_cat);
?>
    <section class="section-skill">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 skills">
                    <h3 class="text-left"><?= $skills_cat->name ?></h3>
                    <h4>Огород на подоконнике    95%</h4>
                    <div class="progress progress-height progress-bottom wow slideInLeft">
                        <div class="progress-bar" id="line-container" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <h4>Размножение растений    75%</h4>
                    <div class="progress progress-height progress-bottom wow slideInLeft">
                        <div class="progress-bar" id="line-container" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <!--<h4>Развитие цветка из листика    75%</h4>
                    <div class="progress progress-height progress-bottom">
                        <div class="progress-bar" id="line-container" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>-->
                    <h4>Уход за горшечными    98%</h4>
                    <div class="progress progress-height progress-bottom wow slideInLeft">
                        <div class="progress-bar" id="line-container" role="progressbar" style="width: 98%" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>


                </div>
                <!-- /.col-md-6 -->
                <div class="col-md-6 other-skills" <? echo flowers_get_background_no_center('section_img', $skills_cat) ?>>
                    <p class="wow fadeInUp"><?= $skills_cat->description ?></p>
                </div>
                <!-- /.col-md-6 -->
            </div>
        </div>
    </section>
    <!-- /.section-skill -->
<?endif;?>
    <section class="section-hours">
        <div class="container">
            <div class="row wow rotateInDownLeft">
                <div class="col-3 col-sm-3 col-md-3">
                    <div class="row">
                        <div class="col-6 col-sm-6 col-md-4">
                            <img src="<?= get_template_directory_uri()?>/assets/img/i-1.png" alt="">
                        </div>
                        <div class="col-6 col-sm-6 col-md-8 pl-0">
                            <div>35</div>
                            <p>видов растений</p>
                        </div>
                    </div>
                </div>
                <!-- /.col-md-3 -->
                <div class="col-3 col-sm-3 col-md-3">
                    <div class="row">
                        <div class="col-6 col-sm-6 col-md-4">
                            <img src="<?= get_template_directory_uri()?>/assets/img/i-2.png" alt="">
                        </div>
                        <div class="col-6 col-sm-6 col-md-8 pl-0">
                            <div>1465</div>
                            <p>рабочих часов</p>
                        </div>
                    </div>
                </div>
                <!-- /.col-md-3 -->
                <div class="col-3 col-sm-3 col-md-3">
                    <div class="row">
                        <div class="col-6 col-sm-6 col-md-4">
                            <img src="<?= get_template_directory_uri()?>/assets/img/i-3.png" alt="">
                        </div>
                        <div class="col-6 col-sm-6 col-md-8 pl-0">
                            <div>612</div>
                            <p>успешных разведений</p>
                        </div>
                    </div>
                </div>
                <!-- /.col-md-3 -->
                <div class="col-3 col-sm-3 col-md-3">
                    <div class="row">
                        <div class="col-6 col-sm-6 col-md-4">
                            <img src="<?= get_template_directory_uri()?>/assets/img/i-4.png" alt="">
                        </div>
                        <div class="col-6 col-sm-6 col-md-8 pl-0">
                            <div>735</div>
                            <p>счастливых цветов</p>
                        </div>
                    </div>
                </div>
                <!-- /.col-md-3 -->
            </div>
        </div>
    </section>
    <!-- /.section-hours -->
    <!--<section class="section-works">
        <div class="container-fluid">
            <div class="row gallery text-center">
                <div class="col-sm-3 gallery-item">
                    <a href="/img/gallery/1.png">
                        <img src="img/gallery/1_s.png" alt="">
                    </a>
                </div>
                <div class="col-sm-3 gallery-item">
                    <a href="/img/gallery/2.png">
                        <img src="img/gallery/2_s.png" alt="">
                    </a>
                </div>
                <div class="col-sm-3 gallery-item">
                    <a href="/img/gallery/3.png">
                        <img src="img/gallery/3_s.png" alt="">
                    </a>
                </div>
                <div class="col-sm-3 gallery-item">
                    <a href="/img/gallery/4.png">
                        <img src="img/gallery/4_s.png" alt="">
                    </a>
                </div>
            </div>
            <div class="row gallery text-center">
                <div class="col-sm-3 gallery-item">
                    <a href="/img/gallery/4.png">
                        <img src="img/gallery/4_s.png" alt="">
                    </a>
                </div>
                <div class="col-sm-3 gallery-item">
                    <a href="/img/gallery/5.png">
                        <img src="img/gallery/5_s.png" alt="">
                    </a>
                </div>
                <div class="col-sm-3 gallery-item">
                    <a href="/img/gallery/6.png">
                        <img src="img/gallery/6_s.png" alt="">
                    </a>
                </div>
                <div class="col-sm-3 gallery-item">
                    <a href="/img/gallery/1.png">
                        <img src="img/gallery/1_s.png" alt="">
                    </a>
                </div>
            </div>
            <div class="row load-more justify-content-center">
                <a href="#">Посмотреть ещё</a>
            </div>
        </div>
    </section>-->
    <!-- /.section-works -->

<? $work_process_cat = get_category(5);
if ($work_process_cat):?>
<? $posts = get_posts(array(
    'numberposts' => 2,
    'category' => $work_process_cat->term_id,
));
?>
    <section class="section-work-process">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="main-about-text">
                        <h3><?= get_field('section_header', $work_process_cat) ?></h3>
                        <p class="description"><?= $work_process_cat->description ?></p>
                    </div>
                </div>
                <!-- /.col-lg-6 -->
                <div class="col-lg-6">
                    <? if ($video = get_field('section_video', $work_process_cat)):?>
                        <?
                        $video = str_replace('watch?v=', 'embed/', $video);
                        ?>

                        <div class="embed-responsive embed-responsive-16by9 mt-5">
                            <iframe id="videoPlayer" class="embed-responsive-item"
                                    src="<?= $video ?>?enablejsapi=1&amp;html5=1&amp;rel=0&amp;controls=0&amp;showinfo=0"
                                    frameborder="0" allowfullscreen=""></iframe>
                            <div id="videoPlayBtn"></div>
                        </div>
                    <? endif ?>
                </div>
            </div>
        </div>
    </section>
    <!-- /.section-work-process -->
<?endif;?>
    <!--<section class="section-development">
        <div class="container">
            <div class="row mb-md-5">
                <div class="col-sm-6 col-md-3 text-center">
                    <img src="img/w-1.png" alt="" class="icon-development">
                    <h4>ui / ux design</h4>
                    <p>Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <img src="img/w-2.png" alt="" class="icon-development">
                    <h4>web development</h4>
                    <p>Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <img src="img/w-3.png" alt="" class="icon-development">
                    <h4>app / mobile</h4>
                    <p>Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <img src="img/w-4.png" alt="" class="icon-development">
                    <h4>game design</h4>
                    <p>Lorem ipsum dolor sit amet.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-3 text-center">
                    <img src="img/w-5.png" alt="" class="icon-development">
                    <h4>SEO / marketing</h4>
                    <p>Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <img src="img/w-6.png" alt="" class="icon-development">
                    <h4>photography</h4>
                    <p>Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <img src="img/w-7.png" alt="" class="icon-development">
                    <h4>graphic design</h4>
                    <p>Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="col-sm-6 col-md-3 text-center">
                    <img src="img/w-8.png" alt="" class="icon-development">
                    <h4>illustrations</h4>
                    <p>Lorem ipsum dolor sit amet.</p>
                </div>
            </div>
        </div>
    </section>-->
    <!-- /.section-development -->

<?$posts = get_posts(array(
    'post_type' => 'reviews',
));
if ($posts):
?>
    <section class="section-reviews">
        <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-ride="carousel">
            <ol class="carousel-indicators">
                 <?for ($i = 0; $i< count($posts); $i++):?>
                <li data-target="#carouselExampleCaptions" data-slide-to="<?=$i?>" <?if (!$i) echo 'class="active"'?>></li>
                 <?endfor; ?>
            </ol>
            <div class="carousel-inner">
                <? $i = 0; foreach ($posts as $post):?>
                <div class="carousel-item <?if (!$i) echo 'active'?> " data-interval="5000">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 offset-lg-2">
                                <div class="text-reviews">
                                    <blockquote class="blockquote"><?= $post->post_content?></blockquote>
                                    <h4><?= the_field('review_author')?></h4>
                                </div>
                            </div>
                            <!-- /.col-sm-7 -->
                        </div>
                    </div>
                </div>
                    <?$i++; endforeach;?>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section>
    <!-- /.section-reviews -->
<?endif;?>
    <section class="section-brand">
        <div class="container">
            <div class="row justify-content-center ">
                <div class="col-4 col-md-2"><img src="<?= get_template_directory_uri()?>/assets/img/a-11.png" alt=""></div>
                <div class="col-4 col-md-2"><img src="<?= get_template_directory_uri()?>/assets/img/a-21.png" alt=""></div>
                <div class="col-4 col-md-2"><img src="<?= get_template_directory_uri()?>/assets/img/a-31.png" alt=""></div>
                <div class="col-4 col-md-2"><img src="<?= get_template_directory_uri()?>/assets/img/a-41.png" alt=""></div>
                <div class="col-4 col-md-2"><img src="<?= get_template_directory_uri()?>/assets/img/a-511.png" alt=""></div>
            </div>
        </div>
    </section>
    <!-- /.section-brand -->

<?$contact = get_page_by_title('Есть вопросы?');
if ($contact):
//    setup_postdata($contact);
//    the_content();
//    bluerex_debug($contact)
?>
    <section class="section-need-project">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <h3>Есть вопросы?</h3>
<!--                    <p class="text-center" >С радостью отвечу на все вопросы, связанные с комнатными растениями?</p>-->
                    <div class="col-md-12">
                        <?echo do_shortcode($contact->post_content);?>
                    </div>
                    <!-- /.col-md-12 -->
                </div>
                <!-- /.col-lg-8 offset-lg-2 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>
    <!-- /.section-need-project -->
<?endif;?>
<? get_footer();?>
