var map;

function initialize() 
{
    try 
    {
        geocoder = new google.maps.Geocoder();
        var mapOptions = {
            center: new google.maps.LatLng(-8.640660, -53.146848),
            zoom: 10,
            mapTypeId: google.maps.MapTypeId.ROADMAP       
        };

        map = new google.maps.Map(document.getElementById('map_canvas'),
        mapOptions);

        var type = document.getElementById("hdType").value;
        if (type == 'Escritório') {
            document.getElementById('Escritório').className = "selected";
            document.getElementById('Loja').className = "";            
        }
        else
        {
            document.getElementById('Loja').className = "selected";
            document.getElementById('Escritório').className = "";            
        }
        var address = document.getElementById("hdSearch").value;        
        geocoder.geocode({ 'address': address }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                var marker = new google.maps.Marker({
                    map: map,
                    position: results[0].geometry.location
                });
            }           
        });
        $('#preloader').show();
        WebService.PropertyList(type, address, DefaultList);
        WebService.AgentList(fAgentList);
        
        google.maps.event.addListener(map, 'zoom_changed', function () {            
            filter();
        });
        google.maps.event.addListener(map, 'dragend', function () {            
            filter();
        });
    }
    catch (e) {
        alert('initialize():' + e);
    }

    function filter()
    {
        try
        {            
            var inputs = document.getElementsByTagName('input');
            var cities = '';

            for (var i = 0; i < inputs.length; i++) {
                if (inputs[i].type == 'checkbox') {
                    if (inputs[i].checked) {
                        cities += inputs[i].value + ',';
                    }
                }
            }
            if (cities.length != 0) {
                cities = cities.substring(0, (cities.length - 1));
            }
            var type = document.getElementById("hdType").value;
            var address = document.getElementById("hdSearch").value;
            var startArea = document.getElementById("startArea").innerHTML;
            var startRate = document.getElementById("startRate").innerHTML;
            var endArea = document.getElementById("endArea").innerHTML;
            var endRate = document.getElementById("endRate").innerHTML;
            $('#preloader').show();
            WebService.PropertyListI(type, address, cities, startArea, startRate, endArea, endRate, BoundList);
        }
        catch (e)
        {
            alert('filter():' + e);
        }
    }
}