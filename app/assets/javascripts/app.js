$(document).ready(function() {
    $("#comment").on("click", function() {
        $.ajax({
            url: "/dish_evaluations/" + $(this).val() + "/edit_comment",
            type: "GET",
            success: function(comment) {}
        });
    });

    var copyButton = document.querySelector('.js-copybutton');

    copyButton.addEventListener('click', function(event) {
        var text = document.querySelector('.js-copyurl');
        text.select();

        try {
            var successful = document.execCommand('copy');
            var msg = successful ? 'successful' : 'unsuccessful';
            console.log('Copying text command was ' + msg);
        } catch (err) {
            console.log('Oops, unable to copy');
        }
        copyButton.innerHTML = "¡Copiado!";
    });
});
