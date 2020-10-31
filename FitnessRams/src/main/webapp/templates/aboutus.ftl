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

<#macro list>
    <li>RAMZES — это огромные фитнес-клубы европейского уровня, которые находится в 15 минутах
        езды от центра города. Бассейн, двухэтажный тренажерный зал и многое другое!
    </li>
    <li class="text_ab-item">RAMZES – это место с неповторимой атмосферой, где каждый сможет
        найти занятие по своему вкусу и провести время с пользой, исходя из своих потребностей и
        предпочтений
    </li>
</#macro>
<div class="body_ab">
    <div class="row-bg">
        <div class="container">
            <div class="row">
                <div class="col 12">
                    <div class="text_ab1">
                        <ul>
                           <@list></@list>
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

<#include "footer.ftl">


<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"
      rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    <#include "js/bootstrap.min.js">
</script>
</body>
</html>