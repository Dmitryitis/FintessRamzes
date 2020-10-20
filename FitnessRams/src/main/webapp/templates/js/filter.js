var div_num = document.querySelectorAll(".num");
var count = div_num.length

counting(count, 4);

var main_page = document.getElementById("page1");
main_page.classList.add("paginator_active");

function pagination(event) {
    var cnt = 4;
    var e = event || window.event;
    var target = e.target;
    var id = target.id;

    if (target.tagName.toLowerCase() !== "span") return;

    var num_ = id.substr(4);
    var data_page = +target.dataset.page;
    main_page.classList.remove("paginator_active");
    main_page = document.getElementById(id);
    main_page.classList.add("paginator_active");

    var j = 0;
    for (var i = 0; i < div_num.length; i++) {
        var data_num = div_num[i].dataset.num;
        if (data_num <= data_page || data_num >= data_page)
            div_num[i].style.display = "none";

    }
    for (var i = data_page; i < div_num.length; i++) {
        if (j >= cnt) break;
        div_num[i].style.display = "block";
        j++;
    }
}

function counting(count, cnt) {
    var cnt_page = Math.ceil(count / cnt);
    var paginator = document.querySelector(".paginator");
    var page = "";
    for (var i = 0; i < cnt_page; i++) {
        page += "<span data-page=" + i * cnt + "  id=\"page" + (i + 1) + "\">" + (i + 1) + "</span>";
    }
    paginator.innerHTML = page;

    for (var i = 0; i < div_num.length; i++) {
        if (i < cnt) {
            div_num[i].style.display = "block";
        } else {
            div_num[i].style.display = "none";
        }
    }
}


$(function () {
    let filter = $("[data-filter]");
    var count = 28;
    var cnt = 4;
    var div_num = document.querySelectorAll(".num");

    filter.on("click", function (event) {
        event.preventDefault();
        count = 0

        let cat = $(this).data('filter');


        if (cat === 'all') {
            count = 28;
            // var paginato = $(".paginator");
            // paginato.css('display', "flex");
            // $("[data-cat]").css('display', 'block');
            counting(count, cnt);
            var main_page = document.getElementById("page1");
            main_page.classList.add("paginator_active");
            pagination();

        } else {
            // var paginator = $(".paginator");
            // paginator.css('display', "none");
            $("[data-cat]").each(function () {
                let workcat = $(this).data('cat');

                if (workcat !== cat) {
                    $(this).css('display', 'none');
                } else {
                    count += 1;
                    $(this).css('display', 'block');
                }

            });

            console.log($(this).val());

            div_num = document.querySelectorAll("#"+$(this).toString());

        }
    });

});


