<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Purchase Ticket</title>
</head>
<body>
<div class="body_tick">
    <div class="container">
        <div class="row">
            <div class="col 12">
                <div class="head_tick">
                    RAMZES
                </div>
                <div class="name_tick">
                    Выбери свой абонемент
                </div>
                <div class="items_tick">
                    <#assign x = 1>
                    <#list abonements as abonement>
                        <div class="item_tick">
                            <div class="items_all_tick">
                                <div class="item-item_tick1">${abonement.name_abonement}</div>
                                <span class="item-item_tick2">тариф</span></div>
                            <div class="items_all_tick">
                                <#list abonement.t as text>
                                    <div class="text_tick">${text}</div>
                                </#list>
                            </div>
                            <div class="items-item_tick">
                                <div class="price_tick">${abonement.price}Р / мес.</div>
                                <div class="item_btn_tick">
                                    <form action="/FitnessRams_war/application" method="get">
                                        <#if x == 1>
                                            <button class="btn_low_tick" name="1" value="новичок" type="submit">Оставить заявку</button>
                                        <#elseif x==2>
                                            <button class="btn_middle_tick" type="submit"  value="профи" name="2">Оставить заявку</button>
                                        <#elseif x==3>
                                            <button class="btn_high_tick" type="submit" name="3" value="император">Оставить заявку</button>
                                        </#if>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <#assign x+=1>
                    </#list>
                </div>
                <div class="item_back_btn_tick">
                    <form action="/FitnessRams_war/home">
                        <button class="back_btn_tick">Вернуться в главное меню</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    <#include "css/style.css">
</style>
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;700&family=Russo+One&display=swap"
      rel="stylesheet">
</body>
</html>