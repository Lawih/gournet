$(document).ready(function() {
    var copyButton = document.querySelector('.js-copybutton');

    if (copyButton != null) {
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
    }
});

function shareURL() {
    document.getElementById("share").style.display = "block";
}
