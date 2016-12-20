$(document).ready(function() {
  champIconHover();
});

function champIconHover() {
  $('.champions').on('mouseenter', '.champ-inline', function(e) {
    e.preventDefault();
    var champName = $(this).find('.champ_name').text();

    $(this).find('.champ-info-box').show();
  });

  $('.champions').on('mouseleave', '.champ-inline', function(e) {
    e.preventDefault();
    $(this).find('.champ-info-box').hide();
  });
};
