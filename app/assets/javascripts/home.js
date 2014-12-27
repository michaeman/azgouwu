// all images in carosel are set to be of the same height
function setImageHeight() {
  var containerWidth = $('.manufacture .carousel').width();
  $('.manufacture img').css('height', 0.8 * containerWidth + 'px');
}

$(document).ready(function() {
  setImageHeight();
  $(window).resize( function() {
    setImageHeight();
  });  
})