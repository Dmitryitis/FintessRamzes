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
                <div class="items_app" id="items_app">
                    <#--                    <form action="/FitnessRams_war/application" method="post">-->
                    <div class="form_app">
                        <span class="name_app">RAMZES</span>
                        <label for="email"><span
                                    class="item_app">Введите почту для продолжения оплаты:</span></label>

                        <input class="inp_log" type="email" placeholder="Введите почту" name="email" id="email"
                               required>

                        <div class="error__app" id="error__app">

                        </div>

                        <#--                        <#if user == "">-->
                        <#--                            <a href="/FitnessRams_war/login" style="color: red">${error_app}</a>-->
                        <#--                        <#elseif user != "">-->
                        <#--                            <a href="/FitnessRams_war/profile" style="color: white">${error_app}</a>-->
                        <#--                        </#if>-->

                        <div class="items_btn_log">
                            <button id="btn__log2" type="button" class="btn_log2">Оплатить</button>
                        </div>
                    </div>
                    <#--                    </form>-->
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(function () {
        $('#btn__log2').on("click", function () {
            var email = $("#email").val();
            console.log(1);
            console.log(email);

            $.ajax({
                url: '/FitnessRams_war/application',
                type: "POST",
                data: {
                    'email': email,
                },
                success: function (result) {
                    var error__app = $("#error__app");
                    if (result !== "") {
                        if (result === "У вас уже есть абонемент посмотрите в личном кабинете") {
                            error__app.empty();
                            error__app.append("<a href='/FitnessRams_war/profile' style='color: white'>" + result + "</a>");
                        } else if (result === "Неправильный email, посмотрите в личном кабинете") {
                            console.log(result);
                            error__app.empty();
                            error__app.append("<a href='/FitnessRams_war/profile' style='color: white'>" + result + "</a>");

                        } else if (result === "Войдите в систему") {
                            error__app.empty();
                            error__app.append("<a href='/FitnessRams_war/login' style='color: white'>" + result + "</a>");
                        } else if (result === "Ваша заявка отправлена. Зайдите в личный кабиенет") {
                            error__app.empty();
                            error__app.append("<a href='/FitnessRams_war/profile' style='color: white'>" + result + "</a>");
                        }
                    } else {
                        error__app.empty();
                        error__app.append("");
                    }
                }
            });
        });
    });
</script>
</body>
</html>