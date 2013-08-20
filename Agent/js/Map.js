var map;

function initialize() 
{
    try 
    {
        geocoder = new google.maps.Geocoder();
        var mapOptions = {
            center: new google.maps.LatLng(21.483501305054304, -158.20286750793457),
            zoom: 10,
            mapTypeId: google.maps.MapTypeId.ROADMAP       
        };

        map = new google.maps.Map(document.getElementById('map_canvas'),
        mapOptions);

        var address = document.getElementById("txtSearch").value;
        geocoder.geocode({ 'address': address }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                var marker = new google.maps.Marker({
                    map: map,
                    position: results[0].geometry.location
                });
            }           
        });
        WebService.PropertyList(address, DefaultList);
        WebService.AgentList(fAgentList);
        
        google.maps.event.addListener(map, 'zoom_changed', function () {
            var address = document.getElementById("txtSearch").value;
            var startArea = document.getElementById("startArea").innerHTML;
            var startRate = document.getElementById("startRate").innerHTML;
            var endArea = document.getElementById("endArea").innerHTML;
            var endRate = document.getElementById("endRate").innerHTML;
            WebService.PropertyListI(address, startArea, startRate, endArea, endRate, BoundList);
        });
        google.maps.event.addListener(map, 'dragend', function () {
            var address = document.getElementById("txtSearch").value;
            var startArea = document.getElementById("startArea").innerHTML;
            var startRate = document.getElementById("startRate").innerHTML;
            var endArea = document.getElementById("endArea").innerHTML;
            var endRate = document.getElementById("endRate").innerHTML;
            WebService.PropertyListI(address, startArea, startRate, endArea, endRate, BoundList);
        });
    }
    catch (e) {
        alert('initialize():' + e);
    }
}