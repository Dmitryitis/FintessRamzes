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

<form method="get" action="/FitnessRams_war/redactDiary" class="redactDiary">
    <button class="diary__redact">Редактировать дневник</button>
</form>

<div class="cd-schedule loading">
    <div class="timeline">
        <ul>
            <li><span>09:00</span></li>
            <li><span>09:30</span></li>
            <li><span>10:00</span></li>
            <li><span>10:30</span></li>
            <li><span>11:00</span></li>
            <li><span>11:30</span></li>
            <li><span>12:00</span></li>
            <li><span>12:30</span></li>
            <li><span>13:00</span></li>
            <li><span>13:30</span></li>
            <li><span>14:00</span></li>
            <li><span>14:30</span></li>
            <li><span>15:00</span></li>
            <li><span>15:30</span></li>
            <li><span>16:00</span></li>
            <li><span>16:30</span></li>
            <li><span>17:00</span></li>
            <li><span>17:30</span></li>
            <li><span>18:00</span></li>
        </ul>
    </div> <!-- .timeline -->


    <#macro schedu sch>
        <li class="single-event" data-start="${sch.start_time}" data-end="${sch.end_time}"
            data-toggle="modal" data-target="#${sch.string}"
            data-content="event-yoga-1"
            data-event="event-${sch.event_color}">
            <div class="as-a">
                <span class="event-date">${sch.start_time} - ${sch.end_time}</span>
                <em class="event-name help__text">${sch.text}</em>
            </div>
        </li>
    </#macro>

    <div class="events">
        <ul class="wrap">
            <li class="events-group">
                <div class="top-info"><span>Понедельник</span></div>
                <ul>
                    <#list diaries as diary>
                        <#if diary.day == "понедельник">
                            <@schedu sch=diary/>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Вторник</span></div>
                <ul>
                    <#list diaries as diary>
                        <#if diary.day == "вторник">
                            <@schedu sch=diary/>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Среда</span></div>
                <ul>
                    <#list diaries as diary>
                        <#if diary.day == "среда">
                            <@schedu sch=diary/>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Четверг</span></div>

                <ul>
                    <#list diaries as diary>
                        <#if diary.day == "четверг">
                            <@schedu sch=diary/>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Пятница</span></div>

                <ul>
                    <#list diaries as diary>
                        <#if diary.day == "пятница">
                            <@schedu sch=diary/>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Суббота</span></div>
                <ul>
                    <#list diaries as diary>
                        <#if diary.day == "суббота">
                            <@schedu sch=diary/>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Воскресенье</span></div>
                <ul>
                    <#list diaries as diary>
                        <#if diary.day == "воскресенье">
                            <@schedu sch=diary/>
                        </#if>
                    </#list>
                </ul>
            </li>
        </ul>
    </div>


    <div class="cover-layer"></div>
</div>

<#macro modal modShed>
    <div class="modal fade" id="${modShed.string}" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body modal__team">
                    <div class="modal__team-content">
                        <div class="modal__team-surname">
                            Время занятия: ${modShed.start_time} - ${modShed.end_time}
                        </div>
                        <div class="modal__team-about">Описание: ${modShed.text}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</#macro>

<#list diaries as diary>
    <#if diary.day == "понедельник">
        <@modal modShed=diary/>

    <#elseif  diary.day == "вторник">
        <@modal modShed=diary/>
    <#elseif diary.day == "среда">
        <@modal modShed=diary/>
    <#elseif diary.day == "четверг">
        <@modal modShed=diary/>
    <#elseif diary.day == "пятница">
        <@modal modShed=diary/>
    <#elseif diary.day == "суббота">
        <@modal modShed=diary/>
    <#elseif diary.day == "воскресенье">
        <@modal modShed=diary/>
    </#if>
</#list>

<#include "footer.ftl">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"
      rel="stylesheet"/>
<script>
    <#include "js/schedule.js">
</script>
<script>
    <#include "js/bootstrap.min.js">
</script>
</body>
</html>