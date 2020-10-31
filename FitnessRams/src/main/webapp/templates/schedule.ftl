<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Schedule</title>
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
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;700&family=Russo+One&display=swap"
          rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"
          rel="stylesheet"/>
</head>
<body>
<#include "header.ftl">


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
            data-toggle="modal" data-target="#${sch.nameForBootstrap}"
            data-content="event-yoga-1"
            data-event="event-${sch.team.id}">
            <div class="as-a">
                <span class="event-date">${sch.start_time} - ${sch.end_time}</span>
                <em class="event-name">${sch.program.name_program}</em>
            </div>
        </li>
    </#macro>

    <div class="events">
        <ul class="wrap">
            <li class="events-group">
                <div class="top-info"><span>Понедельник</span></div>
                <ul>
                    <#list schedules as schedule>
                        <#if schedule.day == "Понедельник">
                            <@schedu sch=schedule/>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Вторник</span></div>

                <ul>
                    <#list schedules as schedule>
                        <#if schedule.day == "Вторник">
                            <@schedu sch=schedule/>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Среда</span></div>

                <ul>
                    <#list schedules as schedule>
                        <#if schedule.day == "Среда">
                            <@schedu sch=schedule/>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Четверг</span></div>

                <ul>
                    <#list schedules as schedule>
                        <#if schedule.day == "Четверг">
                            <@schedu sch=schedule/>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Пятница</span></div>

                <ul>
                    <#list schedules as schedule>
                        <#if schedule.day == "Пятница">
                            <@schedu sch=schedule/>

                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Суббота</span></div>
                <ul>
                    <#list schedules as schedule>
                        <#if schedule.day == "Суббота">
                            <@schedu sch=schedule/>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Воскресенье</span></div>
                <ul>
                    <#list schedules as schedule>
                        <#if schedule.day == "Воскресенье">
                            <@schedu sch=schedule/>
                        </#if>
                    </#list>
                </ul>
            </li>
        </ul>
    </div>


    <div class="cover-layer"></div>
</div>

<#macro modal modShed>
    <div class="modal fade" id="${modShed.nameForBootstrap}" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body modal__team">
                    <div class="modal__team-photo">
                        <img src="${modShed.program.img}" alt="" class="modal__team-img">
                    </div>
                    <div class="modal__team-content">
                        <div class="modal__team-name">
                            Название: ${modShed.program.name_program}
                        </div>
                        <div class="modal__team-surname">
                            Время занятия: ${modShed.start_time} - ${modShed.end_time}
                        </div>
                        <div class="modal__team-about">Описание: ${modShed.program.text}</div>
                        <div class="modal__team-experience">
                            Тренер: ${modShed.team.name} ${modShed.team.surname}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</#macro>

<#list schedules as schedule>
    <#if schedule.day == "Понедельник">
        <@modal modShed=schedule/>

    <#elseif schedule.day == "Вторник">
        <@modal modShed=schedule/>
    <#elseif schedule.day == "Среда">
        <@modal modShed=schedule/>
    <#elseif schedule.day == "Четверг">
        <@modal modShed=schedule/>
    <#elseif schedule.day == "Пятница">
        <@modal modShed=schedule/>
    <#elseif schedule.day == "Суббота">
        <@modal modShed=schedule/>
    <#elseif schedule.day == "Воскресенье">
        <@modal modShed=schedule/>
    </#if>
</#list>


<#include "footer.ftl">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    <#include "js/schedule.js">
</script>
<script>
    <#include "js/bootstrap.min.js">
</script>
</body>
</html>