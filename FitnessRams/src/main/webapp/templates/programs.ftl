<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Programs Ramzes</title>
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
<div class="body_prog">
    <div class="container">
        <div class="row row__helper">
            <div class="col 12">
                <div class="name_prog">
                    Программы тренировок
                </div>
                <div class="programs_row1 change">
                    <a class="text_prog1 active" href="#" data-filter="all">Все программы</a>
                    <a class="text_prog1" href="#" data-filter="personal">Персональный тренинг</a>
                    <a class="text_prog1" href="#" data-filter="strength">Силовой и функциональный тренинг</a>
                    <a class="text_prog1" href="#" data-filter="cardio">Кардиотренинг</a>
                </div>
                <div class="programs_row2 change">
                    <a class="text_prog2" href="#" data-filter="combat">Боевые искусства</a>
                    <a class="text_prog2" href="#" data-filter="aqua">Водные программы</a>
                    <a class="text_prog2" href="#" data-filter="dance">Танцевальные программы</a>
                    <a class="text_prog2" href="#" data-filter="children">Почемучки</a>
                    <img src="templates/assets/asset4.png" class="photo_sear_prog" alt="search">
                    <form autocomplete="off" class="search_prog" action="/FitnessRams_war/programs" method="post">
                        <div class="autocomplete">
                            <label>
                                <input type="search" name="search" id="search" placeholder="Поиск по сайту">
                            </label>
                        </div>
                        <input class="sub_prog" type="submit" name="find" id="find" value="Найти">
                    </form>
                </div>
            </div>
            <div class="come__help" style="display: ${display}">
                <a href="/FitnessRams_war/programs" class="come__back">Вернуться ко всем программам</a>
            </div>
            <div class="row">
                <div class="col 12">
                    <div class="cards_prog">
                        <div class="page">
                            <div class="pages_program">
                                <#assign x = 1>
                                <#list programs as program >
                                    <div data-num=${x} class="num" data-cat="${program.search_name}"
                                         id="${program.search_name}">
                                        <div class="card_prog">
                                            <div class="item_photo_prog">
                                                <img class="photo_prog" src="${program.img}" alt="photo">
                                            </div>
                                            <div class="text_item_prog1">
                                                ${program.name_program}
                                            </div>
                                            <div class="items_item_prog">
                                                <div class="item_item_prog">
                                                    ${program.time} минут
                                                </div>
                                                <div class="item_item_prog">
                                                    Уровень нагрузки: ${program.level}
                                                </div>
                                            </div>
                                            <div class="text_item_prog2">
                                                ${program.text}
                                            </div>
                                        </div>
                                        <#assign x+=1>
                                    </div>
                                </#list>

                            </div>
                            <div class="paginator" onclick="pagination(event)" style="display: ${paginator}"></div>

                        </div>
                        <div id="result" class="result">${err}</div>
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
    <#include "js/actchan.js">
</script>

<script>
    <#include "js/paginator.js">
</script>
<script>
    <#include "js/filter.js">
</script>
<script>
    <#include "js/autocomplete.js">
</script>
<script>
    <#include "js/search.js">
</script>
</body>
</html>