<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Personal Account</title>
    <style>
        <#include "css/bootstrap/bootstrap-grid.min.css">
    </style>
    <style>
        <#include "css/bootstrap/bootstrap.min.css">
    </style>
    <style>
        <#include "css/style.css">
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;700&family=Russo+One&display=swap"
          rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"
          rel="stylesheet"/>
</head>
<body>
<#include "header.ftl">
<div class="body_prof">
    <div class="container">
        <div class="row">
            <div class="col 12">
                <div class="items_prof">
                    <div class="photo_prof">
                        <img class="photo_item_prof" src="/FitnessRams_war/img" alt="photo profile">
                        <form action="/FitnessRams_war/schedule">
                            <button class="btn_check_prof">
                                <span class="text_check_prof">Посмотреть расписание</span>
                            </button>
                        </form>
                        <#if user.status_abonement != 0>
                                <button class="btn_check_prof" data-toggle="modal" data-target="#abonement">Посмотреть абонемент</button>
                        </#if>
                    </div>
                    <div class="container_personal_items_prof">
                        <div class="personal_items_prof">
                            <div class="item_prof">
                                <span>ИМЯ</span>

                                <div class="inp_prof">${user.username}</div>

                                <div class="item-item_prof">
                                    <span>ФАМИЛИЯ</span>
                                    <div class="inp_prof">${user.surname}</div>
                                </div>
                            </div>
                            <div class="item_prof">
                                <span>ПОЧТА</span>
                                <div class="inp_prof">${user.email}</div>

                                <div class="item-item_prof">
                                    <span>Phone</span>
                                    <div class="inp_prof">${user.phone}</div>
                                </div>

                                <form action="/FitnessRams_war/redactProfile" method="get"
                                      class="btn_save_prof item-item_prof">
                                    <button class="btn_item_prof">Редактировать</button>
                                </form>
                            </div>
                        </div>
                        <div>
                            <div class="status_prof">
                                <span class="text_status_prof">Статус абонемента</span>
                                <#if user.status_abonement == 0>
                                    <div class="item_status_prof">
                                        <span class="status_abonement_prof">Нет</span>
                                    </div>
                                <#else>
                                    <div class="item_status_prof help-color">
                                        <span class="status_abonement_prof font-helper">Да</span>
                                    </div>
                                </#if>
                            </div>
                        </div>
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
<#if user.status_abonement != 0>
    <div class="modal fade" id="abonement" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body modal__team">
                    <div class="modal__team-photo">
                        <img src="templates/assets/abonement.jpg" alt="" class="modal__team-img">
                    </div>
                    <div class="modal__team-content">
                        <div class="modal__team-name">
                            Добро пожаловать в наш клуб!
                        </div>
                        <div class="modal__team-surname">
                            Тип абонемента: ${user.abonement.name_abonement}
                        </div>
                        <#list user.abonement.t as text>
                            <div class="modal__team-about">${text}</div>
                        </#list>
                        <div class="modal__team-about">Цена: ${user.abonement.price}Р</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</#if>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
      href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

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