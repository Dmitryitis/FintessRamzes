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
    <style>
        <#include "css/schedule.css">
    </style>
</head>
<body>

<#include "header.ftl">

<div class="redactDiary">
    <div class="redact__title">
        Редактирование дневника
    </div>
    <div class="all__records">
        <div class="all__records-title">Все записи</div>
        <div class="record__items">
            <#list diaries as diary>
                <div class="record__item">
                    <div class="day">
                        ${diary.day}
                    </div>
                    <div class="time">
                        <div class="start-time">${diary.start_time}</div>
                        <div>-</div>
                        <div class="end-time">${diary.end_time}</div>
                    </div>
                    <div class="text__diary">
                        ${diary.text}
                    </div>
                    <form action="/FitnessRams_war/diary?id=${diary.iddiary}" method="post" class="btn__delete">
                        <button type="submit" class="delete">Удалить запись</button>
                    </form>
                </div>
            </#list>

        </div>
    </div>
    <form action="/FitnessRams_war/redactDiary" method="post" class="redactor">
        <div class="redactor__title">Добавление записей</div>
        <div class="button__col">
            <button class="minus" type="button" id="minus">Убрать</button>
            <button class="plus" type="button" id="plus">Добавить</button>
        </div>
        <div class="record__items" id="record__items">
            <div class="record__item" id="1">
                <div class="day" id="days">
                    <select id="day" name="day" class="choose__day" required>
                        <option value="">Выбери день..</option>
                        <option name="types[]" value="понедельник">Понедельник</option>
                        <option name="types[]" value="вторник">Вторник</option>
                        <option name="types[]" value="среда">Среда</option>
                        <option name="types[]" value="четверг">Четверг</option>
                        <option name="types[]" value="пятница">Пятница</option>
                        <option name="types[]" value="суббота">Суббота</option>
                        <option name="types[]" value="воскресенье">Воскресенье</option>
                    </select>
                </div>
                <div class="time" id="time">
                    <input class="start-time" type="time" name="start_time" value="09:00" min="09:00" max="18:00"
                           required>
                    <div>-</div>
                    <input class="end-time" type="time" name="end_time" value="09:00" min="09:00" max="18:00" required>
                </div>

                <div class="text__diary" id="text__diary">
                    <textarea maxlength="100" class="text__day" name="text" placeholder="Введите текст"
                              required></textarea>
                </div>
            </div>

        </div>

        <div class="btn__save">
            <div>${error_time}</div>
            <button class="redactor__save" type="submit">Save</button>
        </div>
    </form>

</div>

<#include "footer.ftl">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"
      rel="stylesheet"/>
<script>
    var i = 1;

    $(function () {
        $('#plus').click(function (event) {
            i++;
            $("#record__items").append("<div class=\"record__item\" id=" + i + "></div>");
            $("#" + i).append("<div class=\"day\" id=\"days" + i + "\"></div>");
            $("#days" + i).append("<select id=\"day" + i + "\" name=\"day\" class=\"choose__day\" required></select>")

            $("#day" + i).append("<option value=\"\">Выбери день..</option>");
            $("#day" + i).append("<option name=\"types[]\" value=\"понедельник\">Понедельник</option>");
            $("#day" + i).append("<option name=\"types[]\" value=\"вторник\">Вторник</option>");
            $("#day" + i).append("<option name=\"types[]\" value=\"среда\">Среда</option>");
            $("#day" + i).append("<option name=\"types[]\" value=\"четверг\">Четверг</option>");
            $("#day" + i).append("<option name=\"types[]\" value=\"пятница\">Пятница</option>");
            $("#day" + i).append("<option name=\"types[]\" value=\"суббота\">Суббота</option>");
            $("#day" + i).append("<option name=\"types[]\" value=\"воскресенье\">Воскресенье</option>");

            $("#" + i).append("<div class=\"time\" id=\"time" + i + "\"></div>");
            $("#" + i).append("<div class=\"text__diary\" id=\"text__diary" + i + "\"></div>");

            $("#time" + i).append("<input class=\"start-time\" type=\"time\" name=\"start_time\" value=\"09:00\" min=\"09:00\" max=\"18:00\"\n" +
                "required>");
            $("#time" + i).append("<div>-</div>");
            $("#time" + i).append("<input class=\"end-time\" type=\"time\" name=\"end_time\" value=\"09:00\" min=\"09:00\" max=\"18:00\" required>");

            $("#text__diary" + i).append("<textarea maxlength=\"50\" class=\"text__day\" name=\"text\" placeholder=\"Введите текст\"\n" +
                "required></textarea>");
        });
    });

    $(function () {
        $('#minus').click(function (event) {
            console.log(i);
            console.log("#" + i);
            if (i > 1) {
                $("#" + i).detach();
                $("#days" + i).detach();
                $("#day" + i).detach();
                $("#time" + i).detach();
                $("#text__diary" + i).detach();
                i--;
            }
        });
    });
</script>
<script>
    <#include "js/bootstrap.min.js">
</script>
</body>
</html>