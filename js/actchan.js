var $menu = $(".change"),
    $links = $menu.find("a");

$links.on("click", function() {
    $menu.children().removeClass("active");
    $(this).addClass("active");
});