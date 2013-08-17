﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Jibenet</title>
    <link href="style/default.css" rel="stylesheet" type="text/css" />

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
    <style>
        .pac-container:after
        {
            content: none !important;
        }
    </style>
</head>
<body>
    <!-- Header Starts -->
    <header>
        <div id="header">
            <div>

                <img src="images/jibenet.png" alt="Jibenet" style="float: left;">
                <div class="right">
                    <a href="#">
                        <img src="images/entre.png" alt="Entre"></a> <a href="#">
                            <img src="images/ajudar.png" alt="Ajudar"></a> <a href="#">
                                <img src="images/listar.png" alt="Listar"></a>
                </div>
            </div>
        </div>
        <!-- Header Ends -->

        <!-- Section Starts -->
        <section>

            <!-- Search Panel Starts -->
            <div id="mainbg">
                <div>
                    <h1>Platforma Numero Um do Brasil
                        <br>
                        <span>Para Imovies Comercias</span></h1>
                    <br>
                    <br>
                    <form action="inner.html" method="po" style="margin: 0px; padding: 0px; float: left;">
                        <div style="width: 100%; float: left; margin-left: 20px; height: 31px;">
                            <a href="#">
                                <img src="images/escritoria.png" alt="escritoria"></a><a href="#"><img src="images/loja.png" alt="escritoria"></a>
                        </div>
                        <div style="width: 612px; float: left; background-image: url(images/searchbg.png); background-repeat: no-repeat; height: 44px; padding: 4px;">
                            <input name="search" type="submit" value="" class="searchbtn" />
                            <input id="searchTextField" name="search" type="text" autocomplete="on" placeholder="Digite Um Bairro" style="padding: 4px 4px; width: 88%; margin-top: 8px; border: 0px; background: none;" />
                        </div>
                        <div class="ddmenu" style="width: 128px; float: right;">
                            <select name="jumpMenu" id="jumpMenu" onchange="MM_jumpMenu('parent',this,0)">
                                <option value="0" selected="selected">Comprar</option>
                                <option value="1">Alugar</option>
                            </select>
                        </div>

                    </form>
                    <br>
                    <br>
                    <h3>
                        <a href="#">Sao Paulo</a><br>
                        <a href="#">Italim Bibi</a><br>
                        <a href="#">Vila Olimpia</a><br>
                        <a href="#">Morumbi </a></h3>
                </div>
            </div>
            <!-- Search Panel Ends -->

            <div id="txtcontainer">
                <div>
                    <div style="width: 28%; float: left; padding: 3% 0%;">
                        <h1>Um lugar, toneladas de listagens</h1>
                        <img src="images/umlugar.jpg" alt="Um Lugar">
                        <br>
                        Seu escritório sonho está lá fora, começar a procurar. Mostramos listagens das principais corretoras e proprietários. Tudo sem nenhum custo para você. Não se preocupe em procurar 
                    </div>

                    <div style="width: 28%; float: left; padding: 3% 5%;">
                        <h1>Os detalhes completos e fotos</h1>
                        <img src="images/osdetalhes.jpg" alt="/Os detalhes">
                        <br>
                        Seu escritório sonho está lá fora, começar a procurar. Mostramos listagens das principais corretoras e proprietários. Tudo sem nenhum custo para você. Não se preocupe em procurar
                    </div>

                    <div style="width: 30%; float: left; padding: 3% 0%;">
                        <h1>Facilmente personalizar os resultados</h1>
                        <img src="images/facilmente.jpg" alt="Facilmente">
                        <br>
                        Seu escritório sonho está lá fora, começar a procurar. Mostramos listagens das principais corretoras e proprietários. Tudo sem nenhum custo para você. Não se preocupe em procurar muitas plataformas. 
                    </div>



                </div>
            </div>

        </section>
        <!-- Section Ends -->




    </header>
    <!-- Footer Starts -->
    <footer>
        <div id="footerbg">&nbsp;</div>
        <div id="footer">
            <div>

                <div class="right"><a href="#">
                    <img src="images/fb.png" alt="Facebook"></a> <a href="#">
                        <img src="images/twitt.png" width="30" height="30" alt="Twitter"></a></div>
                <a href="#">Sobre</a> |  <a href="#">FAQ</a> |  <a href="#">Imprensa</a> |  <a href="#">Blog</a> |  <a href="#">Mobile</a> |  <a href="#">Contato.</a><br>
                © JibeNet 2013 Termos de Uso


            </div>
        </div>
    </footer>
    <!-- Footer Ends -->
</body>
</html>