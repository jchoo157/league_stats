$(document).ready(function() {
  window.addEventListener("scroll",function() { 
     if(window.scrollY > 100) {
        $('.arrow').fadeOut();
     }
     else {
        $('.arrow').fadeIn();
     }
  },false);
})