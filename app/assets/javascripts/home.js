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
    $(this).siblings('div').slideToggle(500);
    if ($(this).find('a').text() == "More Info") {
      $(this).find('a').text("Less");
    } else {
      $(this).find('a').text("More Info");
    }
  });


  // china_tour -> continue button 
  $(".china_tours .booking-form").hide();
  $(".china_tours #continue-btn").click (function() {
    $(".china_tours .choose-service").hide("slide", {direction: "left"}, 400);
    $(".china_tours .booking-form").show("slide", {direction: "right"}, 800);
    $(".china_tours .prog-tracker .step-1").removeClass("prog-focus");
    $(".china_tours .prog-tracker .step-2").removeClass("prog-todo").addClass("prog-focus prog-complete");
    $(".china_tours #customer_first_name").focus();
  });

  // go-back button
  $(".china_tours #go-back-button").click(function() {
    $(".china_tours .booking-form").hide("slide", {direction: "right"}, 400);
    $(".china_tours .choose-service").show("slide", {direction: "left"}, 800);
    $(".china_tours .prog-tracker .step-1").addClass("prog-focus");
    $(".china_tours .prog-tracker .step-2").addClass("prog-todo").removeClass("prog-focus prog-complete");
  })

  // form validation
  jQuery.validator.addMethod(
    "regex",
    function(value, element, regexp) {
        var re = new RegExp(regexp);
        return this.optional(element) || re.test(value);
    },
    "Please check your input."
  );
  $('form').validate();
  $('#customer_post_code').rules(
    'add', 
    {
      rangelength: [4,4],
      digits: true
    });
  $('#customer_phone').rules(
    'add', 
    {
      regex: /^\+?\d{5,15}$/
    });
});

