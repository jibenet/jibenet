<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListProperty.aspx.cs" Inherits="Agent_ListProperty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Clipas</title>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-44051693-1', 'clipas.com.br');
        ga('send', 'pageview');

    </script>
    <link rel="icon" type="image/png" href="http://clipas.com.br/agent/images/favicon.ico" />
    <link rel="stylesheet" href="http://clipas.com.br/agent/style/default.css" type="text/css" />
    <link rel="stylesheet" href="http://clipas.com.br/agent/style/defaultASP.css" type="text/css" />
    <link rel="stylesheet" href="http://clipas.com.br/agent/style/tabcontent.css" type="text/css" />
    <link rel="stylesheet" href="http://clipas.com.br/agent/jqtransformplugin/jqtransform.css" type="text/css" media="all" />
    <link rel="stylesheet" href="http://clipas.com.br/agent/style/flat-ui.css" type="text/css" />
    <link rel="stylesheet" href="http://clipas.com.br/agent/style/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="http://clipas.com.br/agent/jquery-ui.css" />
    <script src="<% =UrlUtil.MyWebUrl %>js/tabcontent.js" type="text/javascript"></script>
    <script src="<% =UrlUtil.MyWebUrl %>js/jquery-1.8.3.min.js"></script>
    <script src="<% =UrlUtil.MyWebUrl %>js/tabcontent.js" type="text/javascript"></script>
    <script src="<% =UrlUtil.MyWebUrl %>js/bootstrap.min.js"></script>
    <script src="<% =UrlUtil.MyWebUrl %>js/bootstrap-select.js"></script>
    <script src="<% =UrlUtil.MyWebUrl %>js/application.js"></script>
    <script type="text/javascript" src="<% =UrlUtil.MyWebUrl %>jqtransformplugin/jquery.js"></script>
    <script type="text/javascript" src="<% =UrlUtil.MyWebUrl %>jqtransformplugin/jquery.jqtransform.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="<% =UrlUtil.MyWebUrl %>js/Map.js"></script>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places" type="text/javascript"></script>

    <script type="javascript">
	    $(function () {
	        $('#form').jqTransform({ imgPath: 'jqtransformplugin/img/' });
	    });
    </script>
    <%--GOOGLE API--%>
    <script type="text/javascript">
        google.maps.event.addDomListener(window, 'load', Initialize);
        function Initialize() {
            var options = {
                types: ['(cities)'],
                componentRestrictions: { country: "BR" }
            };

            var inputE = document.getElementById('eSearch');
            var inputL = document.getElementById('lSearch');
            var autocompleteE = new google.maps.places.Autocomplete(inputE, options);
            var autocompleteL = new google.maps.places.Autocomplete(inputL, options);

            $("#jumpMenu span.filter-option").html($('#hdBuyOrRent').val());
            $("#Select1 span.filter-option").html($('#hdBuyOrRent').val());

            if ($('#hdType').val() == 'Escritório') {
                document.getElementById('Escritório').className = "selected";
                document.getElementById('Loja').className = "";
            }
            else {
                document.getElementById('Loja').className = "selected";
                document.getElementById('Escritório').className = "";
            }

            $('#eSearch').val($('#hdSearch').val());
            $('#lSearch').val($('#hdSearch').val());
        }

    </script>
    <style>
        .pac-container:after {
            content: none !important;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $("#btnEclick").click(function () {
                if ($('#eSearch').val() == '') {
                    var url = '<% =UrlUtil.MyWebRootUrl %>' + $('#jumpMenu :selected').val() + '/Brasil/São_Paulo/Escritório_Comercial';
                }
                else {
                    var url = '<% =UrlUtil.MyWebRootUrl %>' + $('#jumpMenu :selected').val() + '/Brasil/' + $('#eSearch').val() + '/Escritório_Comercial';
                }
                $(location).attr('href', url.replace(' ', '_'));
            })
       });
        $(function () {
            $("#btnLclick").click(function () {
                if ($('#lSearch').val() == '') {
                    var url = '<% =UrlUtil.MyWebRootUrl %>' + $('#Select1 :selected').val() + '/Brasil/São_Paulo/Loja_Comercial';
                }
                else {
                    var url = '<% =UrlUtil.MyWebRootUrl %>' + $('#Select1 :selected').val() + '/Brasil/' + $('#lSearch').val() + '/Loja_Comercial';
                }
                $(location).attr('href', url.replace(' ', '_'));
            })
        });
    </script>
    <script type="text/javascript">
        var markersArray = [];
    </script>
    <script type="text/javascript">
        function DefaultList(list) {
            try {
                if (list != null) {
                    var oJSON = eval("(" + list + ")");
                    var oHTMLTABLE = document.createElement("table");
                    oHTMLTABLE.border = 0;
                    oHTMLTABLE.width = "100%";
                    markersArray = new Array(oJSON.Head.length);
                    for (var i = 0; i < oJSON.Head.length; i++) {
                        var oTR = oHTMLTABLE.insertRow(i);
                        var oTD0 = oTR.insertCell(0);
                        var myLatLng = new google.maps.LatLng(oJSON.Head[i].latitude, oJSON.Head[i].longitude);
                        map.setCenter(myLatLng);

                        var marker = new google.maps.Marker({
                            map: map,
                            position: myLatLng
                        });
                        marker.setMap(map);
                        if (oJSON.Head[i].size <= 1) {
                            oJSON.Head[i].size = 'N/A';
                        }
                        if (oJSON.Head[i].rate <= 100) {
                            oJSON.Head[i].rate = 'N/A';
                        }
                        if (oJSON.Head[i].image == '') {
                            oJSON.Head[i].image = '<% =UrlUtil.MyWebUrl %>images/365x240.jpg';
                        }
                        oTD0.innerHTML = '<div style="width: 100%; float: left; padding-bottom: 20px;">' +
                                            '<a href="' + $(location).attr('href') + '/' + oJSON.Head[i].propertyID + '"><img id="ibtnProperty" src="' + oJSON.Head[i].image + '" alt="' + oJSON.Head[i].name + '" Width="365px" Height="240px" border="0" Style="border: 3px solid #fff; float: left;" /></a>' +
                                                '<div style="width: 40%;" class="proptxt"><a href="' + $(location).attr('href') + '/' + oJSON.Head[i].propertyID + '"><h2>' + oJSON.Head[i].name +
                                                    '<h2></a><h5>' + oJSON.Head[i].address + '</h5></br><h4><span class="listagens-text-left">' + oJSON.Head[i].size + ' m<sup>2</sup></span> <span class="listagens-text-right">R&#36; ' + oJSON.Head[i].rate + '</span></h4>' +
                                                           '<p class="listagens-text">' +
                                                                oJSON.Head[i].description +
                                                '</p></div>' +
                                            '</div>';
                        while (document.getElementById('divPropertyList').hasChildNodes()) {
                            document.getElementById('divPropertyList').removeChild(document.getElementById('divPropertyList').lastChild);
                        }
                        document.getElementById('totalRecords').innerHTML = 0 + ' registros encontrados';
                    }
                    document.getElementById('totalRecords').innerHTML = oJSON.Head.length + ' registros encontrados';
                    document.getElementById('divPropertyList').appendChild(oHTMLTABLE);
                    $('#preloader').hide();
                }
                else {
                    document.getElementById('totalRecords').innerHTML = 0 + ' registros encontrados';
                    $('#preloader').hide();
                }
            }
            catch (e) {
                //alert('DefaultList():' + e);
            }
        }
        function BoundList(list) {
            try {
                if (list != null) {
                    var oJSON = eval("(" + list + ")");
                    var oHTMLTABLE = document.createElement("table");
                    oHTMLTABLE.border = 0;
                    oHTMLTABLE.width = "100%";
                    var j = 0;
                    markersArray = new Array(oJSON.Head.length);
                    for (var i = 0; i < oJSON.Head.length; i++) {
                        var oTR = oHTMLTABLE.insertRow(i);
                        var oTD0 = oTR.insertCell(0);
                        var myLatLng = new google.maps.LatLng(oJSON.Head[i].latitude, oJSON.Head[i].longitude);

                        if (map.getBounds().contains(myLatLng)) {
                            //code for showing your object, associated with markers[i]
                            var marker = new google.maps.Marker({
                                map: map,
                                position: myLatLng
                            });
                            marker.setMap(map);
                            if (oJSON.Head[i].size == 1) {
                                oJSON.Head[i].size = 'N/A';
                            }
                            if (oJSON.Head[i].rate <= 100) {
                                oJSON.Head[i].rate = 'N/A';
                            }
                            if (oJSON.Head[i].image == '') {
                                oJSON.Head[i].image = '<% =UrlUtil.MyWebUrl %>images/365x240.jpg';
                            }
                            oTD0.innerHTML = '<div style="width: 100%; float: left; padding-bottom: 20px;">' +
                                                '<a href="' + $(location).attr('href') + '/' + oJSON.Head[i].propertyID + '"><img id="ibtnProperty" src="' + oJSON.Head[i].image + '" alt="' + oJSON.Head[i].name + '" Width="320px" Height="240px" border="0" Style="border: 3px solid #fff; float: left;" /></a>' +
                                                '<div style="width: 40%;" class="proptxt"><a href="' + $(location).attr('href') + '/' + oJSON.Head[i].propertyID + '"><h2>' + oJSON.Head[i].name +
                                                    '<h2></a><h5>' + oJSON.Head[i].address + '</h5></br><h4><span class="listagens-text-left">' + oJSON.Head[i].size + ' m<sup>2</sup></span> <span class="listagens-text-right">R&#36; ' + oJSON.Head[i].rate + '</span></h4>' +
                                                        '<p class="listagens-text">' +
                                                                oJSON.Head[i].description +
                                                '</p></div>' +
                                                '</div>';
                            j += 1;
                        }
                        else {

                        }
                        while (document.getElementById('divPropertyList').hasChildNodes()) {
                            document.getElementById('divPropertyList').removeChild(document.getElementById('divPropertyList').lastChild);
                        }
                    }
                    document.getElementById('totalRecords').innerHTML = j + ' registros encontrados';
                    document.getElementById('divPropertyList').appendChild(oHTMLTABLE);
                    $('#preloader').hide();
                }
                else {
                    while (document.getElementById('divPropertyList').hasChildNodes()) {
                        document.getElementById('divPropertyList').removeChild(document.getElementById('divPropertyList').lastChild);
                    }
                    document.getElementById('totalRecords').innerHTML = 0 + ' registros encontrados';
                    $('#preloader').hide();
                }
            }
            catch (e) {
                //alert('BoundList():' + e);
            }
        }
    </script>

    <script type="text/javascript">
        function fAgentList(list) {
            try {
                if (list != null) {
                    var oJSON = eval("(" + list + ")");
                    var oHTMLTABLE = document.createElement("table");
                    oHTMLTABLE.border = 0;
                    oHTMLTABLE.width = "100%";
                    for (var i = 0; i < oJSON.Head.length; i++) {
                        var oTR = oHTMLTABLE.insertRow(i);
                        var oTD0 = oTR.insertCell(0);
                        oTD0.innerHTML = '<div style="width: 100%; float: left; padding: 12px 0px">' +
                                            '<img src="<% =UrlUtil.MyWebUrl %>images/person.jpg" width="69" height="74" alt="No image" style="float: left; padding-right: 6px;"/>' +
                                            oJSON.Head[i].name + '</br></br>' +
                                            oJSON.Head[i].business + '</br>' +
                                            oJSON.Head[i].phone + '</br>' +
                                            oJSON.Head[i].email + '</div>';
                        while (document.getElementById('divAgentList').hasChildNodes()) {
                            document.getElementById('divAgentList').removeChild(document.getElementById('divAgentList').lastChild);
                        }
                    }
                    document.getElementById('divAgentList').appendChild(oHTMLTABLE);
                }
                WebService.AgentList(fAgentListI);
            }
            catch (e) {
                //alert('fAgentList():' + e);
            }
        }

        function fAgentListI(list) {
            try {
                if (list != null) {
                    var oJSON = eval("(" + list + ")");
                    var oHTMLTABLE = document.createElement("table");
                    oHTMLTABLE.border = 0;
                    oHTMLTABLE.width = "100%";
                    for (var i = 0; i < oJSON.Head.length; i++) {
                        var oTR = oHTMLTABLE.insertRow(i);
                        var oTD0 = oTR.insertCell(0);
                        oTD0.innerHTML = '<div style="width: 100%; float: left; padding: 12px 0px; border-bottom: 1px solid #ccc;">' +
                                            oJSON.Head[i].name + '</br>' +
                                            oJSON.Head[i].business + '</br>' +
                                            oJSON.Head[i].phone + '</br>' +
                                            oJSON.Head[i].email + '</div>';
                        while (document.getElementById('divAgentListI').hasChildNodes()) {
                            document.getElementById('divAgentListI').removeChild(document.getElementById('divAgentListI').lastChild);
                        }
                    }
                    document.getElementById('divAgentListI').appendChild(oHTMLTABLE);
                }
            }
            catch (e) {
                //alert('fAgentListI():' + e);
            }
        }
    </script>

    <%--SLIDER--%>
    <style>
        #area-range {
            width: 92%;
        }

        #rate-range {
            width: 92%;
        }
    </style>
    <style>
        #preloader {
            display: none;
        }
    </style>
    <script>
        function chkfilter() {
            try {
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
                var buyorrent = document.getElementById("hdBuyOrRent").value;
                var type = document.getElementById("hdType").value;
                var address = document.getElementById("hdSearch").value;
                var startArea = document.getElementById("startArea").innerHTML;
                var startRate = document.getElementById("startRate").innerHTML;
                var endArea = document.getElementById("endArea").innerHTML;
                var endRate = document.getElementById("endRate").innerHTML;
                $('#preloader').show();
                WebService.PropertyListI(buyorrent, type, address, cities, startArea, startRate, endArea, endRate, BoundList);
            }
            catch (e) {
                //alert('filter():' + e);
            }
        }
    </script>
</head>
<body class="innerpage" onload="LoadMap();">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ToolkitScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="../WebService.asmx" />
            </Services>
        </asp:ScriptManager>
        <!-- Header Starts -->
        <header>
            <div id="header">
                <div class="header">
                    <div class="logo">
                        <a href="<% =UrlUtil.MyWebRootUrl %>Home">
                            <img src="<% =UrlUtil.MyWebUrl %>images/jibenet.png" width="175" height="64"></a>
                    </div>
                    <div class="header-middle">
                        <div>
                            <ul class="tabs" persist="true">
                                <li id="Escritório" onclick="$('#hdType').val('Escritório');"><a class="new_active" href="#" rel="view1">Escritório</a></li>
                                <li id="Loja" onclick="$('#hdType').val('Loja');"><a class="new_active" href="#" rel="view2">Loja</a></li>
                            </ul>
                            <div class="tabcontents">
                                <div id="view1" class="tabcontent">
                                    <div>
                                        <input id="hdSearch" type="hidden" runat="server" />
                                        <input id="hdType" type="hidden" runat="server" />
                                        <input id="hdBuyOrRent" type="hidden" runat="server" />
                                        <div style="width: 392px; float: left; background-image: url('<% =UrlUtil.MyWebUrl %>images/searchbg-inner.png'); background-repeat: no-repeat; height: 26px; padding: 4px;">
                                            <input id="btnEclick" type="button" value="" class="searchbtn-inner"><input id="eSearch" name="search" type="text" placeholder="Bairro" style="padding: 0px; width: 88%; margin-top: 2px; border: 0px; background: none;" />
                                        </div>

                                        <div class="ddmenu-inner" style="width: 112px; float: left; margin-left: 4px;">
                                            <div class="row demo-row">
                                                <div class="span2" style="width: 128px; min-height: 60px !important;">
                                                    <select id="jumpMenu" name="herolist" class="select-block span3" style="min-height: 75px;" onchange="document.getElementById('hdBuyOrRent').value = this.value;">
                                                        <option value="À Venda">À Venda</option>
                                                        <option value="Para Alugar">Para Alugar</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="view2" class="tabcontent">
                                    <div>
                                        <div style="width: 392px; float: left; background-image: url('<% =UrlUtil.MyWebUrl %>images/searchbg-inner.png'); background-repeat: no-repeat; height: 26px; padding: 4px;">
                                            <input id="btnLclick" type="button" value="" class="searchbtn-inner"><input id="lSearch" name="search" type="text" placeholder="Bairro" style="padding: 0px; width: 88%; margin-top: 2px; border: 0px; background: none;" />
                                        </div>

                                        <div class="ddmenu-inner" style="width: 112px; float: left; margin-left: 4px;">
                                            <div class="row demo-row">
                                                <div class="span2" style="width: 128px; min-height: 60px !important;">
                                                    <select id="Select1" name="herolist" class="select-block span3" style="min-height: 75px;" onchange="document.getElementById('hdBuyOrRent').value = this.value;">
                                                        <option value="À Venda">À Venda</option>
                                                        <option value="Para Alugar">Para Alugar</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="right">
                        <div class="list">
                            <select name="select" id="select">
                                <option value="Login">Login</option>
                                <option value="Cadastre-se">Cadastre-se</option>
                            </select>
                        </div>
                        <span>
                            <select name="select" id="select2">
                                <option value="Ajudar">Ajudar</option>

                            </select>
                        </span>
                        <div class="green-tab">
                            <p><a href="<% =UrlUtil.MyWebRootUrl %>PostProperty">Anuncie seu Imóvel</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header Ends -->



        <!-- Section Starts -->
        <section>
            <div id="txtcontainer">
                <div>


                    <!-- Left Div -->
                    <div style="float: left; width: 20%;" id="leftdiv">
                        <div id="map_canvas" style="width: 100%; height: 200px;">
                        </div>
                        <br />

                        <h3>Área - <span style="font-size: 14px">m<sup>2</sup></span></h3>

                        <div style="padding-left: 15px;">
                            <div id="area-range"></div>
                            <span id="startArea">0</span><span id="endArea" style="float: right; padding-right: 15px;">5000</span>
                        </div>
                        <h3>Taxa - <span style="font-size: 14px">R$</span></h3>
                        <div style="padding-left: 15px;">
                            <div id="rate-range"></div>
                            <span id="startRate">0</span><span id="endRate" style="float: right; padding-right: 15px;">5000000</span>
                        </div>
                        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
                        <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
                        <script>
                            $(function () {
                                $("#area-range").slider({
                                    range: true,
                                    min: 0,
                                    max: 5000,
                                    values: [0, 5000],
                                    slide: function (event, ui) {
                                        $("#startArea").text(ui.values[0]);
                                        $("#endArea").text(ui.values[1]);
                                    },
                                    stop: slideStop
                                });

                                function slideStop(event, ui) {
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
                                    var buyorrent = document.getElementById("hdBuyOrRent").value;
                                    var type = document.getElementById("hdType").value;
                                    var address = document.getElementById("hdSearch").value;
                                    var startArea = document.getElementById("startArea").innerHTML;
                                    var startRate = document.getElementById("startRate").innerHTML;
                                    var endArea = document.getElementById("endArea").innerHTML;
                                    var endRate = document.getElementById("endRate").innerHTML;
                                    $('#preloader').show();
                                    WebService.PropertyListI(buyorrent, type, address, cities, startArea, startRate, endArea, endRate, BoundList);
                                }
                            });
                        </script>
                        <script>
                            $(function () {
                                $("#rate-range").slider({
                                    range: true,
                                    min: 0,
                                    max: 5000000,
                                    values: [0, 5000000],
                                    slide: function (event, ui) {
                                        $("#startRate").text(ui.values[0]);
                                        $("#endRate").text(ui.values[1]);
                                    },
                                    stop: slideStop
                                });

                                function slideStop(event, ui) {
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
                                    var buyorrent = document.getElementById("hdBuyOrRent").value;
                                    var type = document.getElementById("hdType").value;
                                    var address = document.getElementById("hdSearch").value;
                                    var startArea = document.getElementById("startArea").innerHTML;
                                    var startRate = document.getElementById("startRate").innerHTML;
                                    var endArea = document.getElementById("endArea").innerHTML;
                                    var endRate = document.getElementById("endRate").innerHTML;
                                    $('#preloader').show();
                                    WebService.PropertyListI(buyorrent, type, address, cities, startArea, startRate, endArea, endRate, BoundList);
                                }
                            });
                        </script>


                        <h3>Cidade / Bairro</h3>

                        <div style="width: 90%; padding: 0px 10px;">
                            <div>
                                <input id="chk1" name="" type="checkbox" value="Bairro Sombra" onchange="chkfilter();">
                                <label style="padding-left: 10px;">Bairro Sombra</label><br>
                                <input id="chk2" name="" type="checkbox" value="São Paulo" onchange="chkfilter();">
                                <label style="padding-left: 10px;">São Paulo</label><br>
                                <input id="chk3" name="" type="checkbox" value="Bairro dos Telles" onchange="chkfilter();">
                                <label style="padding-left: 10px;">Bairro dos Telles</label><br>
                                <input name="" type="checkbox" value="Manaus-Amazonas" onchange="chkfilter();">
                                <label id="chk4" style="padding-left: 10px;">Manaus-Amazonas</label><br>
                            </div>
                        </div>

                    </div>

                    <!-- Rigth Div -->
                    <div style="float: right; width: 20%;" id="rightdiv">
                        <div class="grybox" style="display: none;">
                            <h2>Agentes no Bairro</h2>
                            <div id="divAgentList">
                            </div>


                        </div>

                        <div class="grybox">
                            <h2>Agentes no Bairro</h2>
                            <div id="divAgentListI">
                            </div>

                        </div>

                    </div>

                    <!-- Mid Text -->
                    <div style="float: left; width: 58%; margin-left: 1%; background-color: #efefef;">

                        <div style="width: 90%; float: left; padding: 10px 20px;">
                            <h3 class="list_heading">
                                <span id="totalRecords"></span>
                            </h3>
                        </div>
                        <div id="preloader" style="display: none;">
                            <div style="float: left; margin: 30px 0px 0px 50%;">
                                <img src="<% =UrlUtil.MyWebUrl %>images/ajax-loader.gif" alt="Loading..." title="">
                            </div>
                        </div>
                        <div id="divPropertyList" style="width: 100%; float: left; height: 550px; overflow: scroll;">
                        </div>

                    </div>
                </div>

            </div>
        </section>

        <!-- Section Ends -->


        <!-- Footer Starts -->
        <footer>
            <div id="footerbg">&nbsp;</div>
            <div id="footer">
                <div>

                    <div class="right">
                        <a href="#">
                            <img src="<% =UrlUtil.MyWebUrl %>images/fb.png" alt="Facebook"></a> <a href="#">
                                <img src="<% =UrlUtil.MyWebUrl %>images/twitt.png" width="30" height="30" alt="Twitter"></a>
                    </div>
                    <a href="#">Sobre</a> |  <a href="#">FAQ</a> |  <a href="#">Imprensa</a> |  <a href="#">Blog</a> |  <a href="#">Mobile</a> |  <a href="#">Contato.</a><br>
                    © Clipas 2013 Termos de Uso


                </div>
            </div>
        </footer>
        <!-- Footer Ends -->

    </form>
</body>
</html>
