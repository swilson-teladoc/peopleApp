// adds functionality to the 'back' link

$(function() {
    document.getElementById("backLink").onclick = function() {
        window.history.back();
    }
});

