var myZoom = 5;
var myMarkerIsDraggable = true;
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

google.maps.event.addListener(myMarker, 'dragend', function (evt) {    
    document.getElementById('hdLocation').value = evt.latLng.lat() + ',' + evt.latLng.lng();

    var latlng = new google.maps.LatLng(evt.latLng.lat(), evt.latLng.lng());
    var geocoder = new google.maps.Geocoder();
    geocoder.geocode({ 'latLng': latlng }, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            if (results[0]) {
                document.getElementById('iAddress').value = results[0].formatted_address;
            }
        }
    });
});

map.setCenter(myMarker.position);

myMarker.setMap(map);