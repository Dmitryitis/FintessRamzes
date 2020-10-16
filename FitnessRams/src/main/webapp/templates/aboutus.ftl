<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Club</title>
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
<div class="body_ab">
    <div class="row-bg">
        <div class="container">
            <div class="row">
                <div class="col 12">
                    <div class="text_ab1">
                        <ul>
                            <li>RAMZES — это огромные фитнес-клубы европейского уровня, которые находится в 15 минутах
                                езды от центра города. Бассейн, двухэтажный тренажерный зал и многое другое!
                            </li>
                            <li class="text_ab-item">RAMZES – это место с неповторимой атмосферой, где каждый сможет
                                найти занятие по своему вкусу и провести время с пользой, исходя из своих потребностей и
                                предпочтений
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row-bg2">
        <div class="container">
            <div class="row">
                <div class="col 12">
                    <div class="name_text_ab1">
                        Наши услуги
                    </div>
                    <div class="text_ab2">
                        <ul>
                            <li>Детский бассейн</li>
                            <li>Детская комната</li>
                            <li>Настольный теннис</li>
                            <li>Бесплатные персональные</li>
                            <li>Тренировки</li>
                            <li>Состав тела</li>
                            <li>Заморозка карты</li>
                            <li>Гостевые визиты в подарок</li>
                            <li>Сайкл-студия</li>
                            <li>Зал для игровых видов спорта</li>
                            <li>Банный комплекс</li>
                            <li>Сауна/хаммам</li>
                            <li>Солярий</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row-bg3">
        <div class="container">
            <div class="row">
                <div class="col 12">
                    <div class="items_ab">
                        <div class="text_ab3">
                            Уровень клуба выше цены
                            Наши клубы известны на всю страну
                            уникальным сочетанием цены и качества.
                        </div>
                        <div class="item_ab"></div>
                        <div class="text_ab3">
                            Практически каждый, кто впервые приходит к нам, отмечает, что за такую доступную цену не
                            ожидал столь высокого уровня сервиса и качества.
                        </div>
                        <div class="item_ab"></div>
                        <div class="text_ab3">
                            Это наша главная "фишка", которую многие пытались повторить, но безуспешно.
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
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"
      rel="stylesheet"/>
</body>
</html>