$(document).ready(function() {
  champIconHover();
});

function champIconHover() {
  $('.champions').on('mouseenter', '.champ-icon', function(e) {
    e.preventDefault();
    $(this).parent().parent().find('.champ-info-box').show();
  });

  $('.champions').on('mouseleave', '.champ-icon', function(e) {
    e.preventDefault();
    $(this).parent().parent().find('.champ-info-box').hide();
  });
};
