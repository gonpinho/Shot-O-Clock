
var arr = ['resources/button.png', 'resources/button_clicked_final.png'];
var count = 0;

$(document).ready(function(){ 



    setInterval(function() {
        var str = getNextImg();
        $('#start-button').attr('src', str);
    }, 500);

});

function getNextImg() {

    count++;

    if (count === arr.length) {
        count = 0;
    }

    return arr[count];

}

