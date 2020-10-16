<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"
          rel="stylesheet"/>
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
                    <form action="/FitnessRams_war/profile">
                        <div class="form_log">
                            <span class="name_log">RAMZES</span>
                            <label for="login"><span class="item_log">ЛОГИН</span></label>
                            <div class="form_field">
                                <input class="inp_log" type="text" placeholder="Введите логин" name="login" id="login"
                                       pattern="^[a-z0-9_-]{3,}"
                                       required>
                                <span class="form_error">Это поле должно содержать минимум 3 символа</span>
                            </div>
                            <label for="psw"><span class="item_log">ПАРОЛЬ</span></label>
                            <div class="form_field">
                                <input class="inp_log" type="password" placeholder="Введите пароль" name="psw" id="psw"

                                       onkeypress="CountPass('pass_id')" onfocus="CountPass('pass_id')"
                                       onkeyup="CountPass('pass_id')" required>
                                <div id="pass_correct"></div>
                                <span class="form_error">Это поле должно содержать E-Mail в формате example@site.com</span>
                            </div>
                            <label for="psw-repeat"><span class="item_log">ПОВТОРИТЬ ПАРОЛЬ</span></label>
                            <div class="form_field">
                                <input class="inp_log" type="password" placeholder="Повторите пароль" name="psw-repeat"
                                       id="psw-repeat" onkeypress="CountPass('pass_id')" onfocus="CountPass('pass_id')"
                                       onkeyup="CountPass('pass_id')" required>

                                <span class="form_error">Это поле должно содержать E-Mail в формате example@site.com</span>
                            </div>
                            <div>
                                <label>
                                    <input type="checkbox" name="remember_me"> Запомнить меня
                                </label>
                            </div>
                            <div class="items_btn_log">
                                <form action="/FitnessRams_war/profile">
                                    <button class="btn_log">Создать аккаунт</button>
                                </form>
                                <form action="/FitnessRams_war/login">
                                    <button class="btn_log">Есть аккаунт</button>
                                </form>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/check.js"></script>
</body>
</html>