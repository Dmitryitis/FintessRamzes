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

    <div class="events">
        <ul class="wrap">
            <li class="events-group">
                <div class="top-info"><span>Понедельник</span></div>
                <ul>
                    <#list schedules as schedule>
                        <#if schedule.day == "Понедельник">
                            <li class="single-event" data-start="${schedule.start_time}" data-end="${schedule.end_time}"
                                data-toggle="modal" data-target="#${schedule.nameForBootstrap}"
                                data-content="event-yoga-1"
                                data-event="event-${schedule.team.id}">
                                <div class="as-a">
                                    <span class="event-date">${schedule.start_time} - ${schedule.end_time}</span>
                                    <em class="event-name">${schedule.program.name_program}</em>
                                </div>
                            </li>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Вторник</span></div>

                <ul>
                    <#list schedules as schedule>
                        <#if schedule.day == "Вторник">
                            <li class="single-event" data-start="${schedule.start_time}" data-end="${schedule.end_time}"
                                data-toggle="modal" data-target="#${schedule.nameForBootstrap}"
                                data-content="event-yoga-1"
                                data-event="event-${schedule.team.id}">
                                <div class="as-a">
                                    <span class="event-date">${schedule.start_time} - ${schedule.end_time}</span>
                                    <em class="event-name">${schedule.program.name_program}</em>
                                </div>
                            </li>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Среда</span></div>

                <ul>
                    <#list schedules as schedule>
                        <#if schedule.day == "Среда">
                            <li class="single-event" data-start="${schedule.start_time}" data-end="${schedule.end_time}"
                                data-toggle="modal" data-target="#${schedule.nameForBootstrap}"
                                data-content="event-yoga-1"
                                data-event="event-${schedule.team.id}">
                                <div class="as-a">
                                    <span class="event-date">${schedule.start_time} - ${schedule.end_time}</span>
                                    <em class="event-name">${schedule.program.name_program}</em>
                                </div>
                            </li>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Четверг</span></div>

                <ul>
                    <#list schedules as schedule>
                        <#if schedule.day == "Четверг">
                            <li class="single-event" data-start="${schedule.start_time}" data-end="${schedule.end_time}"
                                data-toggle="modal" data-target="#${schedule.nameForBootstrap}"
                                data-content="event-yoga-1"
                                data-event="event-${schedule.team.id}">
                                <div class="as-a">
                                    <span class="event-date">${schedule.start_time} - ${schedule.end_time}</span>
                                    <em class="event-name">${schedule.program.name_program}</em>
                                </div>
                            </li>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Пятница</span></div>

                <ul>
                    <#list schedules as schedule>
                        <#if schedule.day == "Пятница">
                            <li class="single-event" data-start="${schedule.start_time}" data-end="${schedule.end_time}"
                                data-toggle="modal" data-target="#${schedule.nameForBootstrap}"
                                data-content="event-yoga-1"
                                data-event="event-${schedule.team.id}">
                                <div class="as-a">
                                    <span class="event-date">${schedule.start_time} - ${schedule.end_time}</span>
                                    <em class="event-name">${schedule.program.name_program}</em>
                                </div>
                            </li>

                        </#if>
                    </#list>
                </ul>
            </li>
            <!--        -->
            <li class="events-group">
                <div class="top-info"><span>Суббота</span></div>
                <ul>
                    <#list schedules as schedule>
                        <#if schedule.day == "Суббота">
                            <li class="single-event" data-start="${schedule.start_time}" data-end="${schedule.end_time}"
                                data-toggle="modal" data-target="#${schedule.nameForBootstrap}"
                                data-content="event-yoga-1"
                                data-event="event-${schedule.team.id}">
                                <div class="as-a">
                                    <span class="event-date">${schedule.start_time} - ${schedule.end_time}</span>
                                    <em class="event-name">${schedule.program.name_program}</em>
                                </div>
                            </li>
                        </#if>
                    </#list>
                </ul>
            </li>

            <li class="events-group">
                <div class="top-info"><span>Воскресенье</span></div>
                <ul>
                    <#list schedules as schedule>
                        <#if schedule.day == "Воскресенье">
                            <li class="single-event" data-start="${schedule.start_time}" data-end="${schedule.end_time}"
                                data-toggle="modal" data-target="#${schedule.nameForBootstrap}"
                                data-content="event-yoga-1"
                                data-event="event-${schedule.team.id}">
                                <div class="as-a">
                                    <span class="event-date">${schedule.start_time} - ${schedule.end_time}</span>
                                    <em class="event-name">${schedule.program.name_program}</em>
                                </div>
                            </li>
                        </#if>
                    </#list>
                </ul>
            </li>
            <!--        -->
        </ul>
    </div>

    <#--   -->


    <div class="cover-layer"></div>
</div> <!-- .cd-schedule -->


<#list schedules as schedule>
    <#if schedule.day == "Понедельник">
        <div class="modal fade" id="${schedule.nameForBootstrap}" tabindex="-1" role="dialog"
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
                            <img src="${schedule.program.img}" alt="" class="modal__team-img">
                        </div>
                        <div class="modal__team-content">
                            <div class="modal__team-name">
                                Название: ${schedule.program.name_program}
                            </div>
                            <div class="modal__team-surname">
                                Время занятия: ${schedule.start_time} - ${schedule.end_time}
                            </div>
                            <div class="modal__team-about">Описание: ${schedule.program.text}</div>
                            <div class="modal__team-experience">
                                Тренер: ${schedule.team.name} ${schedule.team.surname}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <#elseif schedule.day == "Вторник">
        <div class="modal fade" id="${schedule.nameForBootstrap}" tabindex="-1" role="dialog"
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
                            <img src="${schedule.program.img}" alt="" class="modal__team-img">
                        </div>
                        <div class="modal__team-content">
                            <div class="modal__team-name">
                                Название: ${schedule.program.name_program}
                            </div>
                            <div class="modal__team-surname">
                                Время занятия: ${schedule.start_time} - ${schedule.end_time}
                            </div>
                            <div class="modal__team-about">Описание: ${schedule.program.text}</div>
                            <div class="modal__team-experience">
                                Тренер: ${schedule.team.name} ${schedule.team.surname}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <#elseif schedule.day == "Среда">
        <div class="modal fade" id="${schedule.nameForBootstrap}" tabindex="-1" role="dialog"
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
                            <img src="${schedule.program.img}" alt="" class="modal__team-img">
                        </div>
                        <div class="modal__team-content">
                            <div class="modal__team-name">
                                Название: ${schedule.program.name_program}
                            </div>
                            <div class="modal__team-surname">
                                Время занятия: ${schedule.start_time} - ${schedule.end_time}
                            </div>
                            <div class="modal__team-about">Описание: ${schedule.program.text}</div>
                            <div class="modal__team-experience">
                                Тренер: ${schedule.team.name} ${schedule.team.surname}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <#elseif schedule.day == "Четверг">
        <div class="modal fade" id="${schedule.nameForBootstrap}" tabindex="-1" role="dialog"
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
                            <img src="${schedule.program.img}" alt="" class="modal__team-img">
                        </div>
                        <div class="modal__team-content">
                            <div class="modal__team-name">
                                Название: ${schedule.program.name_program}
                            </div>
                            <div class="modal__team-surname">
                                Время занятия: ${schedule.start_time} - ${schedule.end_time}
                            </div>
                            <div class="modal__team-about">Описание: ${schedule.program.text}</div>
                            <div class="modal__team-experience">
                                Тренер: ${schedule.team.name} ${schedule.team.surname}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <#elseif schedule.day == "Пятница">
        <div class="modal fade" id="${schedule.nameForBootstrap}" tabindex="-1" role="dialog"
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
                            <img src="${schedule.program.img}" alt="" class="modal__team-img">
                        </div>
                        <div class="modal__team-content">
                            <div class="modal__team-name">
                                Название: ${schedule.program.name_program}
                            </div>
                            <div class="modal__team-surname">
                                Время занятия: ${schedule.start_time} - ${schedule.end_time}
                            </div>
                            <div class="modal__team-about">Описание: ${schedule.program.text}</div>
                            <div class="modal__team-experience">
                                Тренер: ${schedule.team.name} ${schedule.team.surname}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <#elseif schedule.day == "Суббота">
        <div class="modal fade" id="${schedule.nameForBootstrap}" tabindex="-1" role="dialog"
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
                            <img src="${schedule.program.img}" alt="" class="modal__team-img">
                        </div>
                        <div class="modal__team-content">
                            <div class="modal__team-name">
                                Название: ${schedule.program.name_program}
                            </div>
                            <div class="modal__team-surname">
                                Время занятия: ${schedule.start_time} - ${schedule.end_time}
                            </div>
                            <div class="modal__team-about">Описание: ${schedule.program.text}</div>
                            <div class="modal__team-experience">
                                Тренер: ${schedule.team.name} ${schedule.team.surname}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <#elseif schedule.day == "Воскресенье">
        <div class="modal fade" id="${schedule.nameForBootstrap}" tabindex="-1" role="dialog"
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
                            <img src="${schedule.program.img}" alt="" class="modal__team-img">
                        </div>
                        <div class="modal__team-content">
                            <div class="modal__team-name">
                                Название: ${schedule.program.name_program}
                            </div>
                            <div class="modal__team-surname">
                                Время занятия: ${schedule.start_time} - ${schedule.end_time}
                            </div>
                            <div class="modal__team-about">Описание: ${schedule.program.text}</div>
                            <div class="modal__team-experience">
                                Тренер: ${schedule.team.name} ${schedule.team.surname}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</#list>

<#--<#list schedules as schedule>-->
<#--    <#if schedule.day == "Пятница">-->
<#--       -->
<#--    </#if>-->
<#--</#list>-->


<div class="footer">
    <div class="footer_items">
        <a class="footer_items-item" href="#">Политика конфиденциальности</a>
        <a href="#">Обработка персональных данных</a>
    </div>
    <div class="footer_items">
        <a class="footer_items-item" id="feedback" href="#">Написать нам</a>
        <a href="#">Сообщить об ошибке</a>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    <#include "js/schedule.js">
</script>
<script>
    <#include "js/bootstrap.min.js">
</script>
</body>
</html>