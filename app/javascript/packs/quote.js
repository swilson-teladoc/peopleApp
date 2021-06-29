// when the quote button is clicked, fill in form text field with quote
document.getElementById("quoteButton").onclick = function() {getQuote()};

// makes a GET request to the quotes API and returns an object containing the quote of the day
function getQuote() {
    $.ajax({
        type : 'GET',
        url : 'https://quotes.rest/qod?language=en',
        dataType : 'json',
        success : function(data) {
            var item = document.getElementById("quote");
            item.innerHTML = data.contents.quotes[0].quote;
        },
        error : function(request){
            console.log(JSON.stringify("Error: " + request));
        }
    });
}
