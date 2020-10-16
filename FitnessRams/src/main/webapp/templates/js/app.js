$(function () {
    $(".slick-slider").slick({
        slidesToShow: 3,
        arrows: false,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
    });

    $("#slider-arrow--prev").on("click", function (event) {
        event.preventDefault();

        $(".slick-slider").slick('slickPrev')
    });

    $("#slider-arrow--next").on("click", function (event) {
        event.preventDefault();

        $(".slick-slider").slick('slickNext')
    });
});