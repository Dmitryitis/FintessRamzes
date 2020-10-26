<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Application</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"
          rel="stylesheet"/>
    <style>
        <#include "css/style.css">
    </style>
</head>
<body>
<div class="body_app">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="items_app">
                    <form action="/FitnessRams_war/application" method="post">
                        <div class="form_app">
                            <span class="name_app">RAMZES</span>
                            <label for="email"><span
                                        class="item_app">Введите почту для продолжения оплаты:</span></label>

                            <input class="inp_log" type="email" placeholder="Введите почту" name="email" id="email"
                                   required>


                            <#if user == "">
                                <a href="/FitnessRams_war/login" style="color: red">${error_app}</a>
                            <#elseif user != "">
                                <a href="/FitnessRams_war/profile" style="color: white">${error_app}</a>
                            </#if>

                            <div class="items_btn_log">
                                <button class="btn_log2">Оплатить</button>
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