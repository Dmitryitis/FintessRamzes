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
        <div class="row">
            <div class="col 12">
                <div class="name_prog">
                    Программы тренировок
                </div>
                <div class="programs_row1 change">
                    <a class="text_prog1 active" href="#">Все программы</a>
                    <a class="text_prog1" href="#">Персональный тренинг</a>
                    <a class="text_prog1" href="#">Силовой и функциональный тренинг</a>
                    <a class="text_prog1" href="#">Кардиотренинг</a>
                </div>
                <div class="programs_row2 change">
                    <a class="text_prog2" href="#">Боевые искусства</a>
                    <a class="text_prog2" href="#">Водные программы</a>
                    <a class="text_prog2" href="#">Танцевальные программы</a>
                    <a class="text_prog2" href="#">Почемучки</a>
                    <img src="templates/assets/asset4.png" class="photo_sear_prog" alt="search">
                    <form autocomplete="off" class="search_prog" action="/search">
                        <div class="autocomplete">
                            <label>
                                <input type="search" name="search" id="search" placeholder="Поиск по сайту">
                            </label>
                        </div>
                        <input class="sub_prog" type="submit" name="find" value="Найти">
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col 12">
                    <div class="cards_prog">
                        <div class="page">
                            <div class="pages_program">
                                <div data-num=1 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program1.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            Upper body
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Любой
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Функциональный тренинг — уникальная тренировочная программа.
                                            Одно из самых энергоемких занятий, развивающих все основные двигательные
                                            качества
                                            человека. Навыки, полученные на этой тренировке, используются в повседневной
                                            деятельности и при занятиях спортом.
                                            Использование самого различного оборудования: нестабильных платформ и
                                            поверхностей,
                                            разнообразных свободных весов и амортизаторов позволяет сделать эту
                                            тренировку
                                            максимально эффективной.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=2 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program2.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            Тренер по бодибилдингу
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                60 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Любой
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Тяжелые физические тренировки связанные с большой силовой нагрузкой, такие
                                            как
                                            занятия
                                            по
                                            бодибилдингу, лучше выполнять под руководством профессионального тренера.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=3 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program3.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            Тренеровки с персональным тренером
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                60 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Любой
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Личный тренер подготовит для вас уникальную и наиболее эффективную
                                            персональную
                                            программу
                                            тренировок, даст советы по питанию и сделает занятия эффективными.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=4 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program4.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            LEGS&BUTTS
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Средний
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Программа Legs & Butts направлена на проработку традиционно проблемных
                                            участков
                                            женского тела — ягодиц и ног. Тренировки по этой программе позволяют
                                            повысить
                                            силу и
                                            выносливость мышц ног и ягодиц, делают ноги более стройными, подтягивают и
                                            укрепляют
                                            ягодицы, сжигают лишние калории, улучшают кардиовыносливость.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=5 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program4.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            LEGS&BUTTS
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Средний
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Программа Legs & Butts направлена на проработку традиционно проблемных
                                            участков
                                            женского тела — ягодиц и ног. Тренировки по этой программе позволяют
                                            повысить
                                            силу и
                                            выносливость мышц ног и ягодиц, делают ноги более стройными, подтягивают и
                                            укрепляют
                                            ягодицы, сжигают лишние калории, улучшают кардиовыносливость.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=6 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program5.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            POSTURAL
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Любой
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Тренировки по программе Postural способствуют хорошей осанке, укрепляют
                                            мышцы
                                            спины
                                            и брюшной пресс, способствуют снижению усталости в области спины.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=7 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program6.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            MAKE BODY
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Любой
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Программа Make Body позволяет одновременно прорабатывать все проблемные зоны
                                            тела,
                                            поскольку в ее основе лежит силовая аэробика.
                                            В течение часа вы вместе с тренером World Class сможете уделить внимание
                                            всем
                                            основным группам мышц и привести себя в тонус!
                                            Тренировки по этой программе укрепляют все основные группы мышц, сжигают
                                            лишние
                                            калории, способствуют снижению веса, заменяют тренировку в тренажерном зале,
                                            повышают общую силу и выносливость, улучшают кардиовыносливость.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=8 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program7.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            CORE
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Любой
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Силовая тренировка, способствует формированию мышечного корсета,
                                            удерживающего
                                            позвоночник. Укрепляет мышцы брюшного пресса, разгибатели позвоночника,
                                            ягодичные,
                                            косые и межреберные мышцы. Снижает усталость спины, способствует
                                            формированию
                                            осанки.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=9 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program8.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            ICG Color Cycle
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Средний
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            ICG Color Cycle – это:
                                            Эргономичные велотренажеры нового поколения с современным дизайном и высокой
                                            функциональностью
                                            Компьютер WattRate – самый точный на рынке прямой измеритель мощности, с
                                            которой
                                            вы
                                            крутите педали
                                            Система тренировок Coach By Color: в зависимости от показателей мощности и
                                            сердечного ритма для вас формируется оптимальная нагрузка в пяти цветовых
                                            зонах
                                            Развитие (эмодзи) силы, скорости, выносливости и минус (эмодзи) 500 ккал за
                                            занятие
                                            Невероятные эмоции: динамичная музыка, энергия от групповой работы и
                                            живописные
                                            виртуальные маршруты
                                            Запись результатов занятий и настройка тренажеров с приложением ICG Training
                                            Тренировка подходит для любого уровня подготовки.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=10 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program9.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            HIIT
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                30 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Средний
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Это интенсивная плиометрическая тренировка с быстрым результатом! Сочетание
                                            принципов плиометрической тренировки и тренировки мощности и выносливости
                                            мышц,
                                            с
                                            использованием степ платформы, позволит достичь стройного, атлетического
                                            телосложения за короткий срок.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=11 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program10.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            AEROBIC TO BEGIN
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                45 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Начальный
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Аэробика — это один из самых эффективных способов держать себя в тонусе.
                                            Тренировки
                                            по данной программе улучшают кардиовыносливость, способствуют снижению веса,
                                            улучшают координацию, сжигают лишние калории.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=12 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program11.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            AERO CHALLENGE
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Средний
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Программа Aerobic Challenge предназначена для любителей классической
                                            аэробики со
                                            сложными элементами танцевальной хореографии и помогает не только улучшить
                                            физическую форму, но и научиться прекрасно танцевать. Тренировки по данной
                                            программе
                                            улучшают кардиовыносливость, способствуют снижению веса, улучшают
                                            координацию,
                                            сжигают лишние калории.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=13 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program12.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            TAEKWON-DO
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Любой
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Таэквондо — направление единоборств, основное внимание в котором
                                            сосредоточено
                                            на
                                            руках и ногах. Обширная техника ударов ногами в сочетании с широким
                                            арсеналом
                                            ударов
                                            руками и подвижностью бойца во время поединка поможет вам развить ловкость,
                                            подвижность и силу, а также позволит улучшить общую физическую подготовку.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=14 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program13.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            BOXING
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Любой
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Бокс — один из самых популярных видов боевых искусств. Занятия боксом
                                            вырабатывают
                                            способность быстро принимать решения и максимально полно и рационально
                                            использовать
                                            окружающее пространство. Бокс тренирует скорость, выносливость и реакцию.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=15 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program14.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            MIX FIGHT
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Любой
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Mix Fight - занятия по смешанному единоборству, сочетающие в себе техники
                                            дзюдо,
                                            самбо, муай тай, кикбоксинга и бокса. Благодаря сочетанию борьбы и ударной
                                            техники
                                            основных видов единоборств Mix Fight является отличным средством
                                            самообороны,
                                            прекрасно развивает координацию и гибкость.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=16 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program15.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            MUAY THAI
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Любой
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            В современном муай тай можно наносить удары кулаками, ступнями, голенями,
                                            локтями и
                                            коленями — из-за этого муай тай называют «боем восьми конечностей»,
                                            спарринги ,
                                            работа на лапах и тяжелых снарядах способствуют развитию
                                            кардио-респераторной и
                                            мышечной систем организма.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=17 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program16.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            ORIENTATION CLASS
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Любой
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Инструктаж в бассейне. Программа для новых членов клуба позволит подробно
                                            ознакомиться с работой бассейна и сориентироваться в разнообразии водных
                                            классов.
                                            Также на занятии можно получить индивидуальную рекомендацию по
                                            направленности
                                            тренировочных занятий в бассейне.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=18 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program17.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            AQUA BEGINNERS
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                50 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Начальный
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Освоение водной среды с использованием основных движений, соединенных в
                                            простые
                                            хореографические комбинации. Нагрузка низкой интенсивности, рекомендуется
                                            для
                                            любого
                                            уровня подготовленности.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=19 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program18.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            WARM UP
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Средний
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Утренняя тренировка для любителей аквафитнеса. Вы получите заряд бодрости и
                                            хорошего
                                            настроения на целый день. Аэробная нагрузка средней интенсивности.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=20 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program19.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            AQUA SHAPE
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                50 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Средний
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Программа для тренировки основных мышечных групп: брюшного пресса, спины,
                                            ног,
                                            ягодиц и рук.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=21 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program20.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            DANCE MIX
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки: Интенсивный
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Танцевальная программа с хореографией в различных танцевальных стилях.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=22 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program21.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            FREESTYLE (R’N’B)
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Интенсивный
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Танцевальный класс с использованием элементов модных танцевальных
                                            направлений
                                            hip-hop и r’n’b.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=23 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program22.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            BODY BALLET
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Средний
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Танцевальная программа с элементами классической хореографии.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=24 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program23.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            ORIENTAL
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                55 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Средний
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Танец живота, объединяющий мощную жизнеутверждающую энергию телодвижений и
                                            магию
                                            ритма восточной музыки.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=25 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program24.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            Дискотека
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                30 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Любой
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Занятие по программе ДИСКОТЕКА для детей 3-5 лет. Танцуют все! Приглашаются
                                            ребята
                                            3-5 лет на веселую, зажигательную дискотеку.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=26 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program25.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            Заряжай-ка
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                30 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Средний
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Занятие по программе ЗАРЯЖАЙ-КА для детей 3-5 лет. Развитие двигательных
                                            качеств
                                            и
                                            основных видов движений. Сказочные путешествия, веселые игры, танцы и все
                                            самое
                                            интересное ждет ребят на этом уроке.
                                        </div>
                                    </div>
                                </div>
                                <div data-num=27 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program27.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            Игротека
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                30 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Любой
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Занятие по программе ИГРОТЕКА для детей 3-5 лет, включающий игровые
                                            упражнения,
                                            подвижные игры, элементы эстафет. Развивает координацию движений и внимание
                                            ребенка.
                                        </div>
                                    </div>

                                </div>
                                <div data-num=28 class="num">
                                    <div class="card_prog">
                                        <div class="item_photo_prog">
                                            <img class="photo_prog" src="templates/assets/program26.jpg" alt="photo">
                                        </div>
                                        <div class="text_item_prog1">
                                            Йога
                                        </div>
                                        <div class="items_item_prog">
                                            <div class="item_item_prog">
                                                30 минут
                                            </div>
                                            <div class="item_item_prog">
                                                Уровень нагрузки:Любой
                                            </div>
                                        </div>
                                        <div class="text_item_prog2">
                                            Занятие по программе ЙОГА для детей 3-5 лет. Оздоровительная гимнастика в
                                            сочетании с базовыми элементами йоги. Это радость открытия собственных
                                            возможностей, развитие гибкости и пластики ребенка.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="paginator" onclick="pagination(event)"></div>
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
    <#include "js/autocomplete.js">
</script>
</body>
</html>