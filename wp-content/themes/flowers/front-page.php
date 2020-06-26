<? get_header('main');?>
<?
$about_cat = get_category(3);
if ($about_cat):?>
<? $posts = get_posts(array(
    'numberposts' => 3,
    'category' => $about_cat->term_id,
));
?>
    <section class="section-about">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="main-about-text">
                        <p class="description">Меня зовут Марина, являюсь любителем цветов с малых лет.
                            Любовь к цветам привила моя любимая бабушка.
                            Ещё в детском возрасте «втыкала» листики всевозможных растений в грунт и наблюдала за развитием будущих растений, получалось довольно-таки не плохо.
                            Интерес плавно перерос в хобби.
                        </p>
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
    <section class="section-skill">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 skills">
                    <h3 class="text-left">Навыки</h3>
                    <h4>Развитие цветка из листика    75%</h4>
                    <div class="progress progress-height progress-bottom">
                        <div class="progress-bar" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <h4>Уход за горшечными    90%</h4>
                    <div class="progress progress-height progress-bottom">
                        <div class="progress-bar" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <h4>Размножение растений    65%</h4>
                    <div class="progress progress-height progress-bottom">
                        <div class="progress-bar" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
                <!-- /.col-md-6 -->
                <div class="col-md-6 other-skills">
                    <p>Данные навыки были приобретены в течение всей жизни ухода за растениями. С удовольствием поделюсь с Вами опытом, наработками как ухаживать за растениями и не залюбить их.</p>
                </div>
                <!-- /.col-md-6 -->
            </div>
        </div>
    </section>
    <!-- /.section-skill -->
    <section class="section-hours">
        <div class="container">
            <div class="row">
                <div class="col-3 col-sm-3 col-md-3">
                    <div class="row">
                        <div class="col-6 col-sm-6 col-md-4">
                            <img src="/img/i-1.png" alt="">
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
                            <img src="/img/i-2.png" alt="">
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
                            <img src="/img/i-3.png" alt="">
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
                            <img src="/img/i-4.png" alt="">
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
    <section class="section-works">
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
    </section>
    <!-- /.section-works -->
    <section class="section-work-process">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="main-about-text">
                        <h3>Немного о коллекции</h3>
                        <p class="description">В домашней коллекции присутствуют разнообразные виды комнатных растений. За каждым растением необходим особый уход и забота. В конечном итоге растюхи радуют своим необыкновенным цветением и красками</p>
                    </div>
                </div>
                <!-- /.col-lg-6 -->
                <div class="col-lg-6">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe id="videoPlayer" class="embed-responsive-item" src="https://www.youtube.com/embed/wTITvrsfk84" allowfullscreen="" frameborder="0"></iframe>
                        <div id="videoPlayBtn"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /.section-work-process -->
    <section class="section-development">
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
    </section>
    <!-- /.section-development -->
    <section class="section-reviews">
        <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active " data-interval="1000">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 offset-lg-2">
                                <div class="text-reviews">
                                    <blockquote class="blockquote">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquam animi consequatur cum cumque dolores eaque fuga harum illo magni maxime nam odio, pariatur quis reprehenderit, sequi sint voluptatum?</blockquote>
                                    <h4>Michael Hopkins</h4>
                                </div>
                            </div>
                            <!-- /.col-sm-7 -->
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 offset-lg-2">
                                <div class="text-reviews">
                                    <blockquote class="blockquote">2222222Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquam animi consequatur cum cumque dolores eaque fuga harum illo magni maxime nam odio, pariatur quis reprehenderit, sequi sint voluptatum?</blockquote>
                                    <h4>Michael Hopkins</h4>

                                </div>
                            </div>
                            <!-- /.col-sm-7 -->

                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 offset-lg-2">
                                <div class="text-reviews">
                                    <blockquote class="blockquote">3333333Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci aliquam animi consequatur cum cumque dolores eaque fuga harum illo magni maxime nam odio, pariatur quis reprehenderit, sequi sint voluptatum?</blockquote>
                                    <h4>Michael Hopkins</h4>

                                </div>
                            </div>
                            <!-- /.col-sm-7 -->

                        </div>
                    </div>
                </div>
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
    <section class="section-brand">
        <div class="container">
            <div class="row justify-content-center ">
                <div class="col-4 col-md-2"><img src="img/a-11.png" alt=""></div>
                <div class="col-4 col-md-2"><img src="img/a-21.png" alt=""></div>
                <div class="col-4 col-md-2"><img src="img/a-31.png" alt=""></div>
                <div class="col-4 col-md-2"><img src="img/a-41.png" alt=""></div>
                <div class="col-4 col-md-2"><img src="img/a-511.png" alt=""></div>
            </div>
        </div>
    </section>
    <!-- /.section-brand -->
    <section class="section-need-project">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <h3>Есть вопросы?</h3>
                    <p class="text-center" >С радостью отвечу на все вопросы, связанные с комнатными растениями?</p>
                    <form>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" id="inputEmail4" placeholder="Имя">
                            </div>
                            <div class="form-group col-md-6">
                                <input type="email" class="form-control" id="inputPassword4" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="inputTitle" placeholder="Текст вопроса">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="inputComment" placeholder="Комментарий">
                        </div>

                        <button type="submit" class="btn">Отправить</button>
                    </form>
                </div>
                <!-- /.col-lg-8 offset-lg-2 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>
    <!-- /.section-need-project -->
<? get_footer();?>
