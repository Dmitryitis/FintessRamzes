<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Fitness Club</title>
    <#--    <link rel="stylesheet" href="../css/style.css">-->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;700&family=Russo+One&display=swap"
          rel="stylesheet">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <style>
        <#include "css/style.css">
    </style>
</head>
<body>
<div class="body_ind">
    <div class="container">
        <div class="head_ind1">
            <span>Фитнес-клуб </span><span style="color: #FF7A00">RAMZES</span>
        </div>
        <div class="head_ind2">
            <span>Будь в форме вместе с нами</span>
        </div>
        <div class="text_ind1">
            <span>О нашем клубе</span>
        </div>

        <div class="items_ind">

            <div class="items_ind-item">
                <div class="photo_ind">
                    <img class="photo_ind-img" src="templates/assets/asset1.png" alt="photo1">
                </div>
                <div class="text_ind2">
                    <span>Многолетний </span><span style="color: #FF7A00">опыт</span>
                </div>
                <div class="text_ind3">
                    <span>Работаем в сфере фитнеса с 2008 года. Мы представляем возможность сделать свое тело идеальным</span>
                </div>
            </div>

            <div class="items_ind-item">
                <div class="photo_ind">
                    <img class="photo_ind-img" src="templates/assets/asset2.png" alt="photo1">
                </div>
                <div class="text_ind2">
                    <span>Высококвалифицированные </span><span style="color: #FF7A00">тренеры</span>
                </div>
                <div class="text_ind3">
                    <span>Наша команда - это залог успеха в достижении любых целей и мы знаем,как добиться максимального результата в каждом занятии.</span>
                </div>
            </div>

            <div class="items_ind-item">
                <div class="photo_ind">
                    <img class="photo_ind-img" src="templates/assets/asset3.png" alt="photo1">
                </div>
                <div class="text_ind2">
                    <span>Современное </span><span style="color: #FF7A00">оборудование</span>
                </div>
                <div class="text_ind3">
                    <span>Наш фитнес-клуб оснащен первоклассными тренажерами и оборудованием для занятий клиентов любого уровня подготовки</span>
                </div>
            </div>
        </div>
        <div class="item_ind-foot">
            <form action="/FitnessRams_war/login" method="get">
                <button class="btn_ind"><span class="enter_ind">Войти</span></button>
            </form>
            <form action="/FitnessRams_war/home" method="post">
                <span><button type="submit">Продолжить</button> без авторизации</span>
            </form>
        </div>
    </div>
</div>
</body>
</html>