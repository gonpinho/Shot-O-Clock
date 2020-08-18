
var barCount = 0;
var factCount = 0;
var barInfos;
var factsInfo;
var recipesArr;
var width = $(window).width() - 127;
var height = $(window).height() - 111;
var fontFamily;

$(document).ready(function(){ 


    $.ajax({
        url: 'http://localhost:8080/oneshot/api/party', 
        async: true,
        success: initSpotifyAndGetContent,
        error: errorFetch
    });

    $('#right-arrow').click(function() {
        incrementBarInfo();
    })

    $('#left-arrow').click(function() {
        decrementBarInfo();
    })

    $('#pimpUpTheParty').click(function() {
        getSpecialParty();
    })

    setInterval(function () {
        $('#fun-facts').find('p').text(getNextFact())
     }, 7000);

   
     $('#test-button').mouseover(run);
     $('#test-button').mousemove(run);


     $(".modal-fullscreen").on('show.bs.modal', function () {
        setTimeout( function() {
          $(".modal-backdrop").addClass("modal-backdrop-fullscreen");
        },0);
      });
      $(".modal-fullscreen").on('hidden.bs.modal', function () {
        $(".modal-backdrop").addClass("modal-backdrop-fullscreen");
      });
      
      setTimeout(function() {
          $('#fsModal').modal('show');
      }, 10000);
     

})

function getSpecialParty() {

    $('#cocktail-prep').empty();

    $.ajax({
        url: 'http://localhost:8080/oneshot/api/party/3', 
        async: true,
        success: initSpotifyAndGetContent,
        error: errorFetch
    });

   

}

function run() {
    var top = Math.random() * height;
    var left = Math.random() * width;
    $('#test-button').css('top', top + 'px').css('left', left + 'px').css('position', 'absolute');
}

function getNextFact() {

    factCount++;

    if (factCount === factsInfo.length) {
        factCount = 0;
    }

    return factsInfo[factCount].factStr;
}

function incrementBarInfo() {

    barCount++;

    if (barCount >= barInfos.length) {
        barCount = 0;
    }

    $('#coktail-name').text(barInfos[barCount].name);
    $('#cocktail-img').attr('src', `./resources/${barInfos[barCount].imgURL}`)

    var cocktailList = $('#cocktail-prep').empty();
    recipesArr = barInfos[barCount].recipe.split('|');

    for (i = 0; i < recipesArr.length; i++) {
        $('<li></li>').text(`${recipesArr[i]}`).appendTo(cocktailList);   
    }

}

function decrementBarInfo() {

    barCount--;
    
    if (barCount < 0) {
        barCount = barInfos.length-1;
    }

    $('#coktail-name').text(barInfos[barCount].name);
    $('#cocktail-img').attr('src', `./resources/${barInfos[barCount].imgURL}`)

    var cocktailList = $('#cocktail-prep').empty();
    recipesArr = barInfos[barCount].recipe.split('|');

    for (i = 0; i < recipesArr.length; i++) {
        $('<li></li>').text(`${recipesArr[i]}`).appendTo(cocktailList);   
    }
    

}



function initSpotifyAndGetContent(response) {

    fontFamily = response.fontFamily;
    
    $('#spotify-player').attr('src', `https://open.spotify.com/embed/playlist/${response.playlistURL}`);

    // $('#party-title').text(response.partyName.toUpperCase()); 
    $('#logo').attr('src', `./resources/${response.partyName}`);
    $('#party-description').text(response.description).css('font-family', response.fontFamily).css('color', 'white');
    $('body').css('background-image', 'url(./resources/' + response.background +')').css('background-size', 'auto').css('background-position', 'center');

    
   // $("head").append(`<link href='https://fonts.googleapis.com/css2?family=${response.googleFontURL}' "rel='stylesheet' type='text/css'>`);
    $('h1').css('font-family', response.fontFamily).css('color', 'white');
    $('h2').css('font-family', response.fontFamily).css('color', 'white');
    $('#cocktail-prep').css('font-family', response.fontFamily).css('color', 'white');
    
    $('button').css('font-family', response.fontFamily);
    $('#left-arrow').attr('src', `./resources/${response.arrow}-l.png`);
    $('#right-arrow').attr('src', `./resources/${response.arrow}-r.png`);

    $('#frame-1').css('background-image', 'url(./resources/' + response.theme +'.png)');
    $('#frame-2').css('background-image', 'url(./resources/' + response.theme +'-2.png)');
    $('.line').attr('src', './resources/' + response.line + '.png');

    $.ajax({
        url: `http://localhost:8080/oneshot/api/party/cocktails/${response.id}`, 
        async: true,
        success: populateCocktailDiv,
        error: errorFetch
    });

    $.ajax({
        url: `http://localhost:8080/oneshot/api/party/facts/${response.id}`, 
        async: true,
        success: populateFactsDiv,
        error: errorFetch
    });

    if (response.id === 2) {
        $('#party-description').css('font-size', '14px');
        $('#cocktail-prep').css('font-size', '14px');
        $('#fun-facts').css('font-size', '14px');
        $('#coktail-name').css('font-size', '26px');
    }


}

function errorFetch() {
    console.log("error");
}

function populateCocktailDiv(response) {

    barInfos = response;
    barCount = 0;
    


    $('#coktail-name').text(barInfos[barCount].name);

    var cocktailList = $('#cocktail-prep');
    recipesArr = barInfos[barCount].recipe.split('|');

    console.log(recipesArr);
  
    
    for (i = 0; i < recipesArr.length; i++) {
        $('<li></li>').text(`${recipesArr[i]}`).appendTo(cocktailList);   
    }
    

   $('#cocktail-img').attr('src', `./resources/${barInfos[barCount].imgURL}`).addClass('imgCocktail');

  // $('#cocktail-img').attr('src', `/resources/test.png`).addClass('imgCocktail');

}

function populateFactsDiv(response) {

    factsInfo = response;
    var div = $('#fun-facts');
    $('#fun-facts').empty();
    $('<p></p>').text(factsInfo[factCount].factStr).addClass('text-box').css('font-family', fontFamily).appendTo(div).css('color', 'white');

}


