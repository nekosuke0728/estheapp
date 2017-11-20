//= require jquery
//= require jquery.turbolinks
//= require rails-ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .
//= require_self 



// defalt
// rails-ujs → turbolinks → tree .

// https://github.com/kossnocorp/jquery.turbolinks
// jquery → jquery.turbolinks → jquery_ujs → turbolinks

// https://qiita.com/maggam/items/618f566eb8266e8c6c44
// jquery → jquery-ui → jquery_ujs → turbolinks → tree .

// https://github.com/twbs/bootstrap-sass
// jquery → bootstrap-sprockets

// https://qiita.com/shizuma/items/83cdadbe0a629f1f74d1
// jquery → bootstrap-sprockets


$(function(){
  $('.effect div, .effect i').css("opacity","0");
  $(window).scroll(function (){
    $(".effect").each(function(){
      var imgPos = $(this).offset().top;    
      var scroll = $(window).scrollTop();
      var windowHeight = $(window).height();
      if (scroll > imgPos - windowHeight + windowHeight/5){
        $("i, div",this).css("opacity","1" );
        $("i",this).css({ 
          "font-size": "100px",
          "padding": "0 20px 40px"
        });
      } else {
        $("i, div",this).css("opacity","0" );
        $("i",this).css({ 
          "font-size": "20px",
          "padding": "20px"
        });
      }
    });
  });
});