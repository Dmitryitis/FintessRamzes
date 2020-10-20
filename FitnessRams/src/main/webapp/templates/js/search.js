$(function () {
    $("#find").on("click", function (event) {
        var search = $('#search').val();

        $.ajax({
            type: 'POST',
            url: "controller.ProgramsServlet",
            data: {
                search: search
            },
            success: function (result) {
               $(".result").text(result);
            }

        });
    });
})