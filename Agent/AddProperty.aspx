<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProperty.aspx.cs" Inherits="Agent_AddProperty" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
    <link rel="icon" type="image/png" href="http://glosolarbr.com/images/favicon.ico" />
    <link href="style/default.css" rel="stylesheet" type="text/css" />
    <link href="style/defaultASP.css" rel="stylesheet" type="text/css" />
    <link href="style/tabcontent.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="jqtransformplugin/jqtransform.css" type="text/css" media="all" />
    <link href="style/flat-ui.css" rel="stylesheet" type="text/css" />
    <link href="style/bootstrap.css" rel="stylesheet" />

    <script src="js/tabcontent.js" type="text/javascript"></script>
    <script type="text/javascript" src="jqtransformplugin/jquery.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/tabcontent.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/application.js"></script>
    <script type="text/javascript" src="jqtransformplugin/jquery.jqtransform.js"></script>
    <script type="javascript">
	    $(function () {
	        $('#form').jqTransform({ imgPath: 'jqtransformplugin/img/' });
	    });
    </script>

    <style>
        upl {
            float: left;
            height: 30px;
            left: 300px;
            position: relative;
            top: -35px;
            width: 110px;
        }
    </style>

    <%--GOOGLE MAP--%>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places" type="text/javascript"></script>
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
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btnEclick").click(function () {
                if ($('#eSearch').val() == '') {
                    var url = $('#jumpMenu :selected').val() + '/Brasil/São_Paulo/Escritório_Comercial';
                }
                else {
                    var url = $('#jumpMenu :selected').val() + '/Brasil/' + $('#eSearch').val() + '/Escritório_Comercial';
                }
                $(location).attr('href', url.replace(' ', '_'));
            })
        });
        $(function () {
            $("#btnLclick").click(function () {
                if ($('#lSearch').val() == '') {
                    var url = $('#Select1 :selected').val() + '/Brasil/São_Paulo/Loja_Comercial';
                }
                else {
                    var url = $('#Select1 :selected').val() + '/Brasil/' + $('#lSearch').val() + '/Loja_Comercial';
                }
                $(location).attr('href', url.replace(' ', '_'));
            })
        });
    </script>

    <script type="text/javascript" src="<% =UrlUtil.MyWebUrl %>zebra_datepicker.js"></script>
    <link rel="stylesheet" href="default.css" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {

            // assuming the controls you want to attach the plugin to 
            // have the "datepicker" class set
            $('#txtAvailableDate').Zebra_DatePicker({
                direction: 1    // boolean true would've made the date picker future only
                // but starting from today, rather than tomorrow
            });

        });
    </script>

</head>
<body class="innerpage">
    <!-- Header Starts -->
    <header>
        <div id="header">
            <div class="header">
                <div class="logo">
                    <a href="Home">
                        <img src="images/jibenet.png" width="175" height="64"></a>
                </div>
                <div class="header-middle">
                    <div>
                        <ul class="tabs" persist="true">
                            <li><a class="new_active" href="#" rel="view1">Escritório</a></li>
                            <li><a class="new_active" href="#" rel="view2">Loja</a></li>
                        </ul>
                        <div class="tabcontents">
                            <div id="view1" class="tabcontent" style="display: none">
                                <form action="" method="post">
                                    <div style="width: 392px; float: left; background-image: url(images/searchbg-inner.png); background-repeat: no-repeat; height: 26px; padding: 4px;">
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
                                </form>
                            </div>
                            <div id="view2" class="tabcontent" style="display: none">
                                <form action="" method="post">
                                    <div style="width: 392px; float: left; background-image: url(images/searchbg-inner.png); background-repeat: no-repeat; height: 26px; padding: 4px;">
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
                                </form>
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
                        <p><a href="PostProperty">Anuncie seu Imóvel</a></p>
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
                <!-- Mid Text -->
                <div style="background-color: #fff; width: 96%; float: left; border-radius: 10px; box-shadow: 2px 2px 4px #E9E9E9; padding: 2%;">

                    <div style="width: 100%; float: left; text-align: center;">
                        <h3>Aumente os leads do seu imóvel agora.<br>
                            Publique a centenas de inquilinos qualificados.</h3>

                        <h3 style="font-size: 20px; line-height: 50px; margin-top: 20px; border-top: 1px solid #ccc;"></h3>
                    </div>

                    <form id="form" runat="server">

                        <div style="width: 96%; float: left; border: 1px solid #ccc; border-radius: 10px; padding: 2%;">
                            <div style="float: left; width: 65%;">
                                <label>Nome do Imóvel</label>
                                <input id="txtPName" type="text" runat="server" style="width: 250px;" size="28" class="formstyle" />
                                <asp:RequiredFieldValidator ID="rvalPName" runat="server" ErrorMessage="" ControlToValidate="txtPName" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revalPName" runat="server" ErrorMessage="" ControlToValidate="txtPName" ValidationGroup="property"></asp:RegularExpressionValidator>
                                <br />

                                <br />

                                <label>Endereço</label>
                                <input id="iAddress" type="text" runat="server" style="width: 250px;" size="28" class="formstyle" />
                                <asp:RequiredFieldValidator ID="rvalAddress" runat="server" ErrorMessage="" ControlToValidate="iAddress" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revalAddress" runat="server" ErrorMessage="" ControlToValidate="iAddress" ValidationGroup="property"></asp:RegularExpressionValidator>
                                <input id="hdLocation" type="hidden" runat="server" />

                                &nbsp;<br />
                                <span style="padding-left: 16%; color: #FF0000; font-size: 11px">arrastar marcador no mapa para marcar exata localização da propriedade.</span>
                                <br />
                                <label>Cidade</label>
                                <input id="txtCity" type="text" runat="server" style="width: 250px;" size="28" class="formstyle" />
                                <asp:RequiredFieldValidator ID="rvalCity" runat="server" ErrorMessage="" ControlToValidate="txtCity" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revalCity" runat="server" ErrorMessage="" ControlToValidate="txtCity" ValidationGroup="property"></asp:RegularExpressionValidator>

                                <br />

                                <br />
                                <label>Bairro</label>
                                <input id="txtNeighborhood" type="text" runat="server" style="width: 250px;" size="28" class="formstyle" />
                                <asp:RegularExpressionValidator ID="revalNeighborhood" runat="server" ErrorMessage="" ControlToValidate="txtNeighborhood" ValidationGroup="property"></asp:RegularExpressionValidator>

                                <br />

                                <br />

                                <label>CEP</label>
                                <asp:TextBox ID="txtZipCode" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>&nbsp;
                            <asp:RegularExpressionValidator ID="revalZipCode" runat="server" ErrorMessage="" ControlToValidate="txtZipCode" ValidationGroup="property"></asp:RegularExpressionValidator>

                                <br />
                                <br />
                                <label>Imóvel</label>
                                <asp:DropDownList ID="dropType" runat="server" Style="width: 120px;" CssClass="formstyle">
                                    <asp:ListItem Value="Escritório"></asp:ListItem>
                                    <asp:ListItem Value="Loja"></asp:ListItem>
                                </asp:DropDownList>

                                <asp:DropDownList ID="dropBuyOrRent" runat="server" Style="width: 120px;" CssClass="formstyle">
                                    <asp:ListItem Value="Para Alugar"></asp:ListItem>
                                    <asp:ListItem Value="À Venda"></asp:ListItem>
                                </asp:DropDownList>

                                <br />
                                <br />
                                <label>Disponível a partir de</label>
                                <asp:TextBox ID="txtAvailableDate" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rvalDate" runat="server" ErrorMessage="" ControlToValidate="txtAvailableDate" ValidationGroup="property">*</asp:RequiredFieldValidator>


                                <asp:RegularExpressionValidator ID="revalDate" runat="server" ErrorMessage="" ControlToValidate="txtAvailableDate" ValidationGroup="property"></asp:RegularExpressionValidator>
                                <br />
                                <br />
                                <label>Área</label>
                                <asp:TextBox ID="txtArea" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rvalArea" runat="server" ErrorMessage="" ControlToValidate="txtArea" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                m<sup>2</sup>
                                <asp:RegularExpressionValidator ID="revalArea" runat="server" ErrorMessage="" ControlToValidate="txtArea" ValidationGroup="property"></asp:RegularExpressionValidator>

                                <asp:RangeValidator ID="rvArea" runat="server" ControlToValidate="txtArea" ErrorMessage="1 e 5000000" Type="Integer" MinimumValue="1" MaximumValue="5000000" ValidationGroup="property"></asp:RangeValidator>
                                <br />
                                <br />
                                <label>Preço</label>
                                <asp:TextBox ID="txtRate" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rvalRate" runat="server" ErrorMessage="" ControlToValidate="txtRate" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                R$
                            <asp:RegularExpressionValidator ID="revalRate" runat="server" ErrorMessage="" ControlToValidate="txtRate" ValidationGroup="property"></asp:RegularExpressionValidator>

                                <asp:RangeValidator ID="rvRate" runat="server" ControlToValidate="txtRate" ErrorMessage="0 e 5000000000" Type="Double" MinimumValue="0" MaximumValue="5000000000" ValidationGroup="property"></asp:RangeValidator>

                                <br />
                                <br />
                                <label>Fotos URL</label>
                                <asp:TextBox ID="txtPhotosURL" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>


                                &nbsp;(<span id="result_box" class="short_text" lang="pt"><span class="hps">Opcional - URL múltipla seprate por &#39;,&#39;</span></span>)<br />
                                <br />
                                <label>Fotos</label>

                                <iframe src="agent/AutoUpload.aspx" style="height: auto; overflow: auto; min-height: 40px; top: -9px; position: relative; width: 400px;"></iframe>

                                <br>
                                <br>
                                <div class="head">
                                    <br>
                                    <label>Recursos</label>
                                    <label>Estacionamento</label>
                                    <asp:TextBox ID="txtParkings" runat="server" Style="width: 200px;" size="28" CssClass="formstyle"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="" ControlToValidate="txtParkings" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revalParkings" runat="server" ErrorMessage="" ControlToValidate="txtParkings" ValidationGroup="property"></asp:RegularExpressionValidator>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtParkings" ErrorMessage="Valor entre 0 e 100" Type="Integer" MinimumValue="0" MaximumValue="100" ValidationGroup="property"></asp:RangeValidator>
                                    <br>
                                    <br>
                                    <label>&nbsp;</label>
                                    <label>Banheiros</label>
                                    <asp:TextBox ID="txtToilets" runat="server" Style="width: 200px;" size="28" CssClass="formstyle"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="" ControlToValidate="txtToilets" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revalToilets" runat="server" ErrorMessage="" ControlToValidate="txtToilets" ValidationGroup="property"></asp:RegularExpressionValidator>
                                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtToilets" ErrorMessage="Valor entre 0 e 100" Type="Integer" MinimumValue="0" MaximumValue="100" ValidationGroup="property"></asp:RangeValidator>


                                    <br>
                                    <br>
                                    <label>&nbsp;</label>
                                    <label>Cozinha </label>
                                    <asp:TextBox ID="txtKitchens" runat="server" Style="width: 200px;" size="28" CssClass="formstyle"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="" ControlToValidate="txtKitchens" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revalKitchen" runat="server" ErrorMessage="" ControlToValidate="txtKitchens" ValidationGroup="property"></asp:RegularExpressionValidator>
                                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtKitchens" ErrorMessage="Valor entre 0 e 100" Type="Integer" MinimumValue="0" MaximumValue="100" ValidationGroup="property"></asp:RangeValidator>

                                    <br>
                                    <br>
                                    <label>&nbsp;</label>
                                    <label>Recepção</label>
                                    <asp:CheckBox ID="chkReception" runat="server" size="28" />
                                    <br>
                                    <br>
                                    <label>&nbsp;</label>
                                    <label>Mobiliado</label>
                                    <asp:CheckBox ID="chkFurnished" runat="server" size="28" />
                                    <br>
                                    <br>
                                    <label>Detalhes</label>
                                    <asp:TextBox ID="txtDetail" runat="server" Style="width: 430px;" Height="116px" TextMode="MultiLine" CssClass="formstyle"></asp:TextBox>&nbsp;
                                <asp:RegularExpressionValidator ID="revalDetail" runat="server" ErrorMessage="" ControlToValidate="txtDetail" ValidationGroup="property"></asp:RegularExpressionValidator>

                                </div>
                                <div style="width: 96%; float: left; border: 1px solid #ccc; border-radius: 10px; padding: 2%; margin-top: 10px;">
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <label>Email</label>
                                            <asp:TextBox ID="txtEmail" runat="server" Style="width: 250px;" size="28" OnTextChanged="txtEmail_TextChanged" CausesValidation="false" AutoPostBack="True" CssClass="formstyle"></asp:TextBox>
                                            <%--                                            <asp:RequiredFieldValidator ID="rvalEmail" runat="server" ErrorMessage="" ControlToValidate="txtEmail" ValidationGroup="property">*</asp:RequiredFieldValidator>

                                            <asp:RegularExpressionValidator ID="revalEmail" runat="server" ErrorMessage="" ControlToValidate="txtEmail" ValidationGroup="property"></asp:RegularExpressionValidator>--%>
                                            <br>
                                            <br>
                                            <label>Nome</label>
                                            <asp:TextBox ID="txtName" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                                            <%--                                            <asp:RequiredFieldValidator ID="rvalName" runat="server" ErrorMessage="" ControlToValidate="txtName" ValidationGroup="property">*</asp:RequiredFieldValidator>

                                            <asp:RegularExpressionValidator ID="revalName" runat="server" ErrorMessage="" ControlToValidate="txtName" ValidationGroup="property"></asp:RegularExpressionValidator>--%>
                                            <br>
                                            <br>
                                            <label>Empresa</label>
                                            <asp:TextBox ID="txtBusiness" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>&nbsp;
                                            <%--                                        <asp:RegularExpressionValidator ID="revalBusiness" runat="server" ErrorMessage="" ControlToValidate="txtBusiness" ValidationGroup="property"></asp:RegularExpressionValidator>--%>

                                            <br>
                                            <br>

                                            <label>Telefone</label>
                                            <asp:TextBox ID="txtPhone" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>&nbsp;
                                            <%--                                        <asp:RegularExpressionValidator ID="revalPhone" runat="server" ErrorMessage="" ControlToValidate="txtPhone" ValidationGroup="property"></asp:RegularExpressionValidator>--%>

                                            <br>
                                            <br>
                                            <label>&nbsp;</label>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <div class="green-butt">
                                        <p>
                                            <a>
                                                <asp:Button ID="btnsubmit" runat="server" Text="Envie imóvel" BackColor="Transparent" CssClass="text" OnClick="btnsubmit_Click" CausesValidation="true" ValidationGroup="property" />
                                            </a>
                                        </p>
                                    </div>
                                </div>


                            </div>


                            <div id="canvas" style="float: left; width: 36%; margin: 0px 0px 0px 10px; border: 1px solid #ccc; min-height: 350px; margin-left: -51px; -moz-box-shadow: 1px 1px 3px #888; -webkit-box-shadow: 1px 1px 3px #888; box-shadow: 1px 1px 3px #888;">
                            </div>
                            <script type="text/javascript">

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
                            </script>
                    </form>
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
