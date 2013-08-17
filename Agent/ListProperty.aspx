<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListProperty.aspx.cs" Inherits="Agent_ListProperty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Jibe Net</title>
    <link href="style/default.css" rel="stylesheet" type="text/css" />
    <script src="js/tabcontent.js" type="text/javascript"></script>
    <link href="style/tabcontent.css" rel="stylesheet" type="text/css" />
    <%--GOOGLE API--%>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places" type="text/javascript"></script>
    <script type="text/javascript">
        function initialize() {
            var input = document.getElementById('searchTextField');
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

            var input = document.getElementById('searchTextField');
            var autocomplete = new google.maps.places.Autocomplete(input, options);
        }
    </script>
</head>
<body class="innerpage">
    <form id="Form1" runat="server" method="post">
        <!-- Header Starts -->
        <header>
            <div id="header">
                <div class="header">
                    <div class="logo">
                        <a href="index.html">
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


                    <!-- Left Div -->
                    <div style="float: left; width: 20%;" id="leftdiv">
                        <iframe width="100%" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Rua+Frei+Galv%C3%A3o,+135,+Sorocaba+-+S%C3%A3o+Paulo,+Brazil&amp;aq=0&amp;oq=Rua+Frei+Galvao,+135&amp;sll=37.0625,-95.677068&amp;sspn=36.452734,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=R.+Frei+Galv%C3%A3o,+135+-+Vila+Santana,+Sorocaba+-+S%C3%A3o+Paulo,+18080-070,+Brazil&amp;ll=-23.486768,-47.45305&amp;spn=0.010312,0.021136&amp;t=m&amp;z=14&amp;output=embed"></iframe>
                        <br />

                        <h3>Area</h3>
                        <div style="width: 90%; padding: 0px 10px;">
                            <img src="images/area.jpg" width="217" height="28" alt="Area"><br>
                            0 sqft <span style="padding-left: 55%">50,000 sqft</span>
                        </div>
                        <h3>Rate</h3>
                        <div style="width: 90%; padding: 0px 10px;">
                            <img src="images/area.jpg" width="217" height="28" alt="Area"><br>
                            0 sqft <span style="padding-left: 55%">50,000 sqft</span>
                        </div>


                        <h3>Filter By</h3>

                        <div style="width: 90%; padding: 0px 10px;">
                            <form action="" method="get">
                                <input name="" type="checkbox" value="">
                                <label style="padding-left: 10px;">Bairro</label><br>
                                <input name="" type="checkbox" value="">
                                <label style="padding-left: 10px;">Itain Bibi</label><br>
                                <input name="" type="checkbox" value="">
                                <label style="padding-left: 10px;">Bairro</label><br>
                                <input name="" type="checkbox" value="">
                                <label style="padding-left: 10px;">Itain Bibi</label><br>
                            </form>
                        </div>

                    </div>

                    <!-- Rigth Div -->
                    <div style="float: right; width: 20%;" id="rightdiv">
                        <div class="grybox">
                            <h2>Agents No Bairro</h2>
                            <div style="width: 100%; float: left; padding: 12px 0px">
                                <img src="images/person.jpg" width="69" height="74" alt="No Person" style="float: left; padding-right: 6px;">
                                Dummy Text, Joao Pinbeiro
                            <br>
                                <br>
                                Local Impvei's<br>
                                T: 0900 62900
                            </div>

                            <div style="width: 100%; float: left; padding: 12px 0px">
                                <img src="images/person.jpg" width="69" height="74" alt="No Person" style="float: left; padding-right: 6px;">
                                Dummy Text, Joao Pinbeiro
                            <br>
                                <br>
                                Local Impvei's<br>
                                T: 0900 62900
                            </div>

                            <div style="width: 100%; float: left; padding: 12px 0px">
                                <img src="images/person.jpg" width="69" height="74" alt="No Person" style="float: left; padding-right: 6px;">
                                Dummy Text, Joao Pinbeiro
                            <br>
                                <br>
                                Local Impvei's<br>
                                T: 0900 62900
                            </div>

                        </div>

                        <div class="grybox">
                            <h2>Agents No Bairro</h2>
                            <div style="width: 100%; float: left; padding: 12px 0px; border-bottom: 1px solid #ccc;">
                                Dummy Text, Joao Pinbeiro
                            <br>
                                Local Impvei's<br>
                                T: 0900 62900
                            </div>
                            <div style="width: 100%; float: left; padding: 12px 0px; border-bottom: 1px solid #ccc;">
                                Dummy Text, Joao Pinbeiro
                            <br>
                                Local Impvei's<br>
                                T: 0900 62900
                            </div>
                            <div style="width: 100%; float: left; padding: 12px 0px; border-bottom: 1px solid #ccc;">
                                Dummy Text, Joao Pinbeiro
                            <br>
                                Local Impvei's<br>
                                T: 0900 62900
                            </div>

                        </div>

                    </div>

                    <!-- Mid Text -->
                    <div style="float: left; width: 58%; margin-left: 1%; background-color: #efefef;">

                        <div style="width: 90%; float: left; padding: 10px 20px;">
                            <h3 style="font-size: 16px; line-height: 25px;">1-20 de 63.452 listagens </h3>
                        </div>


                        <div style="width: 100%; float: left; height: 550px; overflow: scroll;">
                            <asp:DataList ID="dlstProperty" runat="server" Width="100%" RepeatColumns="1">
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
                            </asp:DataList>




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
