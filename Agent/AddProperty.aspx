<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProperty.aspx.cs" Inherits="Agent_AddProperty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Jibenet - Add Property</title>
    <link href="../style/default.css" rel="stylesheet" type="text/css" />
    <script src="../js/tabcontent.js" type="text/javascript"></script>
    <link href="../style/tabcontent.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../jqtransformplugin/jqtransform.css" type="text/css" media="all" />
    <script type="text/javascript" src="../jqtransformplugin/jquery.js"></script>
    <script type="text/javascript" src="../jqtransformplugin/jquery.jqtransform.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#form').jqTransform({ imgPath: 'jqtransformplugin/img/' });
        });
    </script>

</head>
<body class="innerpage">
    <!-- Header Starts -->
    <header>
        <div id="header">
            <div class="header">
                <div class="logo">
                    <a href="index.html">
                        <img src="../images/jibenet.png" width="175" height="64"></a>
                </div>
                <div class="header-middle">
                    <div>
                        <ul class="tabs" persist="true">
                            <li><a href="#" rel="view1">Escritoria</a></li>
                            <li><a href="#" rel="view2">Loja</a></li>
                        </ul>
                        <div class="tabcontents">
                            <div id="view1" class="tabcontent">
                                <form action="" method="post">
                                    <div style="width: 392px; float: left; background-image: url(../images/searchbg-inner.png); background-repeat: no-repeat; height: 26px; padding: 4px;">
                                        <input name="search" type="button" value="" class="searchbtn-inner"><input name="search" type="text" placeholder="Digite Um Bairro" style="padding: 2px 4px; width: 88%; margin-top: 2px; border: 0px; background: none;">
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
                            <div id="view2" class="tabcontent">
                                <form action="" method="post">
                                    <div style="width: 392px; float: left; background-image: url(../images/searchbg-inner.png); background-repeat: no-repeat; height: 26px; padding: 4px;">
                                        <input name="search" type="button" value="" class="searchbtn-inner"><input name="search" type="text" placeholder="Digite Um Bairro" style="padding: 2px 4px; width: 88%; margin-top: 2px; border: 0px; background: none;">
                                    </div>

                                    <div class="ddmenu-inner" style="width: 88px; float: left; margin-left: 4px;">
                                        <select name="jumpMenu" id="Select1" onchange="MM_jumpMenu('parent',this,0)">
                                            <option>Alugar</option>
                                            <option>Option 1</option>
                                            <option>Option 1</option>
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
                        <p><a href="">Listar Sua Properiedade</a></p>
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

                    <form action="" name="" runat="server" onsubmit="return check()" id="form">

                        <div style="width: 96%; float: left; border: 1px solid #ccc; border-radius: 10px; padding: 2%;">
                            <label>Endereço</label>
                            <asp:TextBox ID="txtAddress" runat="server" Style="width: 250px;" size="28"></asp:TextBox>
                            <%--<input name="fname" type="text" id="fname"  />--%>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtAddress" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <label>CEP</label>
                            <asp:TextBox ID="txtZipCode" runat="server" Style="width: 250px;" size="28"></asp:TextBox>
                            <%--<input name="lname" type="text" id="lname" style="width: 250px;" size="28" placeholder="00000 - 000" />--%>
                            <br />
                            <br />
                            <label>Propriedade</label>
                            <asp:DropDownList ID="dropType" runat="server" Style="width: 260px;">
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
                            <asp:TextBox ID="txtAvailableDate" runat="server" Style="width: 250px;" size="28"></asp:TextBox>
                            <%--                            <input name="phone" type="text" id="phone" onkeyup="checkNum(this)" style="width: 250px;" size="28" placeholder="dd / mm / yyyy" />--%>
                            <br />
                            <br />
                            <label>Area</label>
                            <asp:TextBox ID="txtArea" runat="server" Style="width: 250px;" size="28"></asp:TextBox>
                            <%--                            <input name="phone2" type="text" id="phone2" onkeyup="checkNum(this)" style="width: 250px;" size="28" />--%>
                            m2
                            <br />
                            <br />
                            <label>Rate</label>
                            <asp:TextBox ID="txtRate" runat="server" Style="width: 250px;" size="28"></asp:TextBox>
                            <%--                            <input name="phone2" type="text" id="Text1" onkeyup="checkNum(this)" style="width: 250px;" size="28" />--%>
                            / mês
                            <br />
                            <br />
                            <label>Fotos</label>
                            <asp:FileUpload ID="fuImage" runat="server" />
                            <%--                            <input name="" type="file">--%>
                            <br>
                            <br>
                            <label>Recursos</label>
                            <label>Lugarer de Estacionamento</label>
                            <asp:TextBox ID="txtParking" runat="server" Style="width: 250px;" size="28"></asp:TextBox>

                            <%--                            <input name="phone2" type="text" id="Text2" onkeyup="checkNum(this)" style="width: 180px;" size="16" />--%>
                            <br>
                            <br>
                            <label>&nbsp;</label>
                            <label>Banheiros</label>
                            <asp:TextBox ID="txtToilet" runat="server" Style="width: 250px;" size="28"></asp:TextBox>

                            <%--                            <input name="phone3" type="text" id="phone3" onkeyup="checkNum(this)" style="width: 180px;" size="16" />--%>
                            <br>
                            <br>
                            <label>&nbsp;</label>
                            <label>Cozinha </label>
                            <asp:TextBox ID="txtKitchen" runat="server" Style="width: 250px;" size="28"></asp:TextBox>

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
                            <asp:TextBox ID="txtDetail" runat="server" Style="width: 250px;" TextMode="MultiLine"></asp:TextBox>
                            <%--                            <textarea name="phone2" cols="35" rows="3" id="Textarea1" onkeyup="checkNum(this)" style="width: 280px;"></textarea>--%>
                        </div>

                        <div style="width: 96%; float: left; border: 1px solid #ccc; border-radius: 10px; padding: 2%; margin-top: 10px;">

                            <label>Nome</label>
                            <asp:TextBox ID="txtName" runat="server" Style="width: 250px;" size="28"></asp:TextBox>
                            <%--                            <input name="phone2" type="text" id="Text4" onkeyup="checkNum(this)" style="width: 250px;" size="28" />--%>
                            <br>
                            <br>
                            <label>Empresa</label>
                            <asp:TextBox ID="txtBusiness" runat="server" Style="width: 250px;" size="28"></asp:TextBox>
                            <%--                            <input name="phone2" type="text" id="Text5" onkeyup="checkNum(this)" style="width: 250px;" size="28" />--%>
                            <br>
                            <br>
                            <label>Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" Style="width: 250px;" size="28"></asp:TextBox>
                            <%--                            <input name="phone2" type="text" id="Text6" onkeyup="checkNum(this)" style="width: 250px;" size="28" />--%>
                            <br>
                            <br>
                            <label>Telefone</label>
                            <asp:TextBox ID="txtPhone" runat="server" Style="width: 250px;" size="28"></asp:TextBox>
                            <%--                            <input name="phone2" type="text" id="Text7" onkeyup="checkNum(this)" style="width: 250px;" size="28" />--%>
                            <br>
                            <br>
                            <label>&nbsp;</label>
                            <asp:Button ID="btnsubmit" runat="server" Text="Enviar imóvel" OnClick="btnsubmit_Click" />
                            <%--                            <input name="submit" type="submit" value="" />--%>
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
                        <img src="../images/fb.png" alt="Facebook"></a> <a href="#">
                            <img src="../images/twitt.png" width="30" height="30" alt="Twitter"></a>
                </div>
                <a href="#">Sobre</a> |  <a href="#">FAQ</a> |  <a href="#">Imprensa</a> |  <a href="#">Blog</a> |  <a href="#">Mobile</a> |  <a href="#">Contato.</a><br>
                © JibeNet 2013 Termos de Uso


            </div>
        </div>
    </footer>
    <!-- Footer Ends -->



</body>
</html>
