<div class="header">
    <span class="name_home">RAMZES</span>
    <nav class="home_menu">
        <a class="item_home_menu" href="/FitnessRams_war/home">Главная</a>
        <a class="item_home_menu" href="/FitnessRams_war/about">О клубе</a>
        <a class="item_home_menu" href="/FitnessRams_war/programs">Программы</a>
        <a class="item_home_menu" href="/FitnessRams_war/team">Команда</a>

        <#if user != "">
            <form action="/FitnessRams_war/profile" method="get">
                <button class="item_home_menu help-profile" type="submit">Личный кабинет</button>
            </form>
            <form action="/FitnessRams_war/hello" method="post">
                <button class="item_home_menu" type="submit">Выйти</button>
            </form>
        <#else >
            <a class="item_home_menu" href="/FitnessRams_war/login">Войти</a>
        </#if>
        <#--                <a class="item_home_menu" href="/FitnessRams_war/profile">Личный кабинет</a>-->
        <a class="social" href="#"><i class="fa fa-facebook"></i></a>
        <a class="social" href="#"><i class="fa fa-instagram"></i></a>
        <a class="social" href="#"><i class="fa fa-vk"></i></a>
    </nav>
</div>