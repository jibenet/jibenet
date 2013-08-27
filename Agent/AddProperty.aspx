<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProperty.aspx.cs" Inherits="Agent_AddProperty" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Clipas</title>
    <link rel="icon" type="image/png" href="http://glosolarbr.com/images/favicon.ico" />
    <link href="style/default.css" rel="stylesheet" type="text/css" />
    <link href="style/defaultASP.css" rel="stylesheet" type="text/css" />
    <script src="js/tabcontent.js" type="text/javascript"></script>
    <link href="style/tabcontent.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="jqtransformplugin/jqtransform.css" type="text/css" media="all" />
    <script type="text/javascript" src="jqtransformplugin/jquery.js"></script>
    <script type="text/javascript" src="jqtransformplugin/jquery.jqtransform.js"></script>
    <script type="javascript">
	    $(function () {
	        $('#form').jqTransform({ imgPath: 'jqtransformplugin/img/' });
	    });
    </script>

    <style>
        upl
        {
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

    <script type="text/javascript" src="zebra_datepicker.js"></script>
    <link rel="stylesheet" href="default.css" type="text/css">
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
                <!-- Mid Text -->
                <div style="background-color: #fff; width: 96%; float: left; border-radius: 10px; box-shadow: 2px 2px 4px #E9E9E9; padding: 2%;">

                    <div style="width: 100%; float: left; text-align: center;">
                        <h3>Aumento Leads a Sua Propriedade Hoje.<br>
                            Publicar a Centenas de Inquilinos Qualificados</h3>

                        <h3 style="font-size: 20px; line-height: 50px; margin-top: 20px; border-top: 1px solid #ccc;">Promocao por Tempo Limitado: Lista de Graca!</h3>
                    </div>

                    <form id="form" runat="server">

                        <div style="width: 96%; float: left; border: 1px solid #ccc; border-radius: 10px; padding: 2%;">
                            <div style="float: left; width: 65%;">
                                <label>Nome da propriedade</label>
                                <input id="txtPName" type="text" runat="server" style="width: 250px;" size="28" class="formstyle" />
                                <%--                                <asp:TextBox ID="txtAddress" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>--%>
                                <asp:RequiredFieldValidator ID="rvalPName" runat="server" ErrorMessage="" ControlToValidate="txtPName" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revalPName" runat="server" ErrorMessage="" ControlToValidate="txtPName" ValidationGroup="property"></asp:RegularExpressionValidator>

                                <%--<input name="fname" type="text" id="fname"  />--%>
                                <br />

                                <br />

                                <label>Endereço</label>
                                <input id="iAddress" type="text" runat="server" style="width: 250px;" size="28" class="formstyle" />
                                <%--                                <asp:TextBox ID="txtAddress" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>--%>
                                <asp:RequiredFieldValidator ID="rvalAddress" runat="server" ErrorMessage="" ControlToValidate="iAddress" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revalAddress" runat="server" ErrorMessage="" ControlToValidate="iAddress" ValidationGroup="property"></asp:RegularExpressionValidator>
                                <input id="hdLocation" type="hidden" runat="server" />

                                <%--<input name="fname" type="text" id="fname"  />--%>
                            &nbsp;<br />
                                <span style="padding-left: 16%; color: #FF0000; font-size: 11px">arrastar marcador no mapa para marcar exata localização da propriedade.</span>
                                <br />
                                <label>CEP</label>
                                <asp:TextBox ID="txtZipCode" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>&nbsp;
                            <asp:RegularExpressionValidator ID="revalZipCode" runat="server" ErrorMessage="" ControlToValidate="txtZipCode" ValidationGroup="property"></asp:RegularExpressionValidator>

                                <%--<input name="lname" type="text" id="lname" style="width: 250px;" size="28" placeholder="00000 - 000" />--%>
                                <br />
                                <br />
                                <label>Propriedade</label>
                                <asp:DropDownList ID="dropType" runat="server" Style="width: 260px;" CssClass="formstyle">
                                    <asp:ListItem Value="Escritório"></asp:ListItem>
                                    <asp:ListItem Value="Loja"></asp:ListItem>
                                </asp:DropDownList>

                                <%--<select name="subject2" id="subject2" style="width: 260px;">
                                <option value="escritoria">Escritorio</option>
                                <option value="loja">Loja</option>
                            </select>--%>
                                <br />
                                <br />
                                <label>Disponível a partir de</label>
                                <asp:TextBox ID="txtAvailableDate" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rvalDate" runat="server" ErrorMessage="" ControlToValidate="txtAvailableDate" ValidationGroup="property">*</asp:RequiredFieldValidator>


                                <asp:RegularExpressionValidator ID="revalDate" runat="server" ErrorMessage="" ControlToValidate="txtAvailableDate" ValidationGroup="property"></asp:RegularExpressionValidator>
                                <%--                            <input name="phone" type="text" id="phone" onkeyup="checkNum(this)" style="width: 250px;" size="28" placeholder="dd / mm / yyyy" />--%>
                                <br />
                                <br />
                                <label>Area</label>
                                <asp:TextBox ID="txtArea" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rvalArea" runat="server" ErrorMessage="" ControlToValidate="txtArea" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                m<sup>2</sup>
                                <asp:RegularExpressionValidator ID="revalArea" runat="server" ErrorMessage="" ControlToValidate="txtArea" ValidationGroup="property"></asp:RegularExpressionValidator>

                                <%--                            <input name="phone2" type="text" id="phone2" onkeyup="checkNum(this)" style="width: 250px;" size="28" />--%>
                                <asp:RangeValidator ID="rvArea" runat="server" ControlToValidate="txtArea" ErrorMessage="1 e 32000" Type="Integer" MinimumValue="1" MaximumValue="5000"></asp:RangeValidator>
                                <br />
                                <br />
                                <label>Rate</label>
                                <asp:TextBox ID="txtRate" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rvalRate" runat="server" ErrorMessage="" ControlToValidate="txtRate" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                R$
                            <asp:RegularExpressionValidator ID="revalRate" runat="server" ErrorMessage="" ControlToValidate="txtRate" ValidationGroup="property"></asp:RegularExpressionValidator>

                                <%--                            <input name="phone2" type="text" id="Text1" onkeyup="checkNum(this)" style="width: 250px;" size="28" />--%>
                                <asp:RangeValidator ID="rvRate" runat="server" ControlToValidate="txtRate" ErrorMessage="1 e 32000" Type="Integer" MinimumValue="1" MaximumValue="50000"></asp:RangeValidator>

                                <br />
                                <br />
                                <label>Fotos</label>
                                <iframe src="AutoUpload.aspx" style="overflow: hidden; min-height: 40px; top: -9px; position: relative; width: 400px;"></iframe>

                                <%--                            <input name="" type="file">--%>
                                <br>
                                <br>
                                <div class="head">
                                    <br>
                                    <label>Recursos</label>
                                    <label>Estacionamento</label>
                                    <asp:TextBox ID="txtParkings" runat="server" Style="width: 200px;" size="28" CssClass="formstyle"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="" ControlToValidate="txtParkings" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revalParkings" runat="server" ErrorMessage="" ControlToValidate="txtParkings" ValidationGroup="property"></asp:RegularExpressionValidator>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtParkings" ErrorMessage="Valor entre 1 e 100" Type="Integer" MinimumValue="1" MaximumValue="100"></asp:RangeValidator>
                                    <%--                            <input name="phone2" type="text" id="Text2" onkeyup="checkNum(this)" style="width: 180px;" size="16" />--%>
                                    <br>
                                    <br>
                                    <label>&nbsp;</label>
                                    <label>Banheiros</label>
                                    <asp:TextBox ID="txtToilets" runat="server" Style="width: 200px;" size="28" CssClass="formstyle"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="" ControlToValidate="txtToilets" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revalToilets" runat="server" ErrorMessage="" ControlToValidate="txtToilets" ValidationGroup="property"></asp:RegularExpressionValidator>
                                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtToilets" ErrorMessage="Valor entre 1 e 100" Type="Integer" MinimumValue="1" MaximumValue="100"></asp:RangeValidator>


                                    <%--                            <input name="phone3" type="text" id="phone3" onkeyup="checkNum(this)" style="width: 180px;" size="16" />--%>
                                    <br>
                                    <br>
                                    <label>&nbsp;</label>
                                    <label>Cozinha </label>
                                    <asp:TextBox ID="txtKitchens" runat="server" Style="width: 200px;" size="28" CssClass="formstyle"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="" ControlToValidate="txtKitchens" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revalKitchen" runat="server" ErrorMessage="" ControlToValidate="txtKitchens" ValidationGroup="property"></asp:RegularExpressionValidator>
                                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtKitchens" ErrorMessage="Valor entre 1 e 100" Type="Integer" MinimumValue="1" MaximumValue="100"></asp:RangeValidator>

                                    <%--                            <input name="phone3" type="text" id="Text3" onkeyup="checkNum(this)" style="width: 180px;" size="16" />--%>
                                    <br>
                                    <br>
                                    <label>&nbsp;</label>
                                    <label>Recepcao</label>
                                    <asp:CheckBox ID="chkReception" runat="server" size="28" />
                                    <%--                            <input name="" type="checkbox" value="" size="28">--%>
                                    <br>
                                    <br>
                                    <label>&nbsp;</label>
                                    <label>Mobiliado</label>
                                    <asp:CheckBox ID="chkFurnished" runat="server" size="28" />
                                    <%--                            <input name="" type="checkbox" value="" size="28">--%>
                                    <br>
                                    <br>
                                    <label>Detalhes</label>
                                    <asp:TextBox ID="txtDetail" runat="server" Style="width: 430px;" Height="116px" TextMode="MultiLine" CssClass="formstyle"></asp:TextBox>&nbsp;
                                <asp:RegularExpressionValidator ID="revalDetail" runat="server" ErrorMessage="" ControlToValidate="txtDetail" ValidationGroup="property"></asp:RegularExpressionValidator>

                                    <%--                            <textarea name="phone2" cols="35" rows="3" id="Textarea1" onkeyup="checkNum(this)" style="width: 280px;"></textarea>--%>
                                </div>
                                <div style="width: 96%; float: left; border: 1px solid #ccc; border-radius: 10px; padding: 2%; margin-top: 10px;">
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <label>Email</label>
                                            <asp:TextBox ID="txtEmail" runat="server" Style="width: 250px;" size="28" OnTextChanged="txtEmail_TextChanged" CausesValidation="false" AutoPostBack="True" CssClass="formstyle"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rvalEmail" runat="server" ErrorMessage="" ControlToValidate="txtEmail" ValidationGroup="property">*</asp:RequiredFieldValidator>

                                            <asp:RegularExpressionValidator ID="revalEmail" runat="server" ErrorMessage="" ControlToValidate="txtEmail" ValidationGroup="property"></asp:RegularExpressionValidator>
                                            <%--                            <input name="phone2" type="text" id="Text6" onkeyup="checkNum(this)" style="width: 250px;" size="28" />--%>
                                            <br>
                                            <br>
                                            <label>Nome</label>
                                            <asp:TextBox ID="txtName" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rvalName" runat="server" ErrorMessage="" ControlToValidate="txtName" ValidationGroup="property">*</asp:RequiredFieldValidator>

                                            <asp:RegularExpressionValidator ID="revalName" runat="server" ErrorMessage="" ControlToValidate="txtName" ValidationGroup="property"></asp:RegularExpressionValidator>
                                            <%--                            <input name="phone2" type="text" id="Text4" onkeyup="checkNum(this)" style="width: 250px;" size="28" />--%>
                                            <br>
                                            <br>
                                            <label>Empresa</label>
                                            <asp:TextBox ID="txtBusiness" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>&nbsp;
                                        <asp:RegularExpressionValidator ID="revalBusiness" runat="server" ErrorMessage="" ControlToValidate="txtBusiness" ValidationGroup="property"></asp:RegularExpressionValidator>

                                            <%--                            <input name="phone2" type="text" id="Text5" onkeyup="checkNum(this)" style="width: 250px;" size="28" />--%>
                                            <br>
                                            <br>

                                            <label>Telefone</label>
                                            <asp:TextBox ID="txtPhone" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>&nbsp;
                                        <asp:RegularExpressionValidator ID="revalPhone" runat="server" ErrorMessage="" ControlToValidate="txtPhone" ValidationGroup="property"></asp:RegularExpressionValidator>

                                            <%--                            <input name="phone2" type="text" id="Text7" onkeyup="checkNum(this)" style="width: 250px;" size="28" />--%>
                                            <br>
                                            <br>
                                            <label>&nbsp;</label>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <div class="green-butt">
                                        <p>
                                            <a>
                                                <asp:Button ID="btnsubmit" runat="server" Text="Enviar imóvel" BackColor="Transparent" CssClass="text" OnClick="btnsubmit_Click" CausesValidation="true" ValidationGroup="property" />
                                            </a>
                                        </p>
                                    </div>
                                    <%--                            <input name="submit" type="submit" value="" />--%>
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




</body>
</html>
