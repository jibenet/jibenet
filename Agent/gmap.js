var myZoom = 8;
var myMarkerIsDraggable = true;
var myCoordsLength = 6;
var defaultLat = -8.640660;
var defaultLng = -53.146848;

var map = new google.maps.Map(document.getElementById('canvas'), {
	zoom: myZoom,
	center: new google.maps.LatLng(defaultLat, defaultLng),
	mapTypeId: google.maps.MapTypeId.ROADMAP
});

var myMarker = new google.maps.Marker({
	position: new google.maps.LatLng(defaultLat, defaultLng),
	draggable: myMarkerIsDraggable
});

google.maps.event.addListener(myMarker, 'dragend', function(evt){
    document.getElementById('location').value = evt.latLng.lat().toFixed(myCoordsLength) + ',' + evt.latLng.lng().toFixed(myCoordsLength);
});

map.setCenter(myMarker.position);

myMarker.setMap(map);