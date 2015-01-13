// all images in carosel are set to be of the same height
function setImageHeight() {
  var containerWidth = $('.manufacture .carousel').width();
  $('.manufacture img').css('height', 0.8 * containerWidth + 'px');
}

$(document).ready(function() {

  // the responsive images displayed at home page, store furniture (carosel)
  setImageHeight();
  $(window).resize( function() {
    setImageHeight();
  });  

  // show and hide info, china-tour -> how we can help
  $("p:has(a[class*='display-info'])").click (function(evt) {
    evt.preventDefault();
    $(this).siblings('div').slideToggle(300);
    if ($(this).find('a').text() == "More Info") {
      $(this).find('a').text("Less")
    } else {
      $(this).find('a').text("More Info")
    };
  });

});

