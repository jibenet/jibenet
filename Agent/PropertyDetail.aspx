<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PropertyDetail.aspx.cs" Inherits="Agent_PropertyDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Clipas</title>
    <link rel="icon" type="image/png" href="http://clipas.com.br/agent/images/favicon.ico" />
    <link href="http://clipas.com.br/agent/style/default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="http://clipas.com.br/agent/flexslider/flexslider.css" type="text/css" media="screen" />
    <link href="http://clipas.com.br/agent/style/tabcontent.css" rel="stylesheet" type="text/css" />
    <link href="http://clipas.com.br/agent/style/flat-ui.css" rel="stylesheet" type="text/css" />
    <link href="http://clipas.com.br/agent/style/bootstrap.css" rel="stylesheet" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>

    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places" type="text/javascript"></script>
    <script type="text/javascript">

        google.maps.event.addDomListener(window, 'load', initialize);

        function initialize() {

            var options = {
                types: ['(cities)'],
                componentRestrictions: { country: "BR" }
            };

            var inputE = document.getElementById('eSearch');
            var inputL = document.getElementById('lSearch');
            var autocompleteE = new google.maps.places.Autocomplete(inputE, options);
            var autocompleteL = new google.maps.places.Autocomplete(inputL, options);

            $('#eSearch').keydown(function (e) {
                if (e.keyCode == 13) {
                    $('#btnEclick').focus();
                }
            });
            $('#lSearch').keydown(function (e) {
                if (e.keyCode == 13) {
                    $('#btnLclick').focus();
                }
            });
        }
    </script>
    <style>
        .pac-container:after {
            content: none !important;
        }
    </style>

</head>
<body class="innerpage">
    <script src="<% =UrlUtil.MyWebUrl %>flexslider/modernizr.js"></script>
    <script src="<% =UrlUtil.MyWebUrl %>js/tabcontent.js" type="text/javascript"></script>
    <script src="<% =UrlUtil.MyWebUrl %>js/jquery-1.8.3.min.js"></script>
    <script src="<% =UrlUtil.MyWebUrl %>js/tabcontent.js" type="text/javascript"></script>
    <script src="<% =UrlUtil.MyWebUrl %>js/bootstrap.min.js"></script>
    <script src="<% =UrlUtil.MyWebUrl %>js/bootstrap-select.js"></script>
    <script src="<% =UrlUtil.MyWebUrl %>js/application.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btnEclick").click(function () {
                var url;

                if ($('#eSearch').val() == '') {
                    url = '<% =UrlUtil.MyWebRootUrl %>' + $('#jumpMenu :selected').val().replace(' ', '_') + '/Brasil/SP/São_Paulo/São_Paulo/Escritório_Comercial';
                }
                else {
                    url = '<% =UrlUtil.MyWebRootUrl %>' + $('#jumpMenu :selected').val().replace(' ', '_') + '/Brasil/SP/São_Paulo/' + $('#eSearch').val().replace(' ', '_') + '/Escritório_Comercial';
                }
                $(location).attr('href', url);
            })
        });
        $(function () {
            $("#btnLclick").click(function () {
                var url;

                if ($('#lSearch').val() == '') {
                    url = '<% =UrlUtil.MyWebRootUrl %>' + $('#Select1 :selected').val().replace(' ', '_') + '/Brasil/SP/São_Paulo/São_Paulo/Loja_Comercial';
                }
                else {
                    url = '<% =UrlUtil.MyWebRootUrl %>' + $('#Select1 :selected').val().replace(' ', '_') + '/Brasil/SP/São_Paulo/' + $('#lSearch').val().replace(' ', '_') + '/Loja_Comercial';
                }
                $(location).attr('href', url);
            })
        });
    </script>
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
                            <li><a class="new_active" href="#" rel="view1">Escritório</a></li>
                            <li><a class="new_active" href="#" rel="view2">Loja</a></li>
                        </ul>
                        <div class="tabcontents">
                            <div id="view1" class="tabcontent">
                                <div>
                                    <div style="width: 392px; float: left; background-image: url('<% =UrlUtil.MyWebUrl %>images/searchbg-inner.png'); background-repeat: no-repeat; height: 26px; padding: 4px;">
                                        <input id="btnEclick" type="button" value="" class="searchbtn-inner"><input id="eSearch" name="search" type="text" placeholder="Bairro" style="padding: 2px 4px; width: 88%; margin-top: 2px; border: 0px; background: none;">
                                    </div>

                                    <div class="ddmenu-inner" style="width: 112px; float: left; margin-left: 4px;">
                                        <div class="row demo-row">
                                            <div class="span2" style="width: 128px; min-height: 60px !important;">
                                                <select id="jumpMenu" name="herolist" class="select-block span3" style="min-height: 75px;">
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
                                        <input id="btnLclick" type="button" value="" class="searchbtn-inner"><input id="lSearch" n name="search" type="text" placeholder="Bairro" style="padding: 2px 4px; width: 88%; margin-top: 2px; border: 0px; background: none;">
                                    </div>

                                    <div class="ddmenu-inner" style="width: 112px; float: left; margin-left: 4px;">
                                        <div class="row demo-row">
                                            <div class="span2" style="width: 128px; min-height: 60px !important;">
                                                <select id="Select1" name="herolist" class="select-block span3" style="min-height: 75px;">
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
                            <option value="Entre">Ajudar</option>

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
    <form runat="server">
        <!-- Section Starts -->
        <section>
            <div id="txtcontainer">
                <div>
                    <div style="width: 100%; float: left;">
                        <div style="width: 35%; text-align: center; float: right;">
                            <h2 style="font-size: 16px; padding-top: 10px;">
                                <div style="width: 25%; float: left; padding-top: 10px;">
                                    <asp:Label ID="lblArea" runat="server" Text=""></asp:Label>
                                    m<sup>2</sup>

                                </div>
                                <img src="<% =UrlUtil.MyWebUrl %>images/line.jpg" alt="Line" style="padding: 0px 12px; float: left;">
                                <div style="width: 25%; float: left; padding-top: 10px;">
                                    R$
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
                                    <div id="map" class="tabcontent" runat="server" visible="false">
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
                                <input name="" type="checkbox" value=""><label style="font-size: 14px; font-weight: bold;"> Envie-me propriededes semelhontes</label>

                            </div>


                            <input name="enter" type="button" class="grnbtn" value="Telefone do Agente" style="margin-top: 50px;" onclick="javascript: animatedcollapse.toggle('property')">
                            <div id="property" style="width: 100%; display: none">
                                <h3 style="color: #000; text-align: center;"></h3>
                            </div>
                        </div>

                    </div>

                    <div style="width: 68%; float: left;">

                        <div class="text_size">
                            <h3 style="font-weight: normal;">Recursos</h3>
                            <div style="float: left; width: 69%;">
                                <div id="divParking" runat="server" style="float: left; width: 100%; padding-bottom: 10px;" visible="false">
                                    <img id="iParking" runat="server" src="http://clipas.com.br/agent/images/list.png" alt="Tick" style="text-align: left; padding-right: 10px;" visible="false" />
                                    <asp:Label ID="lblParking" runat="server" Text="" Visible="false"></asp:Label>
                                </div>
                                <div id="divToilet" runat="server" style="float: left; width: 100%; padding-bottom: 10px;" visible="false">
                                    <img id="iToilet" runat="server" src="http://clipas.com.br/agent/images/list.png" alt="Tick" style="text-align: left; padding-right: 10px;" visible="false" />
                                    <asp:Label ID="lblToilet" runat="server" Text="" Visible="false"></asp:Label>
                                </div>
                                <div id="divKitchen" runat="server" style="float: left; width: 100%; padding-bottom: 10px;" visible="false">
                                    <img id="iKitchen" runat="server" src="http://clipas.com.br/agent/images/list.png" alt="Tick" style="text-align: left; padding-right: 10px;" visible="false" />
                                    <asp:Label ID="lblKitchen" runat="server" Text="" Visible="false"></asp:Label>
                                </div>
                                <div id="divReception" runat="server" style="float: left; width: 100%; padding-bottom: 10px;" visible="false">
                                    <img id="iReception" runat="server" src="http://clipas.com.br/agent/images/list.png" alt="Tick" style="text-align: left; padding-right: 10px;" visible="false" />
                                    <asp:Label ID="lblReception" runat="server" Text="" Visible="false"></asp:Label>
                                </div>
                            </div>
                            <div style="float: left; width: 30%;">
                                <span style="float: left; width: 100%; font-size: 16px; line-height: 26px;">Area:
                            <asp:Label ID="lblAreaI" runat="server" Text=""></asp:Label>&nbsp;m<sup>2</sup><br />
                                    Taxa: R$ 
                            <asp:Label ID="lblRateI" runat="server" Text=""></asp:Label></span>


                            </div>

                        </div>
                        <br>
                        <br>

                        <div style="width: 94%; padding: 2%; margin-top: 2%; float: left; border: 1px solid #e5e5e5; border-radius: 7px; -moz-border-radius: 7px; -webkit-border-radius: 7px; -khtml-border-radius: 7px; background: #fff;">
                            <h3 style="font-weight: normal; margin-bottom: 8px;">Detalhes</h3>
                            <h5 style="font-weight: normal;">
                                <div id="propertyDetail" runat="server"></div>
                            </h5>
                        </div>

                    </div>


                    <div style="width: 25%; float: right; padding: 2%; border: 1px solid #e5e5e5; border-radius: 7px; -moz-border-radius: 7px; -webkit-border-radius: 7px; -khtml-border-radius: 7px; background: #fff;">
                        <h2 align="center" style="font-weight: normal; margin-bottom: 8px;">Propriedades Semelhantes</h2>
                        <div id="divN1" runat="server" visible="false">
                            <p align="center" style="width: 100%; font-size: 16px; line-height: 24px;">
                                <asp:Image ID="ibtnImage1" runat="server" Width="140" Height="90" CssClass="imgbdr" ImageUrl="http://clipas.com.br/agent/images/365x240.jpg" />
                                <br />
                                <asp:Label ID="lblDescription1" runat="server" Text=""></asp:Label><br />
                                <asp:Label ID="lblArea1" runat="server" Text=""></asp:Label>&nbsp;m<sup>2</sup><br />
                                R$&nbsp;<asp:Label ID="lblRate1" runat="server" Text=""></asp:Label>

                            </p>
                        </div>
                        <div id="divN2" runat="server" visible="false">
                            <p align="center" style="width: 100%; font-size: 16px; line-height: 24px;">
                                <asp:Image ID="ibtnImage2" runat="server" Width="140" Height="90" CssClass="imgbdr" ImageUrl="http://clipas.com.br/agent/images/365x240.jpg" />
                                <br />
                                <asp:Label ID="lblDescription2" runat="server" Text=""></asp:Label><br />
                                <asp:Label ID="lblArea2" runat="server" Text=""></asp:Label>&nbsp;m<sup>2</sup><br />
                                R$&nbsp;<asp:Label ID="lblRate2" runat="server" Text=""></asp:Label>
                            </p>
                        </div>

                    </div>


                </div>

            </div>
        </section>
    </form>
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

    <!-- FlexSlider -->
    <script src="<% =UrlUtil.MyWebUrl %>flexslider/jquery.flexslider.js"></script>

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
    <script type="text/javascript" src="<% =UrlUtil.MyWebUrl %>flexslider/shCore.js"></script>
    <script type="text/javascript" src="<% =UrlUtil.MyWebUrl %>flexslider/shBrushXml.js"></script>
    <script type="text/javascript" src="<% =UrlUtil.MyWebUrl %>flexslider/shBrushJScript.js"></script>

    <!-- Optional FlexSlider Additions -->
    <script src="<% =UrlUtil.MyWebUrl %>flexslider/jquery.easing.js"></script>
    <script src="<% =UrlUtil.MyWebUrl %>flexslider/jquery.mousewheel.js"></script>
    <script src="<% =UrlUtil.MyWebUrl %>flexslider/demo.js"></script>
    <script id="_webengage_script_tag" type="text/javascript">
        var _weq = _weq || {};
        _weq['webengage.licenseCode'] = '76aa53a';
        _weq['webengage.widgetVersion'] = "4.0";

        (function (d) {
            var _we = d.createElement('script');
            _we.type = 'text/javascript';
            _we.async = true;
            _we.src = (d.location.protocol == 'https:' ? "https://ssl.widgets.webengage.com" : "http://cdn.widgets.webengage.com") + "/js/widget/webengage-min-v-4.0.js";
            var _sNode = d.getElementById('_webengage_script_tag');
            _sNode.parentNode.insertBefore(_we, _sNode);
        })(document);
    </script>
</body>
</html>
