<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"
          rel="stylesheet"/>
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
<div class="body_log">
    <div class="container">
        <div class="row">
            <div class="col 12">
                <div class="items_log">
                    <form action="/FitnessRams_war/registration" method="post">
                        <div class="form_log">
                            <span class="name_log">RAMZES
                            <br> Регистрация</span>
                            <div>${error}</div>
                            <label for="email"><span class="item_log">ЛОГИН</span></label>
                            <div class="form_field">
                                <input class="inp_log my_login" type="text" placeholder="Введите email" name="email" size="20"
                                       id="email" pattern="^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$">
                                <span class="form_error">Это поле должно содержать E-Mail в формате example@site.com</span>
                            </div>

                            <label for="password"><span class="item_log">ПАРОЛЬ</span></label>
                            <div class="form_field">
                                <input class="inp_log" type="password" placeholder="Введите пароль" name="password"
                                       id="password"

                                       onkeypress="CountPass('pass_id')" onfocus="CountPass('pass_id')"
                                       onkeyup="CountPass('pass_id')" required>
                                <div id="pass_correct"></div>
                                <span class="form_error">Это поле должно содержать хотя бы 3 символа</span>
                            </div>

                            <label for="password-repeat"><span class="item_log">ПОВТОРИТЬ ПАРОЛЬ</span></label>
                            <div class="form_field">
                                <input class="inp_log" type="password" placeholder="Повторите пароль"
                                       name="password-repeat"
                                       id="password-repeat" onkeypress="CountPass('pass_id')"
                                       onfocus="CountPass('pass_id')"
                                       onkeyup="CountPass('pass_id')" required>

                            </div>

                            <label for="username"><span class="item_log">Имя</span></label>
                            <div class="form_field">
                                <input class="inp_log" type="text" placeholder="Введите имя" name="username"
                                       id="username">
                            </div>

                            <label for="surname"><span class="item_log">Фамилия</span></label>
                            <div class="form_field">
                                <input class="inp_log" type="text" placeholder="Введите фамилию" name="surname"
                                       id="surname">

                            </div>

                            <label for="phone"><span class="item_log">Телефон</span></label>
                            <div class="form_field">
                                <input type="text" name="phone"
                                       id="phone" class="input-medium bfh-phone inp_log my_login" placeholder="Введите ваш номер телефона" required>
                            </div>

                            <div class="items_btn_log">

                                <button class="btn_log" type="submit">Создать аккаунт</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery.maskedinput@1.4.1/src/jquery.maskedinput.min.js" type="text/javascript"></script>
<script src="js/check.js"></script>
<script>
    $(function (){
       $('#phone').mask("+7 (999) 999-9999");
    });
</script>
</body>
</html>