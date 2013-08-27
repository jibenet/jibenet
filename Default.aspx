<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Clipas</title>
    <link rel="icon" type="image/png" href="http://glosolarbr.com/images/favicon.ico" /> 

    <link href="style/default.css" rel="stylesheet" type="text/css" />
    <script src="js/tabcontent.js" type="text/javascript"></script>
    <link href="style/tabcontent-index.css" rel="stylesheet" type="text/css" />

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
        .pac-container:after {
            content: none !important;
        }
    </style>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btnEclick").click(function () {
                var url = 'Agent/ListProperty.aspx?type=Escritório&address=' + $('#eSearch').val();
                $(location).attr('href', url);
            })
        });
        $(function () {
            $("#btnLclick").click(function () {
                var url = 'Agent/ListProperty.aspx?type=Loja&address=' + $('#lSearch').val();
                $(location).attr('href', url);
            })
        });
    </script>
</head>
<body>
    <!-- Header Starts -->
    <header>
        <div id="header">

            <div class="header-index">

                <a href="Default.aspx">
                    <img src="images/jibenet.png" alt="Jibenet" border="0" style="float: left;"></a>
                <div class="right">
                    <span>
                        <select name="select" id="select">
                            <option value="Entre">Entre</option>

                        </select>
                    </span>
                    <span>
                        <select name="select" id="select1">
                            <option value="Entre">Ajudar</option>

                        </select>
                    </span>
                    <div class="green-tab">
                        <p><a href="Agent/AddProperty.aspx">Listar Sua Properiedade</a></p>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Ends -->

    <!-- Section Starts -->
    <section>

        <!-- Search Panel Starts -->
        <div id="mainbg">
            <div>
                <h1>Plataforma nº 1 do Brasil
                    <br>
                    <span>Para Imóveis Comerciais</span></h1>
                <br>
                <br>
                <div>
                    <ul class="tabs" persist="true">
                        <li><a class="new_active" href="#" rel="view1">Escritório</a></li>
                        <li><a class="new_active" href="#" rel="view2">Loja</a></li>
                    </ul>
                    <div class="tabcontents">
                        <div id="view1" class="tabcontent">
                            <form style="margin: 0px; padding: 0px; float: left;">
                                <div style="width: 612px; float: left; background-image: url(images/searchbg.png); margin-right: 10px; background-repeat: no-repeat; height: 44px; padding: 4px;">
                                    <input id="btnEclick" type="button" value="" class="searchbtn"><input id="eSearch" name="search" type="text" placeholder="Digite Um Bairro" style="padding: 4px 4px; width: 88%; margin-top: 8px; border: 0px; background: none;">
                                </div>
                                <div class="ddmenu" style="width: 128px; float: right;">
                                    <select name="jumpMenu" id="jumpMenu">
                                        <option>Alugar</option>

                                    </select>
                                </div>
                            </form>
                            <br>
                            <br>
                            <h3>
                                <a href="Agent/ListProperty.aspx?type=Escritório&address=Sao Paulo">Sao Paulo</a><br>
                                <a href="Agent/ListProperty.aspx?type=Escritório&address=Italim Bibi" class="greenselect">Italim Bibi</a><br>
                                <a href="Agent/ListProperty.aspx?type=Escritório&address=Vila Olimpia" class="greenselect">Vila Olimpia</a><br>
                                <a href="Agent/ListProperty.aspx?type=Escritório&address=Morumbi" class="greenselect">Morumbi </a></h3>
                        </div>
                        <div id="view2" class="tabcontent">
                            <form style="margin: 0px; padding: 0px; float: left;">
                                <div style="width: 612px; float: left; background-image: url(images/searchbg.png); margin-right: 10px; background-repeat: no-repeat; height: 44px; padding: 4px;">
                                    <input id="btnLclick" type="button" value="" class="searchbtn" /><input id="lSearch" name="search" type="text" placeholder="Digite Um Bairro" style="padding: 4px 4px; width: 88%; margin-top: 8px; border: 0px; background: none;" />
                                </div>
                                <div class="ddmenu" style="width: 128px; float: right;">
                                    <select name="jumpMenu" id="Select2">
                                        <option>Alugar</option>

                                    </select>
                                </div>
                            </form>
                            <br>
                            <h3>
                                <a href="Agent/ListProperty.aspx?type=Loja&address=Sao Paulo">Sao Paulo</a><br>
                                <a href="Agent/ListProperty.aspx?type=Loja&address=Italim Bibi" class="greenselect">Italim Bibi</a><br>
                                <a href="Agent/ListProperty.aspx?type=Loja&address=Vila Olimpia" class="greenselect">Vila Olimpia</a><br>
                                <a href="Agent/ListProperty.aspx?type=Loja&address=Morumbi" class="greenselect">Morumbi </a></h3>

                        </div>
                    </div>
                </div>
                <!--<form action="inner.html" method="po" style="margin:0px; padding:0px; float:left;">
  <div style="width:100%; float:left; margin-left:20px; height:31px;"><a href="#"><img src="images/escritoria.png" alt="escritoria"></a><a href="#"><img src="images/loja.png" alt="escritoria"></a></div>
  <div style="width:612px; float:left; background-image:url(images/searchbg.png); background-repeat:no-repeat; height:44px; padding:4px;">
  <input name="search" type="submit" value="" class="searchbtn"><input name="search" type="text" placeholder="Digite Um Bairro" style="padding:4px 4px; width:88%; margin-top:8px; border:0px; background:none;">  </div>
<div class="ddmenu" style="width:128px; float:right;">
  <select name="jumpMenu" id="jumpMenu" onChange="MM_jumpMenu('parent',this,0)" >
        <option>Alugar</option>
        <option>Option 1</option>
         <option>Option 2</option>
     </select>
 </div>
 
</form>
<br>
<br>
<h3>
<a href="#">Sao Paulo</a><br>
<a href="#">Italim Bibi</a><br>
<a href="#">Vila Olimpia</a><br>
<a href="#">Morumbi </a></h3>-->
            </div>
        </div>
        <!-- Search Panel Ends -->

        <div id="txtcontainer">
            <div>
                <div style="width: 28%; float: left; padding: 3% 14%;">
                    <h1>Pesquisar Todo o Mercado Imobiliário</h1>
                    <img src="images/umlugar.jpg" alt="/Os detalhes" width="200" height="87">
                    <br>
                    Visitar todos São Paulo com apenas alguns cliques. Nós consolidamos todas as propriedades comerciais aqui.
              </div>

                <div style="width: 33%; float: left; padding: 3% 0%;">
                    <h1>Aumentar suas Leads com a Exposição Imediata</h1>
                    <img src="images/osdetalhes.jpg" alt="Facilmente">
                    <br>
                    A maneira mais rápida e mais fácil de comercializar o seu imóvel. 
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
