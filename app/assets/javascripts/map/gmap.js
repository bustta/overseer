

function initialize() {
  var lat = $('#mapCanvas').data('lat');
  var lng = $('#mapCanvas').data('lng');
  // var lat = 25.081867;
  // var lng = 121.494957;
  console.log("Hi, lat: " + lat + ", lng: " + lng);

  var location = new google.maps.LatLng( lat, lng);

  var mapOptions = {
    center: location,
    zoom: 15
  };
  var map = new google.maps.Map(document.getElementById("mapCanvas"), mapOptions);

  var marker = new google.maps.Marker({
    position: location,
    map: map
  });

  var infowindow = new google.maps.InfoWindow({
    content: $('#mapCanvas').data('site')
  });
  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map, marker);
  });

};
function loadScript() {
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "http://maps.googleapis.com/maps/api/js?key=AIzaSyDvIvD9GBSA_DlRtj_uMHfV9YNKvLdSvVc&sensor=false&callback=initialize";
  document.body.appendChild(script);
};



