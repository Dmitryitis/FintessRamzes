<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Our Team</title>
    <style>
        <#include "css/bootstrap/bootstrap-grid.min.css">
    </style>
    <style>
        <#include "css/bootstrap/bootstrap.min.css">
    </style>
    <style>
        <#include "css/style.css">
    </style>
    <script src="https://kit.fontawesome.com/fb732f956d.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;700&family=Russo+One&display=swap"
          rel="stylesheet">
</head>
<body>
<#include "header.ftl">
<div class="body_team">
    <div class="container">
        <div class="row">
            <div class="col 12">
                <div class="name_team">
                    Наша команда
                </div>
                <div class="slick-slider">
                    <#list teams as team>
                        <div class="item_team">
                            <a href="#" class="photo" data-toggle="modal" data-target="#${team.team_id}">
                                <img class="photo_coach_team" src="${team.img}" alt="photo">
                            </a>
                            <button type="button" class="name_coach_team" data-toggle="modal" data-target="#${team.team_id}">${team.name} ${team.surname}
                            </button>
                            <div class="achiev_coach_team">${team.about}
                            </div>
                        </div>
                    </#list>

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
        <a class="footer_items-item" id="feedback" href="#">Написать нам</a>
        <a href="#">Сообщить об ошибке</a>
    </div>
    <div class="footer_items">
        <span class="footer_items-item">Где мы находимся:</span>
        <span>г. Казань, ул. Кремлевская д.35</span>
    </div>
</div>
<#list teams as team>
    <div class="modal fade" id="${team.team_id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        <img src="${team.img}" alt="" class="modal__team-img">
                    </div>
                    <div class="modal__team-content">
                        <div class="modal__team-name">
                            Имя: ${team.name}
                        </div>
                        <div class="modal__team-surname">
                            Фамилия: ${team.surname}
                        </div>
                        <div class="modal__team-about">Достижения: ${team.about}</div>
                        <div class="modal__team-experience">Опыт работы: ${team.exp} лет</div>
                        <div class="modal__team-con">Телефон: ${team.phone}</div>
                        <div class="modal__team-ico">
                            <a href="#" target="_blank" class="modal__team-item"><i class="fa fa-whatsapp whats"
                                                                                    aria-hidden="true"></i></a>
                            <a href="#" target="_blank" class="modal__team-item"><i class="fa fa-vk vk"
                                                                                    aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</#list>



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