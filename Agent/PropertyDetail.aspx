<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PropertyDetail.aspx.cs" Inherits="Agent_PropertyDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Clipas</title>
    <link rel="icon" type="image/png" href="http://glosolarbr.com/images/favicon.ico" />
    <link href="style/default.css" rel="stylesheet" type="text/css">

    <!-- Syntax Highlighter -->

    <link rel="stylesheet" href="flexslider/flexslider.css" type="text/css" media="screen" />
    <script src="flexslider/modernizr.js"></script>

    <!-- Collaspe Div -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/animatedcollapse.js"></script>
    <script type="text/javascript">

        animatedcollapse.addDiv('property', 'fade=1,height=80px')

        animatedcollapse.ontoggle = function ($, divobj, state) { //fires each time a DIV is expanded/contracted
            //$: Access to jQuery
            //divobj: DOM reference to DIV being expanded/ collapsed. Use "divobj.id" to get its ID
            //state: "block" or "none", depending on state
        }
        animatedcollapse.init()
    </script>

    <script src="js/tabcontent.js" type="text/javascript"></script>
    <link href="style/tabcontent.css" rel="stylesheet" type="text/css" />

    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places" type="text/javascript"></script>
    <script type="text/javascript">
        function initialize() {
            var inputE = document.getElementById('eSearch');
            var inputL = document.getElementById('lSearch');
            var autocompleteE = new google.maps.places.Autocomplete(inputE);
            var autocompleteL = new google.maps.places.Autocomplete(inputL);
        }
        google.maps.event.addDomListener(window, 'load', initialize);

        var options = {
            types: ['geocode'] //this should work !
        };
        var autocompleteE = new google.maps.places.Autocomplete(inputE, options);
        var autocompleteL = new google.maps.places.Autocomplete(inputL, options);

        function initialize() {

            var options = {
                types: ['(cities)'],
                componentRestrictions: { country: "BR" }
            };

            var inputE = document.getElementById('eSearch');
            var inputL = document.getElementById('lSearch');
            var autocompleteE = new google.maps.places.Autocomplete(inputE, options);
            var autocompleteL = new google.maps.places.Autocomplete(inputL, options);
        }
    </script>
    <style>
        .pac-container:after
        {
            content: none !important;
        }
    </style>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btnEclick").click(function () {
                var url = 'ListProperty.aspx?type=Escritório&address=' + $('#eSearch').val();
                $(location).attr('href', url);
            })
        });
        $(function () {
            $("#btnLclick").click(function () {
                var url = 'ListProperty.aspx?type=Loja&address=' + $('#lSearch').val();
                $(location).attr('href', url);
            })
        });
    </script>
</head>
<body class="innerpage">
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
                            <li><a class="new_active" href="#" rel="view1">Escritório</a></li>
                            <li><a class="new_active" href="#" rel="view2">Loja</a></li>
                        </ul>
                        <div class="tabcontents">
                            <div id="view1" class="tabcontent">
                                <form action="" method="post">
                                    <div style="width: 392px; float: left; background-image: url(images/searchbg-inner.png); background-repeat: no-repeat; height: 26px; padding: 4px;">
                                        <input id="btnEclick" type="button" value="" class="searchbtn-inner"><input id="eSearch" name="search" type="text" placeholder="Digite Um Bairro" style="padding: 2px 4px; width: 88%; margin-top: 2px; border: 0px; background: none;">
                                    </div>

                                    <div class="ddmenu-inner" style="width: 88px; float: left; margin-left: 4px;">
                                        <select name="jumpMenu" id="jumpMenu" onchange="MM_jumpMenu('parent',this,0)">
                                            <option>Alugar</option>

                                        </select>
                                    </div>
                                </form>
                            </div>
                            <div id="view2" class="tabcontent">
                                <form action="" method="post">
                                    <div style="width: 392px; float: left; background-image: url(images/searchbg-inner.png); background-repeat: no-repeat; height: 26px; padding: 4px;">
                                        <input id="btnLclick" type="button" value="" class="searchbtn-inner"><input id="lSearch" n name="search" type="text" placeholder="Digite Um Bairro" style="padding: 2px 4px; width: 88%; margin-top: 2px; border: 0px; background: none;">
                                    </div>

                                    <div class="ddmenu-inner" style="width: 88px; float: left; margin-left: 4px;">
                                        <select name="jumpMenu" id="Select1" onchange="MM_jumpMenu('parent',this,0)">
                                            <option>Alugar</option>

                                        </select>
                                    </div>
                                </form>
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
                        <p><a href="AddProperty.aspx">Listar Sua Properiedade</a></p>
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
                <div style="width: 100%; float: left;">
                    <div style="width: 35%; text-align: center; float: right;">
                        <h2 style="font-size: 16px; padding-top: 10px;">
                            <div style="width: 25%; float: left; padding-top: 5px;">
                                <asp:Label ID="lblArea" runat="server" Text=""></asp:Label>
                                m<sup>2</sup>

                            </div>
                            <img src="images/line.jpg" alt="Line" style="padding: 0px 12px; float: left;">
                            <div style="width: 25%; float: left; padding-top: 10px;">
                                $
                                <asp:Label ID="lblRate" runat="server" Text=""></asp:Label>
                            </div>
                        </h2>

                    </div>

                    <h1 style="font-size: 45px; line-height: 52px;">

                        <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                    </h1>
                    <h3>
                        <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label></h3>

                </div>

                <!-- Mid Text -->
                <div style="background-color: #fff; width: 96%; margin-bottom: 3%; float: left; border-radius: 10px; box-shadow: 2px 2px 4px #E9E9E9; padding: 2%;">
                    <div style="width: 60%; float: left;">
                        <div>
                            <ul class="tabs tabs_new" persist="true">
                                <li><a class="new_selected" href="#" rel="gallery">Image</a></li>
                                <li><a class="new_selected" href="#" rel="map">Map View</a></li>
                            </ul>
                            <div class="tabcontents">
                                <div id="gallery" class="tabcontent">
                                    <div id="container map" class="cf">

                                        <div id="main" role="main">
                                            <section class="slider">
                                                <div id="slider" class="flexslider" runat="server" visible="false">
                                                </div>
                                                <div id="carousel" class="flexslider" runat="server" visible="false">
                                                </div>
                                            </section>
                                        </div>

                                    </div>
                                </div>
                                <div id="map" class="tabcontent">
                                    <div id="canvas" class="galley_map" width="100%" height="505">
                                        <input id="hdLatitude" type="hidden" runat="server" />
                                        <input id="hdLongitude" type="hidden" runat="server" />
                                    </div>
                                    <script type="text/javascript">
                                        var myZoom = 12;
                                        var defaultLat = document.getElementById('hdLatitude').value;
                                        var defaultLng = document.getElementById('hdLongitude').value;

                                        var map = new google.maps.Map(document.getElementById('canvas'), {
                                            zoom: myZoom,
                                            center: new google.maps.LatLng(defaultLat, defaultLng),
                                            mapTypeId: google.maps.MapTypeId.ROADMAP
                                        });

                                        var myMarker = new google.maps.Marker({
                                            position: new google.maps.LatLng(defaultLat, defaultLng),
                                        });

                                        google.maps.event.addListener(myMarker, 'click', function (evt) {
                                            var latlng = new google.maps.LatLng(evt.latLng.lat(), evt.latLng.lng());
                                            var geocoder = new google.maps.Geocoder();
                                            geocoder.geocode({ 'latLng': latlng }, function (results, status) {
                                                if (status == google.maps.GeocoderStatus.OK) {
                                                    if (results[0]) {
                                                        alert(results[0].formatted_address);
                                                    }
                                                }
                                            });
                                        });

                                        map.setCenter(myMarker.position);

                                        myMarker.setMap(map);

                                    </script>
                                </div>
                            </div>
                        </div>


                    </div>

                    <div style="width: 29%; float: right; margin-top: 35px; color: #fff;">
                        <form>

                            <div style="width: 96%; float: left; height: 485px; background-color: #A2BC5D; -moz-border-radius: 7px; -webkit-border-radius: 7px; -khtml-border-radius: 7px; padding: 4% 2%;">
                                <h1 style="color: #fff; font-size: 28px; text-shadow: 1px 1px 1px #000;">Contatar O Anunciante</h1>
                                <br>
                                <br>

                                <input name="" type="text" placeholder="Name" class="grenbgform"><br>
                                <br>

                                <input name="" type="text" placeholder="Email" class="grenbgform"><br>
                                <br>
                                <input name="" type="text" style="width: 32%;" placeholder="000" class="grenbgform">
                                <input name="" type="text" style="width: 60%;" placeholder="Telefone" class="grenbgform"><br>
                                <br>
                                <input name="" type="text" placeholder="Empresa" class="grenbgform"><br>
                                <br>
                                <textarea name="" cols="" rows="" style="width: 96%; padding: 8px 4px; border-radius: 4px; resize: none; border-top: 1px solid #617430; border-left: 1px solid #617430;" placeholder="Empresa"></textarea><br>
                                <br>
                                <input name="enter" type="button" class="grybtn" value="Enviar">
                                <br>
                                <br>
                                <input name="" type="checkbox" value=""><label style="font-size: 16px; font-weight: bold;"> Envie-me propriededes semelhontes</label>

                            </div>
                        </form>

                        <input name="enter" type="button" class="grnbtn" value="Telefone do Agente" style="margin-top: 50px;" onclick="javascript: animatedcollapse.toggle('property')">
                        <div id="property" style="width: 100%; display: none">
                            <h3 style="color: #000; text-align: center;">9888 186 727</h3>
                        </div>
                    </div>

                </div>

                <div style="width: 68%; float: left;">

                    <div style="width: 94%; padding: 2%; line-height: 35px; float: left; font-size: 23px; border: 1px solid #e5e5e5; border-radius: 7px; -moz-border-radius: 7px; -webkit-border-radius: 7px; -khtml-border-radius: 7px; background: #fff;">
                        <h3>Recursos</h3>
                        <span style="float: right; width: 30%; font-size: 18px; line-height: 26px;">Area:
                            <asp:Label ID="lblAreaI" runat="server" Text=""></asp:Label>&nbsp;m<sup>2</sup><br />
                            Taxa: R$ 
                            <asp:Label ID="lblRateI" runat="server" Text=""></asp:Label></span><img src="images/list.png" alt="Tick" style="text-align: left; padding-right: 10px;">
                        <asp:Label ID="lblParking" runat="server" Text=""></asp:Label>
                        Estacionamento<br>
                        <img src="images/list.png" alt="Tick" style="text-align: left; padding-right: 10px;">
                        <asp:Label ID="lblToilet" runat="server" Text=""></asp:Label>
                        Banheiros<br>
                        <img src="images/list.png" alt="Tick" style="text-align: left; padding-right: 10px;">
                        <asp:Label ID="lblKitchen" runat="server" Text=""></asp:Label>
                        Cozinha<br>
                        <img src="images/list.png" alt="Tick" style="text-align: left; padding-right: 10px;">
                        <asp:Label ID="lblReception" runat="server" Text=""></asp:Label>
                        Area de Recepcao
  
                    </div>
                    <br>
                    <br>

                    <div style="width: 94%; padding: 2%; margin-top: 2%; float: left; border: 1px solid #e5e5e5; border-radius: 7px; -moz-border-radius: 7px; -webkit-border-radius: 7px; -khtml-border-radius: 7px; background: #fff;">
                        <h3>Detalhes</h3>
                        <div id="propertyDetail" runat="server"></div>

                    </div>

                </div>


                <div style="width: 25%; float: right; padding: 2%; border: 1px solid #e5e5e5; border-radius: 7px; -moz-border-radius: 7px; -webkit-border-radius: 7px; -khtml-border-radius: 7px; background: #fff;">
                    <h3 align="center">Propriedades Semelhantes</h3>
                    <p align="center" style="width: 100%; font-size: 16px; line-height: 24px;">
                        <img src="uploads/i1.jpg" width="140" height="90" class="imgbdr"><br>
                        The Discription will go here<br>
                        Neighborhood<br>
                        Size<br>
                        Price
                    </p>
                    <p align="center" style="width: 100%; font-size: 16px; line-height: 24px;">
                        <img src="uploads/i1.jpg" width="140" height="90" class="imgbdr"><br>
                        The Discription will go here<br>
                        Neighborhood<br>
                        Size<br>
                        Price
                    </p>
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
                © Clipas 2013 Termos de Uso


            </div>
        </div>
    </footer>
    <!-- Footer Ends -->
    <!-- jQuery -->
    <script src="flexslider/jquery-1.5.2.min.js"></script>
    <script>window.jQuery || document.write('<script src="flexslider/jquery-1.7.min.js">\x3C/script>')</script>

    <!-- FlexSlider -->
    <script src="flexslider/jquery.flexslider.js"></script>

    <script type="text/javascript">
        $(function () {
            SyntaxHighlighter.all();
        });
        $(window).load(function () {
            $('#carousel').flexslider({
                animation: "slide",
                controlNav: false,
                animationLoop: true,
                slideshow: false,
                itemWidth: 210,
                itemMargin: 5,
                asNavFor: '#slider'
            });

            $('#slider').flexslider({
                animation: "slide",
                controlNav: false,
                animationLoop: true,
                slideshow: false,
                sync: "#carousel",
                start: function (slider) {
                    $('body').removeClass('loading');
                }
            });
        });
    </script>


    <!-- Syntax Highlighter -->
    <script type="text/javascript" src="flexslider/shCore.js"></script>
    <script type="text/javascript" src="flexslider/shBrushXml.js"></script>
    <script type="text/javascript" src="flexslider/shBrushJScript.js"></script>

    <!-- Optional FlexSlider Additions -->
    <script src="flexslider/jquery.easing.js"></script>
    <script src="flexslider/jquery.mousewheel.js"></script>
    <script src="flexslider/demo.js"></script>
</body>
</html>
