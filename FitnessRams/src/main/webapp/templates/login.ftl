<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
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
                <div class="items_log2">
                    <form action="/FitnessRams_war/profile">
                        <div class="form_log2">
                            <span class="name_log">RAMZES</span>
                            <label for="login"><span class="item_log">ЛОГИН</span></label>
                            <div class="form_field">
                                <input class="inp_log" type="text" placeholder="Введите логин" name="login" id="login"
                                      >
                            </div>
                            <label for="psw"><span class="item_log">ПАРОЛЬ</span></label>
                            <div class="form_field">
                                <input class="inp_log" type="password" placeholder="Введите пароль" name="psw" id="psw"
                                       >
                            </div>
                            <div>
                                <label>
                                    <input type="checkbox" name="remember_me"> Запомнить меня
                                </label>
                            </div>
                            <div class="items_btn_log2">
                                <button class="btn_log2">Войти</button>
                                <button class="btn_log2">Назад</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>