<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProperty.aspx.cs" Inherits="Agent_AddProperty" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Clipas</title>
    <link href="style/default.css" rel="stylesheet" type="text/css" />

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

    <%--FILE UPLOAD--%>
    <link rel="Stylesheet" type="text/css" href="CSS/uploadify.css" />
    <script type="text/javascript" src="scripts/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="scripts/jquery.uploadify.js"></script>

    <%--GOOGLE API--%>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places" type="text/javascript"></script>
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
</head>
<body class="innerpage">
    <p>
        <br />
    </p>
    <p>
        &nbsp;
    </p>
    <!-- Header Starts -->
    <header>
        <div id="header">
            <div>

                <a href="../Default.aspx">
                    <img src="images/jibenet.png" alt="Jibenet" border="0" style="float: left;"></a>
                <div style="width: 500px; float: left; padding-left: 1%; border-left: 1px solid #aaa; margin-left: 10px;">
                    <form action="" method="post">
                        <div style="width: 90%; float: left; height: 19px; margin-left: 20px;">
                            <a href="#">
                                <img src="images/escritoria-inner.png" alt="escritoria"></a><a href="#"><img src="images/loja-inner.png" alt="escritoria"></a>
                        </div>
                        <div style="width: 392px; float: left; background-image: url(images/searchbg-inner.png); background-repeat: no-repeat; height: 26px; padding: 4px;">
                            <%--                                              <asp:Button ID="btnSearch" runat="server" Text="" CssClass="searchbtn-inner" OnClick="btnSearch_Click" />--%>
                            <%--                                        <asp:TextBox ID="txtSearch" runat="server" Style="padding: 2px 4px; width: 88%; margin-top: 2px; border: 0px; background: none;"></asp:TextBox>--%>
                        </div>

                        <div class="ddmenu-inner" style="width: 88px; float: left; margin-left: 4px;">
                            <select name="jumpMenu" id="jumpMenu" onchange="MM_jumpMenu('parent',this,0)">
                                <option>Alugar</option>
                                <option>Option 1</option>
                                <option>Option 1</option>
                            </select>
                        </div>


                    </form>

                </div>


                <div class="right">
                    <span>
                        <select name="select" id="select">
                            <option value="Entre">Entre</option>
                            <option value="Entre">Option 1</option>
                            <option value="Entre">Option 2</option>
                            <option value="Entre">Option 3</option>
                        </select>
                    </span>
                    <span>
                        <select name="select" id="select2">
                            <option value="Entre">Ajudar</option>
                            <option value="Entre">Option 1</option>
                            <option value="Entre">Option 2</option>
                            <option value="Entre">Option 3</option>
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
                <!-- Mid Text -->
                <div style="background-color: #fff; width: 96%; float: left; border-radius: 10px; box-shadow: 2px 2px 4px #E9E9E9; padding: 2%;">

                    <div style="width: 100%; float: left; text-align: center;">
                        <h3>Aumento Leads a Sua Propriedade Hoje.<br>
                            Publicar a Centenas de Inquilinos Qualificados</h3>

                        <h3 style="font-size: 20px; line-height: 50px; margin-top: 20px; border-top: 1px solid #ccc;">Promocao por Tempo Limitado: Lista de Graca!</h3>
                    </div>

                    <form id="form" runat="server">

                        <div style="width: 96%; float: left; border: 1px solid #ccc; border-radius: 10px; padding: 2%;">
                            <label>Endereço</label>
                            <asp:TextBox ID="txtAddress" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rvalAddress" runat="server" ErrorMessage="" ControlToValidate="txtAddress" ValidationGroup="property">*</asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="revalAddress" runat="server" ErrorMessage="" ControlToValidate="txtAddress" ValidationGroup="property"></asp:RegularExpressionValidator>

                            <%--<input name="fname" type="text" id="fname"  />--%>
                            &nbsp;<br />
                            <br />
                            <label>A localização no mapa</label>
                            <asp:TextBox ID="txtLocation" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="" ControlToValidate="txtLocation" ValidationGroup="property">*</asp:RequiredFieldValidator>
                            <i><u>
                                <asp:HyperLink ID="yhpLocation" runat="server" NavigateUrl="Coordinates.html" Target="_blank">Encontre a localização no mapa</asp:HyperLink></i></u>
                            <%--<input name="fname" type="text" id="fname"  />--%>
                            &nbsp;<br />
                            <br />
                            <label>CEP</label>
                            <asp:TextBox ID="txtZipCode" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>&nbsp;
                            <asp:RegularExpressionValidator ID="revalZipCode" runat="server" ErrorMessage="" ControlToValidate="txtZipCode" ValidationGroup="property"></asp:RegularExpressionValidator>

                            <%--<input name="lname" type="text" id="lname" style="width: 250px;" size="28" placeholder="00000 - 000" />--%>
                            <br />
                            <br />
                            <label>Propriedade</label>
                            <asp:DropDownList ID="dropType" runat="server" Style="width: 260px;" CssClass="formstyle">
                                <asp:ListItem Value="Escritorio"></asp:ListItem>
                                <asp:ListItem Value="Loja"></asp:ListItem>

                            </asp:DropDownList>

                            <%--<select name="subject2" id="subject2" style="width: 260px;">
                                <option value="escritoria">Escritorio</option>
                                <option value="loja">Loja</option>
                            </select>--%>
                            <br />
                            <br />
                            <label>Disponivel a Partir</label>
                            <asp:TextBox ID="txtAvailableDate" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                            <asp:CalendarExtender ID="txtAvailableDate_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtAvailableDate" Format="dd-MM-yyyy">
                            </asp:CalendarExtender>
                            <asp:RequiredFieldValidator ID="rvalDate" runat="server" ErrorMessage="" ControlToValidate="txtAvailableDate" ValidationGroup="property">*</asp:RequiredFieldValidator>


                            <asp:RegularExpressionValidator ID="revalDate" runat="server" ErrorMessage="" ControlToValidate="txtAvailableDate" ValidationGroup="property"></asp:RegularExpressionValidator>
                            <%--                            <input name="phone" type="text" id="phone" onkeyup="checkNum(this)" style="width: 250px;" size="28" placeholder="dd / mm / yyyy" />--%>
                            <br />
                            <br />
                            <label>Area</label>
                            <asp:TextBox ID="txtArea" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rvalArea" runat="server" ErrorMessage="" ControlToValidate="txtArea" ValidationGroup="property">*</asp:RequiredFieldValidator>
                            m2
                            <asp:RegularExpressionValidator ID="revalArea" runat="server" ErrorMessage="" ControlToValidate="txtArea" ValidationGroup="property"></asp:RegularExpressionValidator>

                            <%--                            <input name="phone2" type="text" id="phone2" onkeyup="checkNum(this)" style="width: 250px;" size="28" />--%>

                            <br />
                            <br />
                            <label>Rate</label>
                            <asp:TextBox ID="txtRate" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rvalRate" runat="server" ErrorMessage="" ControlToValidate="txtRate" ValidationGroup="property">*</asp:RequiredFieldValidator>
                            /mês
                            <asp:RegularExpressionValidator ID="revalRate" runat="server" ErrorMessage="" ControlToValidate="txtRate" ValidationGroup="property"></asp:RegularExpressionValidator>

                            <%--                            <input name="phone2" type="text" id="Text1" onkeyup="checkNum(this)" style="width: 250px;" size="28" />--%>

                            <br />
                            <br />
                            <label>Fotos</label>
                            <div>
                                <asp:FileUpload ID="FileUpload1" runat="server" />&nbsp;            
                            </div>
                            <div class="green-butt-small">
                                <p>
                                    <a class="upl" href="javascript:$('#<%=FileUpload1.ClientID%>').fileUploadStart()">Upload</a>
                                </p>
                            </div>
                            <%--<a href="javascript:$('#<%=FileUpload1.ClientID%>').fileUploadClearQueue()">Clear</a>--%>
                            <%--                            <input name="" type="file">--%>
                            <br>
                            <br>
                            <div class="head">
                                <label>Recursos</label>
                                <label>Lugarer de Estacionamento</label>
                                <asp:TextBox ID="txtParkings" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="" ControlToValidate="txtParkings" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revalParkings" runat="server" ErrorMessage="" ControlToValidate="txtParkings" ValidationGroup="property"></asp:RegularExpressionValidator>

                                <%--                            <input name="phone2" type="text" id="Text2" onkeyup="checkNum(this)" style="width: 180px;" size="16" />--%>
                                <br>
                                <br>
                                <label>&nbsp;</label>
                                <label>Banheiros</label>
                                <asp:TextBox ID="txtToilets" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="" ControlToValidate="txtToilets" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revalToilets" runat="server" ErrorMessage="" ControlToValidate="txtToilets" ValidationGroup="property"></asp:RegularExpressionValidator>


                                <%--                            <input name="phone3" type="text" id="phone3" onkeyup="checkNum(this)" style="width: 180px;" size="16" />--%>
                                <br>
                                <br>
                                <label>&nbsp;</label>
                                <label>Cozinha </label>
                                <asp:TextBox ID="txtKitchens" runat="server" Style="width: 250px;" size="28" CssClass="formstyle"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="" ControlToValidate="txtKitchens" ValidationGroup="property">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revalKitchen" runat="server" ErrorMessage="" ControlToValidate="txtKitchens" ValidationGroup="property"></asp:RegularExpressionValidator>

                                <%--                            <input name="phone3" type="text" id="Text3" onkeyup="checkNum(this)" style="width: 180px;" size="16" />--%>
                                <br>
                                <br>
                                <label>&nbsp;</label>
                                <label>Area de Recepcao</label>
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
                                        <asp:Button ID="btnsubmit" runat="server" Text="Enviar imóvel" BackColor="Transparent" OnClick="btnsubmit_Click" CausesValidation="true" ValidationGroup="property" />
                                    </p>
                                </div>
                                <%--                            <input name="submit" type="submit" value="" />--%>
                            </div>
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
                © JibeNet 2013 Termos de Uso


            </div>
        </div>
    </footer>
    <!-- Footer Ends -->



</body>
</html>
<script type="text/javascript">
    $(window).load(
        function () {
            $("#<%=FileUpload1.ClientID%>").fileUpload({
                'uploader': 'scripts/uploader.swf',
                'cancelImg': 'images/cancel.png',
                'buttonText': 'Browse Files',
                'script': 'Upload.ashx',
                'folder': 'uploads',
                'fileDesc': 'Image Files',
                'fileExt': '*.jpg;*.jpeg;*.gif;*.png',
                'multi': true,
                'auto': false
            });
        }
);
</script>
