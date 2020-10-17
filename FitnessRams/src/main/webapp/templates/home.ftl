<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>

    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;700&family=Russo+One&display=swap"
          rel="stylesheet">
    <style>
        <#include "css/bootstrap/bootstrap-grid.min.css">
    </style>
    <style>
        <#include "css/bootstrap/bootstrap.min.css">
    </style>
    <style>
        <#include "css/style.css">
    </style>
</head>
<body>

<#include "header.ftl">
<#--<#if home == "">-->
<#--<div>${home}</div>-->
<#--</#if>-->

<div class="body_home">
    <div class="container">
        <div class="row">
            <div class="col 12">
                <div class="head_home">
                    <span>Абонемент в фитнес-клуб всего за 9990р</span>
                </div>
                <div>
                    <form action="/FitnessRams_war/ticket">
                        <button class="btn_home">
                            <span class="text_home">Выбрать абонемент</span>
                        </button>
                    </form>
                </div>
                <div>
                    <div class="items_home_items2">
                        <span>8 причин нас выбрать</span>
                    </div>
                    <div class="items_home">
                        <div class="items_row_home1">
                            <div class="item_home-item">
                            <span class="item_text_home1">
                                Бассейн и сауна
                            </span>
                                <span class="item_text_home2">
                                Для расслабления мышц после тренировки
                            </span>
                            </div>
                            <div class="item_home-item">
                            <span class="item_text_home1">
                                Подземный паркинг
                            </span>
                                <span class="item_text_home2">
                                Бесплатная парковка на 300 машин
                            </span>
                            </div>
                            <div class="item_home-item">
                            <span class="item_text_home1">
                                Фитнес-бар
                            </span>
                                <span class="item_text_home2">
                                Со вкусными коктейлями и фрешами
                            </span>
                            </div>
                            <div class="item_home-item">
                            <span class="item_text_home1">
                                Бесплатный Wi-Fi
                            </span>
                                <span class="item_text_home2">
                                Высокоскоростной интернет во всем фитнес-клубе
                            </span>
                            </div>
                        </div>
                        <div class="items_row_home2">
                            <div class="item_home-item">
                            <span class="item_text_home1">
                                Массажисты
                            </span>
                                <span class="item_text_home2">
                                Тайский массаж быстрого восстановления
                            </span>
                            </div>
                            <div class="item_home-item">
                            <span class="item_text_home1">
                                Безопастность
                            </span>
                                <span class="item_text_home2">
                               Личный шкафчик с охраной и магнитным ключом
                            </span>
                            </div>
                            <div class="item_home-item">
                            <span class="item_text_home1">
                                Гибкая оплата-бар
                            </span>
                                <span class="item_text_home2">
                                Единоразовый или ежемесячный платеж
                            </span>
                            </div>
                            <div class="item_home-item">
                            <span class="item_text_home1">
                                Фото-зона
                            </span>
                                <span class="item_text_home2">
                                Специальная зона для ваших фото
                            </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slider-block">

                    <button class="slider-arrow slider-arrow--prev" type="button" id="slider-arrow--prev">
                        <div class="slider-text slider-text-prev"></div>
                    </button>

                    <button class="slider-arrow slider-arrow--next" type="button" id="slider-arrow--next">
                        <div class="slider-text slider-text-next"></div>
                    </button>

                    <span class="items_home_items2">Фото наших спортзалов</span>
                    <div class="slick-slider">
                        <div class="item_slick_home">
                            <img class="photo_slick_home" src="templates/assets/gym1.png" alt="photo">
                        </div>
                        <div class="item_slick_home">
                            <img class="photo_slick_home" src="templates/assets/gym2.png" alt="photo">
                        </div>
                        <div class="item_slick_home">
                            <img class="photo_slick_home" src="templates/assets/gym3.png" alt="photo">
                        </div>
                        <div class="item_slick_home">
                            <img class="photo_slick_home" src="templates/assets/gym4.png" alt="photo">
                        </div>
                        <div class="item_slick_home">
                            <img class="photo_slick_home" src="templates/assets/gym5.png" alt="photo">
                        </div>
                    </div>
                </div>
                <div>
                    <span class="items_home_items3">Комментарии</span>
                </div>
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="comment_mod_home">
                                    <label for="comment"><span class="text_mode_home">КОММЕНТАРИЙ</span></label>
                                    <textarea class="aria_home" type="" placeholder="Введите комментарий" name="comment"
                                              id="comment"
                                              required>
                                </textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <form action="#feedback" method="post">
                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Save changes
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <form action="/comment" method="post">
                        <textarea class="form-control" name="comment" rows="2"
                                  placeholder="Добавьте Ваш комментарий"></textarea>
                    <div class="mar-top clearfix">
                        <button class="btn btn-sm btn-primary pull-right" type="submit"><i
                                    class="fa fa-pencil fa-fw"></i>
                            Добавить
                        </button>
                        <a class="btn btn-trans btn-icon fa fa-video-camera add-tooltip" href="#"></a>
                        <a class="btn btn-trans btn-icon fa fa-camera add-tooltip" href="#"></a>
                        <a class="btn btn-trans btn-icon fa fa-file add-tooltip" href="#"></a>
                    </div>
                </form>
            </div>
        </div>
        <div class="panel">
            <div class="panel-body">
                <!-- Содержание Новостей -->
                <!--===================================================-->
                <div class="media-block">
                    <a class="media-left" href="#"><img class="img-circle img-sm" alt="Профиль пользователя"
                                                        src="https://bootstraptema.ru/snippets/icons/2016/mia/1.png"></a>
                    <div class="media-body">
                        <div class="mar-btm">
                            <a href="#" class="btn-link text-semibold media-heading box-inline">Максим</a>
                            <p class="text-muted text-sm"><i class="fa fa-mobile fa-lg"></i> - 19-06-2016</p>
                        </div>
                        <p>Секция с комментариями для сайта с подключенным Bootstrap!!!</p>
                        <hr>
                    </div>
                </div>
                <!--===================================================-->
                <!-- Конец Содержания Новостей -->


                <!-- Содержание Новостей -->
                <!--===================================================-->
                <div class="media-block pad-all">
                    <a class="media-left" href="#"><img class="img-circle img-sm" alt="Профиль пользователя"
                                                        src="https://bootstraptema.ru/snippets/icons/2016/mia/4.png"></a>
                    <div class="media-body">
                        <div class="mar-btm">
                            <a href="#" class="btn-link text-semibold media-heading box-inline">Ирина</a>
                            <p class="text-muted text-sm"><i class="fa fa-mobile fa-lg"></i> - 20-06-2016</p>
                        </div>
                        <p>А я добавлю картинку</p>
                        <img class="img-responsive thumbnail"
                             src="https://drawings-girls.ucoz.net/2015/05/krasivaya-devushka-albinos.jpg" alt="Image">
                        <hr>

                        <!-- Комментарий -->
                        <div>
                            <div class="media-block pad-all">
                                <a class="media-left" href="#"><img class="img-circle img-sm" alt="Профиль пользователя"
                                                                    src="https://bootstraptema.ru/snippets/icons/2016/mia/5.png"></a>
                                <div class="media-body">
                                    <div class="mar-btm">
                                        <a href="#" class="btn-link text-semibold media-heading box-inline">Коля</a>
                                        <p class="text-muted text-sm"><i class="fa fa-globe fa-lg"></i> - 20-06-2016</p>
                                    </div>
                                </div>
                                <p>Дима Лох</p>
                            </div>
                        </div>
                        <!--===================================================-->
                        <!-- Конец Содержания Новостей -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="footer_items">
        <a class="footer_items-item" href="#">Политика конфиденциальности</a>
        <a href="#">Обработка персональных данных</a>
    </div>
    <div class="footer_items">
        <a class="footer_items-item" href="#" data-toggle="modal"
           data-target="#exampleModal" id="feedback">Написать нам</a>
        <a href="#" data-toggle="modal"
           data-target="#exampleModal">Сообщить об ошибке</a>
    </div>
    <div class="footer_items">
        <span class="footer_items-item">Где мы находимся:</span>
        <span>г. Казань, ул. Кремлевская д.35</span>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"
      rel="stylesheet"/>
<script>
    <#include "js/app.js">
</script>
<script>
    <#include "js/bootstrap.min.js">
</script>
</body>
</html>