$(document).ready(function() {
    $("#comment").on("click", function() {
        $.ajax({
            url: "/dish_evaluations/" + $(this).val() + "/edit_comment",
            type: "GET",
            success: function(comment) {}
        });
    });
});
