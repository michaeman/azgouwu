function initialize() {
  var mapOptions = {
    zoom: 8,
    center: new google.maps.LatLng(-34.397, 150.644)
  };

  var map = new google.maps.Map(document.getElementById('lecong-google-map'),
      mapOptions);
}

function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyC4V3F1ThKlVZd6-LbAB3TzXz9_7cBX_vg&callback=initialize';
  document.body.appendChild(script);
}

if ($('#lecong-google-map') != 0) {
  $(document).ready(function() {
    loadScript();
    $('#lecong-google-map').css('height', 8 * $('.container').height() + 'px');
    $('#lecong-google-map').css('width', $('.container').width() + 'px');
  });
}