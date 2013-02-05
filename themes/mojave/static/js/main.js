$(document).ready(function() {

    // Scroll up
    $('#toplink').click(function(e){
       e.preventDefault();
       $('html, body').animate({scrollTop: '0px'}, 800);
    });


});
