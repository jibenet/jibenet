<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListProperty.aspx.cs" Inherits="Agent_ListProperty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Clipas</title>
    <link href="style/default.css" rel="stylesheet" type="text/css" />
    <script src="js/tabcontent.js" type="text/javascript"></script>
    <link href="style/tabcontent.css" rel="stylesheet" type="text/css" />
    <%--GOOGLE API--%>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places,geometry" type="text/javascript"></script>
    <script type="text/javascript">
        function initialize() {
            var input = document.getElementById('txtSearch');
            var autocomplete = new google.maps.places.Autocomplete(input);
        }
        google.maps.event.addDomListener(window, 'load', initialize);

        var options = {
            types: ['geocode'] //this should work !
        };
        var autocomplete = new google.maps.places.Autocomplete(input, options);

        function initialize() {

            var options = {
                types: ['(cities)'],
                componentRestrictions: { country: "BR" }
            };

            var input = document.getElementById('txtSearch');
            var autocomplete = new google.maps.places.Autocomplete(input, options);
        }
    </script>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="JS/Map.js"></script>
    <script type="text/javascript" src="JS/Marker.js"></script>
    <script type="text/javascript">

        var markersArray = [];

    </script>
    <script type="text/javascript">
        function DefaultList(list)
        {
            try
            {
                if (list != null)
                {
                    var oJSON = eval("(" + list + ")");
                    var oHTMLTABLE = document.createElement("table");
                    oHTMLTABLE.border = 0;
                    oHTMLTABLE.width = "100%";
                    document.getElementById('totalRecords').innerHTML = oJSON.Head.length;
                    markersArray = new Array(oJSON.Head.length);
                    for (var i = 0; i < oJSON.Head.length; i++)
                    {
                        var oTR = oHTMLTABLE.insertRow(i);
                        var oTD0 = oTR.insertCell(0);
                        var myLatLng = new google.maps.LatLng(oJSON.Head[i].latitude, oJSON.Head[i].longitude);
                        map.setCenter(myLatLng);

                        var marker = new google.maps.Marker({
                            map: map,
                            position: myLatLng
                        });
                        marker.setMap(map);
                        oTD0.innerHTML = '<div style="width: 100%; float: left; padding-bottom: 20px;">' +
                                            '<img id="ibtnProperty" src="uploads/' + oJSON.Head[i].image + '" alt="' + oJSON.Head[i].name + '" Width="365px" Height="240px" border="0" Style="border: 3px solid #fff; float: left;" />' +
                                                '<div style="width: 40%;" class="proptxt">' +
                                                    '<h2>' + oJSON.Head[i].address + '</h2></br><h4>' + oJSON.Head[i].size + ' m<sup>2</sup>&nbsp;&#36;R: ' + oJSON.Head[i].rate + '</h4>' +
                                                        '</br>' +
                                                                oJSON.Head[i].description +
                                                '</div>' +
                                            '</div>';
                        while (document.getElementById('divPropertyList').hasChildNodes())
                        {
                            document.getElementById('divPropertyList').removeChild(document.getElementById('divPropertyList').lastChild);
                        }
                    }
                    document.getElementById('divPropertyList').appendChild(oHTMLTABLE);
                }
            }
            catch (e)
            {
                alert('DefaultList():' + e);
            }
        }
        function BoundList(list) {
            try {
                if (list != null) {
                    var oJSON = eval("(" + list + ")");
                    var oHTMLTABLE = document.createElement("table");
                    oHTMLTABLE.border = 0;
                    oHTMLTABLE.width = "100%";
                    document.getElementById('totalRecords').innerHTML = oJSON.Head.length;
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
                            oTD0.innerHTML = '<div style="width: 100%; float: left; padding-bottom: 20px;">' +
                                                '<img id="ibtnProperty" src="uploads/' + oJSON.Head[i].image + '" alt="' + oJSON.Head[i].name + '" Width="320px" Height="240px" border="0" Style="border: 3px solid #fff; float: left;" /> <div style="width: 40%;" class="proptxt">' +
                                                    '<h2>' + oJSON.Head[i].address + '</h2></br><h4>' + oJSON.Head[i].size + ' m<sup>2</sup>&nbsp;&#36;R: ' + oJSON.Head[i].rate + ' &#36;' + '</h4>' +
                                                        '</br>' +
                                                                oJSON.Head[i].description +
                                                '</div>' +
                                                '</div>';
                        }
                        else {

                        }
                        while (document.getElementById('divPropertyList').hasChildNodes()) {
                            document.getElementById('divPropertyList').removeChild(document.getElementById('divPropertyList').lastChild);
                        }
                    }
                    document.getElementById('divPropertyList').appendChild(oHTMLTABLE);
                }
                else {
                    while (document.getElementById('divPropertyList').hasChildNodes()) {
                        document.getElementById('divPropertyList').removeChild(document.getElementById('divPropertyList').lastChild);
                    }
                }
            }
            catch (e) {
                alert('BoundList():' + e);
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
                                            '<img src="images/person.jpg" width="69" height="74" alt="No image" style="float: left; padding-right: 6px;"/>' +
                                            oJSON.Head[i].name + '</br></br>' +
                                            oJSON.Head[i].business + '</br>' +
                                            'T: ' + oJSON.Head[i].phone + '</div>';
                        while (document.getElementById('divAgentList').hasChildNodes()) {
                            document.getElementById('divAgentList').removeChild(document.getElementById('divAgentList').lastChild);
                        }
                    }
                    document.getElementById('divAgentList').appendChild(oHTMLTABLE);
                }
                WebService.AgentList(fAgentListI);
            }
            catch (e) {
                alert('fAgentList():' + e);
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
                                            'T: ' + oJSON.Head[i].phone + '</div>';
                        while (document.getElementById('divAgentListI').hasChildNodes()) {
                            document.getElementById('divAgentListI').removeChild(document.getElementById('divAgentListI').lastChild);
                        }
                    }
                    document.getElementById('divAgentListI').appendChild(oHTMLTABLE);
                }
            }
            catch (e) {
                alert('fAgentListI():' + e);
            }
        }
    </script>

    <%--SLIDER--%>
    <link rel="stylesheet" type="text/css" href="jquery-ui.css" />
    <style>
        #area-range
        {
            width: 200px;
        }

        #rate-range
        {
            width: 200px;
        }
    </style>


</head>
<body class="innerpage" onload="initialize()">
    <form id="Form1" runat="server" method="post">
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
                        <a href="../Default.aspx">
                            <img src="images/jibenet.png" width="175" height="64"></a>
                    </div>
                    <div class="header-middle">
                        <div>
                            <ul class="tabs" persist="true">
                                <li><a href="#" rel="view1">Escritoria</a></li>
                                <li><a href="#" rel="view2">Loja</a></li>
                            </ul>
                            <div class="tabcontents">
                                <div id="view1" class="tabcontent">

                                    <div style="width: 392px; float: left; background-image: url(images/searchbg-inner.png); background-repeat: no-repeat; height: 26px; padding: 4px;">
                                        <asp:Button ID="btnSearch" runat="server" Text="" CssClass="searchbtn-inner" OnClick="btnSearch_Click" />
                                        <asp:TextBox ID="txtSearch" runat="server" Style="padding: 2px 4px; width: 88%; margin-top: 2px; border: 0px; background: none;"></asp:TextBox>

                                    </div>

                                    <div class="ddmenu-inner" style="width: 88px; float: left; margin-left: 4px;">
                                        <select name="jumpMenu" id="jumpMenu" onchange="MM_jumpMenu('parent',this,0)">
                                            <option>Alugar</option>
                                            <option>Option 1</option>
                                            <option>Option 1</option>
                                        </select>
                                    </div>
                                </div>
                                <div id="view2" class="tabcontent">
                                    <input id="Text1" type="text" />
                                    <div style="width: 392px; float: left; background-image: url(images/searchbg-inner.png); background-repeat: no-repeat; height: 26px; padding: 4px;">
                                        <input name="search" type="button" value="" class="searchbtn-inner"><input name="search" type="text" placeholder="Digite Um Bairro" style="padding: 2px 4px; width: 88%; margin-top: 2px; border: 0px; background: none;">
                                    </div>

                                    <div class="ddmenu-inner" style="width: 88px; float: left; margin-left: 4px;">
                                        <select name="jumpMenu" id="Select1" onchange="MM_jumpMenu('parent',this,0)">
                                            <option>Alugar</option>
                                            <option>Option 1</option>
                                            <option>Option 1</option>
                                        </select>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="right">
                        <span>
                            <select name="select" id="select">
                                <option value="Entre">Entre</option>

                            </select>
                        </span>
                        <span>
                            <select name="select" id="select2">
                                <option value="Entre">Ajudar</option>

                            </select>
                        </span>
                        <div class="green-tab">
                            <p><a href="ListProperty.aspx">Listar Sua Properiedade</a></p>
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

                        <h3>área</h3>

                        <div style="padding-left: 20px;">
                            <div id="area-range"></div>
                            <span id="startArea">0</span>m<sup>2</sup><span id="endArea" style="padding-left: 60%">50000</span>m<sup>2</sup>
                        </div>
                        <h3>taxa</h3>
                        <div style="padding-left: 20px;">
                            <div id="rate-range"></div>
                            <span id="startRate">0</span>$<span id="endRate" style="padding-left: 70%">100000</span>$       
                        </div>
                        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
                        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
                        <script type="text/javascript">
                            $("#area-range").slider({
                                range: true,
                                min: 0,
                                max: 50000,
                                values: [0, 50000],
                                slide: slideArea,
                                stop: slideStop
                            });
                            function slideArea(event, ui) {
                                var val0 = $("#area-range").slider("values", 0),
                                    val1 = $("#area-range").slider("values", 1),
                                    startArea = val0;
                                endArea = val1;
                                $("#startArea").text(startArea);
                                $("#endArea").text(endArea);
                            }
                            function slideStop(event, ui) {
                                var address = document.getElementById("txtSearch").value;
                                var startArea = document.getElementById("startArea").innerHTML;
                                var startRate = document.getElementById("startRate").innerHTML;
                                var endArea = document.getElementById("endArea").innerHTML;
                                var endRate = document.getElementById("endRate").innerHTML;
                                WebService.PropertyListI(address, startArea, startRate, endArea, endRate, BoundList);
                            }
                            slideArea();
                        </script>
                        <script type="text/javascript">
                            $("#rate-range").slider({
                                range: true,
                                min: 0,
                                max: 100000,
                                values: [0, 100000],
                                slide: slideRate,
                                stop: slideStop
                            });
                            function slideRate(event, ui) {
                                var val0 = $("#rate-range").slider("values", 0),
                                    val1 = $("#rate-range").slider("values", 1),
                                    startRate = val0;
                                endRate = val1;
                                $("#startRate").text(startRate);
                                $("#endRate").text(endRate);
                            }
                            function slideStop(event, ui) {
                                var address = document.getElementById("txtSearch").value;
                                var startArea = document.getElementById("startArea").innerHTML;
                                var startRate = document.getElementById("startRate").innerHTML;
                                var endArea = document.getElementById("endArea").innerHTML;
                                var endRate = document.getElementById("endRate").innerHTML;
                                WebService.PropertyListI(address, startArea, startRate, endArea, endRate, BoundList);
                            }
                            slideRate();
                        </script>

                        <h3>Filtrar por cidade</h3>

                        <div style="width: 90%; padding: 0px 10px;">
                            <form action="" method="get">
                                <input name="" type="checkbox" value="">
                                <label style="padding-left: 10px;">Bairro Sombra</label><br>
                                <input name="" type="checkbox" value="">
                                <label style="padding-left: 10px;">São Paulo</label><br>
                                <input name="" type="checkbox" value="">
                                <label style="padding-left: 10px;">Bairro dos Telles</label><br>
                                <input name="" type="checkbox" value="">
                                <label style="padding-left: 10px;">Manaus - Amazonas</label><br>
                            </form>
                        </div>

                    </div>

                    <!-- Rigth Div -->
                    <div style="float: right; width: 20%;" id="rightdiv">
                        <div class="grybox">
                            <h2>Agents No Bairro</h2>
                            <div id="divAgentList">
                            </div>


                        </div>

                        <div class="grybox">
                            <h2>Agents No Bairro</h2>
                            <div id="divAgentListI">
                            </div>

                        </div>

                    </div>

                    <!-- Mid Text -->
                    <div style="float: left; width: 58%; margin-left: 1%; background-color: #efefef;">

                        <div style="width: 90%; float: left; padding: 10px 20px;">
                            <h3 style="font-size: 16px; line-height: 25px;">
                                <span id="totalRecords"></span>
                                registros encontrados.</h3>
                        </div>


                        <div id="divPropertyList" style="width: 100%; float: left; height: 550px; overflow: scroll;">
                            <%--<asp:DataList ID="dlstProperty" runat="server" Width="100%" RepeatColumns="1">
                                <ItemTemplate>
                                    <div style="width: 100%; float: left; padding-bottom: 20px;">
                                        <asp:ImageButton ID="ibtnProperty" runat="server" ImageUrl='<%# "uploads/" + Eval("image") %>' alt="Property" Width="382px" Height="240px" border="0" Style="border: 3px solid #fff; float: left;" />
                                        <div style="width: 40%;" class="proptxt">
                                            <h2>
                                                <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("address") %>'></asp:Label></h2>
                                            <br>
                                            <h4>
                                                <asp:Label ID="lblArea" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                                                <asp:Label ID="lblRate" runat="server" Text='<%# Eval("rate") %>'></asp:Label></h4>
                                            <br>
                                            <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>'></asp:Label>

                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>--%>




                            <%--    <div style="width: 100%; float: left; padding-bottom: 20px;">
                            <a href="property.html">
                                <img src="images/property1.jpg" alt="Property" border="0" style="border: 3px solid #fff; float: left;"></a>
                            <div style="width: 40%;" class="proptxt">
                                <h2>Escritoria, Morimbi</h2>
                                <strong>Rua Frei Galvao, 135</strong><br>
                                <h4>110 m2 &nbsp;&nbsp;&nbsp;$R: 1700</h4>
                                <br>
                                Local: Zasao privileg iada for cradade Jordia Parque de estaciamento, exceientes vistas...
                            </div>
                        </div>

                        <div style="width: 100%; float: left; padding-bottom: 20px;">
                            <a href="property.html">
                                <img src="images/property1.jpg" alt="Property" border="0" style="border: 3px solid #fff; float: left;"></a>
                            <div style="width: 40%;" class="proptxt">
                                <h2>Escritoria, Morimbi</h2>
                                <strong>Rua Frei Galvao, 135</strong><br>
                                <h4>110 m2 &nbsp;&nbsp;&nbsp;$R: 1700</h4>
                                <br>
                                Local: Zasao privileg iada for cradade Jordia Parque de estaciamento, exceientes vistas...
                            </div>
                        </div>

                        <div style="width: 100%; float: left; padding-bottom: 20px;">
                            <a href="property.html">
                                <img src="images/property1.jpg" alt="Property" border="0" style="border: 3px solid #fff; float: left;"></a>
                            <div style="width: 40%;" class="proptxt">
                                <h2>Escritoria, Morimbi</h2>
                                <strong>Rua Frei Galvao, 135</strong><br>
                                <h4>110 m2 &nbsp;&nbsp;&nbsp;$R: 1700</h4>
                                <br>
                                Local: Zasao privileg iada for cradade Jordia Parque de estaciamento, exceientes vistas...
                            </div>
                        </div>

                        <div style="width: 100%; float: left; padding-bottom: 20px;">
                            <a href="property.html">
                                <img src="images/property1.jpg" alt="Property" border="0" style="border: 3px solid #fff; float: left;"></a>
                            <div style="width: 40%;" class="proptxt">
                                <h2>Escritoria, Morimbi</h2>
                                <strong>Rua Frei Galvao, 135</strong><br>
                                <h4>110 m2 &nbsp;&nbsp;&nbsp;$R: 1700</h4>
                                <br>
                                Local: Zasao privileg iada for cradade Jordia Parque de estaciamento, exceientes vistas...
                            </div>
                        </div>

                        <div style="width: 100%; float: left; padding-bottom: 20px;">
                            <a href="property.html">
                                <img src="images/property1.jpg" alt="Property" border="0" style="border: 3px solid #fff; float: left;"></a>
                            <div style="width: 40%;" class="proptxt">
                                <h2>Escritoria, Morimbi</h2>
                                <strong>Rua Frei Galvao, 135</strong><br>
                                <h4>110 m2 &nbsp;&nbsp;&nbsp;$R: 1700</h4>
                                <br>
                                Local: Zasao privileg iada for cradade Jordia Parque de estaciamento, exceientes vistas...
                            </div>
                        </div>--%>
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
                            <img src="images/fb.png" alt="Facebook"></a> <a href="#">
                                <img src="images/twitt.png" width="30" height="30" alt="Twitter"></a>
                    </div>
                    <a href="#">Sobre</a> |  <a href="#">FAQ</a> |  <a href="#">Imprensa</a> |  <a href="#">Blog</a> |  <a href="#">Mobile</a> |  <a href="#">Contato.</a><br>
                    © JibeNet 2013 Termos de Uso


                </div>
            </div>
        </footer>
        <!-- Footer Ends -->

    </form>
</body>
</html>
