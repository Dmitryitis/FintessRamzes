<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Personal Account</title>
    <style>
        <#include "css/bootstrap/bootstrap-grid.min.css">
    </style>
    <style>
        <#include "css/bootstrap/bootstrap.min.css">
    </style>
    <style>
        <#include "css/style.css">
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;700&family=Russo+One&display=swap"
          rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"
          rel="stylesheet"/>
</head>
<body>
<#include "header.ftl">
<div class="body_prof">
    <div class="container">
        <div class="row">
            <div class="col 12">
                <form enctype="multipart/form-data" method="post" action="/FitnessRams_war/profile" class="items_prof">
                    <div class="photo_prof">
                        <input type="file" class="photo_item_prof" name="img">
                    </div>
                    <div class="container_personal_items_prof">
                        <div class="personal_items_prof">
                            <div class="item_prof">
                                <span>ИМЯ</span>


                                    <label>
                                        <input class="inp_prof" type="text" name="username">
                                    </label>

                                <div class="item-item_prof">
                                    <span>ФАМИЛИЯ</span>
                                    <label>
                                        <input class="inp_prof" type="text" name="surname">
                                    </label>
                                </div>
                            </div>
                            <div class="item_prof">
                                <span>ПОЧТА</span>
                                <label>
                                    <input class="inp_prof" type="text" name="email" pattern="^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$">
                                    <span class="form_error">Это поле должно содержать E-Mail в формате example@site.com</span>
                                </label>

                                <div class="item-item_prof">
                                    <span>Phone</span>
                                    <label>
                                        <input class="inp_prof" id="phone" type="text" name="phone">
                                    </label>
                                </div>
                                <div class="btn_save_prof item-item_prof">
                                    <button class="btn_item_prof" type="submit">Сохранить</button>
                                    <div class="error_email" style="color: red">${error_email}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<#include "footer.ftl">

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