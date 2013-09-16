var map;

function LoadMap() 
{
    try 
    {
        var geocoder = new google.maps.Geocoder();
        var mapOptions = {
            center: new google.maps.LatLng(-8.640660, -53.146848),
            zoom: 3,
            mapTypeId: google.maps.MapTypeId.ROADMAP       
        };

        map = new google.maps.Map(document.getElementById('map_canvas'),
        mapOptions);

        var buyorrent = document.getElementById("hdBuyOrRent").value;      
             
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
        WebService.PropertyList(buyorrent, type, address, DefaultList);        
        WebService.AgentList(fAgentList);
        
        google.maps.event.addListener(map, 'zoom_changed', function () {            
            chkfilter();
        });
        google.maps.event.addListener(map, 'dragend', function () {            
            chkfilter();
        });     
    }
    catch (e) {
        alert('initialize():' + e);
    }
}