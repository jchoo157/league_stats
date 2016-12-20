$(document).ready(function() {
  $(window).scroll(function() {
    if ($('.parallax').scrollTop() > 100) {
      $('.arrow').fadeIn();
    } else {
      $('.arrow').fadeOut();
    }
  }); 

  $(window).scroll(function() {
    if ($('.parallax').scrollTop() < 100) {
      $('.arrow').fadeIn();
    } else {
      $('.arrow').fadeOut();
    }
  });
})