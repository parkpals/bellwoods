// This example creates a simple polygon representing the Bermuda Triangle.
// When the user clicks on the polygon an info window opens, showing
// information about the polygon's coordinates.

(function(){
  
  var map;
  // var infoWindow;

  function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
      zoom: 16,
      center: {lat: 43.647852, lng: -79.414219},
      mapTypeId: 'terrain'
    });

    // Define the LatLng coordinates for the polygon.
    var geofenceCoords = [
      {lat: 43.649849, lng: -79.418321},
      {lat: 43.650074, lng: -79.417209},
      {lat: 43.650088, lng: -79.417095},
      {lat: 43.650318, lng: -79.415974},
      {lat: 43.650154, lng: -79.415897},
      {lat: 43.650043, lng: -79.41586},
      {lat: 43.64988, lng: -79.415794},
      {lat: 43.649801, lng: -79.415735},
      {lat: 43.650139, lng: -79.413911},
      {lat: 43.649912, lng: -79.413827},
      {lat: 43.649967, lng: -79.413541},
      {lat: 43.650026, lng: -79.413261},
      {lat: 43.65004, lng: -79.413195},
      {lat: 43.64567, lng: -79.411446},
      {lat: 43.645109, lng: -79.414183},
      {lat: 43.645537, lng: -79.414391},
      {lat: 43.645345, lng: -79.415215},
      {lat: 43.647288, lng: -79.415982},
      {lat: 43.647389, lng: -79.415507},
      {lat: 43.648967, lng: -79.416147},
      {lat: 43.649005, lng: -79.416239},
      {lat: 43.64901, lng: -79.416293},
      {lat: 43.648944, lng: -79.416647},
      {lat: 43.649025, lng: -79.416683},
      {lat: 43.649123, lng: -79.417055},
      {lat: 43.649143, lng: -79.417167},
      {lat: 43.648994, lng: -79.417893},
      {lat: 43.649482, lng: -79.418095},
      {lat: 43.649536, lng: -79.418178}
    ];

    // Construct the polygon.
    var trinityBellwoods = new google.maps.Polygon({
      paths: geofenceCoords,
      strokeColor: '#FF0000',
      strokeOpacity: 0.8,
      strokeWeight: 3,
      fillColor: '#FF0000',
      fillOpacity: 0.35
    });
    trinityBellwoods.setMap(map);

    // Add a listener for the click event.
    // trinityBellwoods.addListener('click', showArrays);

    // infoWindow = new google.maps.InfoWindow;
  }

  /** @this {google.maps.Polygon} */
  // function showArrays(event) {
  //   // Since this polygon has only one path, we can call getPath() to return the
  //   // MVCArray of LatLngs.
  //   var vertices = this.getPath();

  //   var contentString = '<b>Bermuda Triangle polygon</b><br>' +
  //       'Clicked location: <br>' + event.latLng.lat() + ',' + event.latLng.lng() +
  //       '<br>';

  //   // Iterate over the vertices.
  //   for (var i =0; i < vertices.getLength(); i++) {
  //     var xy = vertices.getAt(i);
  //     contentString += '<br>' + 'Coordinate ' + i + ':<br>' + xy.lat() + ',' +
  //         xy.lng();
  //   }

  //   // Replace the info window's content and position.
  //   infoWindow.setContent(contentString);
  //   infoWindow.setPosition(event.latLng);

  //   infoWindow.open(map);
  // }


}());
