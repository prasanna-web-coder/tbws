var locations = [
  ['<h3>Tuhur West</h3>3 Columbus circle 15th FL NY, NY 10019', 40.76717439905629, -73.98219153107996, 4]
  

];

var map = new google.maps.Map(document.getElementById('map'), {
  zoom: 18,
  /* Zoom level of your map */
  center: new google.maps.LatLng(40.76717439905629, -73.98219153107996),
  /* coordinates for the center of your map */
  mapTypeId: google.maps.MapTypeId.ROADMAP
});

var infowindow = new google.maps.InfoWindow();

var marker, i;

for (i = 0; i < locations.length; i++) {
  marker = new google.maps.Marker({
    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
    map: map
  });

  google.maps.event.addListener(marker, 'click', (function(marker, i) {
    return function() {
      infowindow.setContent(locations[i][0]);
      infowindow.open(map, marker);
    }
  })(marker, i));
}