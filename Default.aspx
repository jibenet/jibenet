<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    <link href="style/tabcontent-index.css" rel="stylesheet" type="text/css" />
    <link href="style/flat-ui.css" rel="stylesheet" type="text/css" />
    <link href="style/bootstrap.css" rel="stylesheet" />

    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/tabcontent.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/application.js"></script>
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
        }
    </script>
    <style>
        .pac-container:after {
            content: none !important;
        }

        .ddmenu {
            height: auto;
        }

        .select .btn .filter-option {
            left: 8px;
            top: 13px;
        }

        .open > .dropdown-arrow {
            margin-top: 15px;
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
</head>
<body>
    <!-- Header Starts -->
    <header>
        <div id="header">

            <div class="header-index">

                <a href="Home">
                    <img src="images/jibenet.png" alt="Jibenet" border="0" style="float: left;"></a>
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
                                <div style="width: 537px; float: left; background-image: url(images/searchbg.png); margin-right: 10px; background-repeat: no-repeat; height: 44px; padding: 4px;">
                                    <input id="btnEclick" type="button" value="" class="searchbtn"><input id="eSearch" name="search" type="text" placeholder="Bairro" style="padding: 4px 4px; width: 88%; margin-top: 8px; border: 0px; background: none;">
                                </div>
                                <div class="ddmenu" style="width: 128px; float: right;">
                                    <div class="row demo-row">
                                        <div class="span2" style="width: 128px;">
                                            <select id="jumpMenu" name="herolist" class="select-block span3" style="min-height: 75px;">
                                                <option value="À Venda">À Venda</option>
                                                <option value="Para Alugar">Para Alugar</option>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                            </form>
                            <h3>
                                <a href="À_Venda/Brasil/São_Paulo/Escritório_Comercial">São Paulo</a><br>
                                <a href="À_Venda/Brasil/Italim_Bibi/Escritório_Comercial" class="greenselect">Italim Bibi</a><br>
                                <a href="À_Venda/Brasil/Vila_Olimpia/Escritório_Comercial" class="greenselect">Vila Olimpia</a><br>
                                <a href="À_Venda/Brasil/Morumbi/Escritório_Comercial" class="greenselect">Morumbi</a></h3>
                        </div>
                        <div id="view2" class="tabcontent">
                            <form style="margin: 0px; padding: 0px; float: left;">
                                <div style="width: 537px; float: left; background-image: url(images/searchbg.png); margin-right: 10px; background-repeat: no-repeat; height: 44px; padding: 4px;">
                                    <input id="btnLclick" type="button" value="" class="searchbtn" /><input id="lSearch" name="search" type="text" placeholder="Bairro" style="padding: 4px 4px; width: 88%; margin-top: 8px; border: 0px; background: none;" />
                                </div>
                                <div class="ddmenu" style="width: 128px; float: right;">
                                    <div class="row demo-row">
                                        <div class="span2" style="width: 128px;">
                                            <select id="Select1" name="herolist" class="select-block span3" style="min-height: 75px;">
                                                <option value="À Venda">À Venda</option>
                                                <option value="Para Alugar">Para Alugar</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <h3>
                                <a href="À_Venda/Brasil/São_Paulo/Loja_Comercial">São Paulo</a><br>
                                <a href="À_Venda/Brasil/Italim_Bibi/Loja_Comercial" class="greenselect">Italim Bibi</a><br>
                                <a href="À_Venda/Brasil/Vila_Olimpia/Loja_Comercial" class="greenselect">Vila Olimpia</a><br>
                                <a href="À_Venda/Brasil/Morumbi/Loja_Comercial" class="greenselect">Morumbi</a></h3>

                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- Search Panel Ends -->

        <div id="txtcontainer">
            <div>
                <div style="width: 28%; float: left; padding: 3% 14%;">
                    <h1>Explore o mercado inteiro de imóveis comerciais</h1>
                    <img src="images/umlugar.jpg" alt="/Os detalhes" width="200" height="87">
                    <br>
                    Visite o mercado comercial de imóveis em São Paulo com apenas alguns cliques.
                </div>

                <div style="width: 33%; float: left; padding: 3% 0%;">
                    <h1>Aumente seus leads qualificados com exposição imediata ao mercado</h1>
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
