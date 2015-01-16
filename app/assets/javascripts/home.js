// all images in carosel are set to be of the same height
function setImageHeight() {
  var containerWidth = $('.manufacture .carousel').width();
  $('.manufacture img').css('height', 0.8 * containerWidth + 'px');
}

// set the size of the button displayed on the home page
function setButtonSize() {
  // alert('ha');
  if ($(window).width() < 768) {
    $('.button-link').removeClass('btn-lg btn-sm btn-xs');
  } else if ($(window).width() > 992) {
    $('.button-link').removeClass('btn-lg btn-sm btn-xs').addClass('btn-lg');
  }
}

$(document).ready(function() {

  // the responsive images displayed at home page, store furniture (carosel)
  setImageHeight();
  $(window).resize( function() {
    setImageHeight();
    // setButtonSize();
  });  

  // show and hide info, china-tour -> how we can help
  $("p:has(a[class*='display-info'])").click (function(evt) {
    evt.preventDefault();
    $(this).siblings('div').slideToggle(300);
    if ($(this).find('a').text() == "More Info") {
      $(this).find('a').text("Less");
    } else {
      $(this).find('a').text("More Info");
    }
  });

});

