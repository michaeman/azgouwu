// function add

$(document).ready(function() {
  // show and hide info
  $("p:has(a[class*='display-info'])").click (function(evt) {
    evt.preventDefault();
    $(this).siblings('div').slideToggle(300);
    if ($(this).find('a').text() == "More Info") {
      $(this).find('a').text("Less")
    } else {
      $(this).find('a').text("More Info")
    };

  });

  // to help with Mobile browsers that have no event delegation for click functions
  $('p').addEventListener('click', function() {}, false );
});