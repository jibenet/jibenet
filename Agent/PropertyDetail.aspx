<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PropertyDetail.aspx.cs" Inherits="Agent_PropertyDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Jibe Net</title>
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
  

</head>
<body class="innerpage">
<!-- Header Starts -->
<header>
<div id="header">
	<div class="header">
        <div class="logo"> <a href="index.html"><img src="images/jibenet.png" width="175" height="64"></a>
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
              <div style="width:392px; float:left; background-image:url(images/searchbg-inner.png); background-repeat:no-repeat; height:26px; padding:4px;">
              <input name="search" type="button" value="" class="searchbtn-inner"><input name="search" type="text" placeholder="Digite Um Bairro" style="padding:2px 4px; width:88%; margin-top:2px; border:0px; background:none;">  </div>
            
            <div class="ddmenu-inner" style="width:88px; float:left; margin-left:4px;">
              <select name="jumpMenu" id="jumpMenu" onChange="MM_jumpMenu('parent',this,0)" >
                    <option>Alugar</option>
                    <option>Option 1</option>
                     <option>Option 1</option>
                 </select>
             </div>
           </form>
            </div>
            <div id="view2" class="tabcontent">
            <form action="" method="post">
              <div style="width:392px; float:left; background-image:url(images/searchbg-inner.png); background-repeat:no-repeat; height:26px; padding:4px;">
              <input name="search" type="button" value="" class="searchbtn-inner"><input name="search" type="text" placeholder="Digite Um Bairro" style="padding:2px 4px; width:88%; margin-top:2px; border:0px; background:none;">  </div>
            
            <div class="ddmenu-inner" style="width:88px; float:left; margin-left:4px;">
              <select name="jumpMenu" id="Select1" onChange="MM_jumpMenu('parent',this,0)" >
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
            <p><a href="ListProperty.aspx">Listar Sua Properiedade</a></p>
        </div>
        </div>
	</div>
</div>
</header>
<!-- Header Ends -->


<!-- Section Starts -->
<section>
<div id="txtcontainer"><div>
<div style="width:100%; float:left;">
<div style="width:35%; text-align:center; float:right;">
    <h2 style="font-size:16px; padding-top:10px;">
        <div style="width:25%; float:left; padding-top:10px;">335 m2</div> <img src="images/line.jpg" alt="Line" style="padding:0px 12px; float:left;"> <div style="width:25%; float:left; padding-top:10px;"">80,000  / m2</div> <img src="images/line.jpg" alt="Line" style="padding:0px 12px; float:left;"> <div style="width:25%; float:left;">238.8<br> m2/mes</div></h2>

</div>

<h1 style="font-size:45px; line-height:52px;">Startup Mansion</h1>
<h3>Rua Frei Galvao, 135</h3>

</div>

<!-- Mid Text -->
<div style="background-color:#fff; width:96%; margin-bottom:3%; float:left; border-radius:10px; box-shadow:2px 2px 4px #E9E9E9; padding:2%;">


<div style="width:60%; float:left;">

<img src="images/images.jpg" width="110" height="32" alt="Images"> <img src="images/mapview.jpg" alt="Map View">
<div id="container" class="cf">

	<div id="main" role="main">
      <section class="slider">
        <div id="slider" class="flexslider">
          <ul class="slides">
            <li><img src="uploads/img1.jpg" /></li>
  	    	<li><img src="uploads/img2.jpg" /></li>
  	    	<li> <img src="uploads/img3.jpg" /></li>
    		<li> <img src="uploads/img4.jpg" /></li>
            <li><img src="uploads/img1.jpg" /></li>
  	    	<li><img src="uploads/img2.jpg" /></li>
  	    	<li> <img src="uploads/img3.jpg" /></li>
    		<li> <img src="uploads/img4.jpg" /></li>
             <li><img src="uploads/img1.jpg" /></li>
  	    	<li><img src="uploads/img2.jpg" /></li>
  	    	<li> <img src="uploads/img3.jpg" /></li>
    		<li> <img src="uploads/img4.jpg" /></li>
          </ul>
        </div>
        <div id="carousel" class="flexslider">
          <ul class="slides">
           <li><img src="uploads/img1.jpg" /></li>
  	    	<li><img src="uploads/img2.jpg" /></li>
  	    	<li> <img src="uploads/img3.jpg" /></li>
    		<li> <img src="uploads/img4.jpg" /></li>
            <li><img src="uploads/img1.jpg" /></li>
  	    	<li><img src="uploads/img2.jpg" /></li>
  	    	<li> <img src="uploads/img3.jpg" /></li>
    		<li> <img src="uploads/img4.jpg" /></li>
             <li><img src="uploads/img1.jpg" /></li>
  	    	<li><img src="uploads/img2.jpg" /></li>
  	    	<li> <img src="uploads/img3.jpg" /></li>
    		<li> <img src="uploads/img4.jpg" /></li>
          </ul>
        </div>
      </section>
    </div>
  
  </div>
  
  </div>
  
<div style="width:29%; float:right; margin-top:35px; color:#fff;">
<form>

<div style="width:96%; float:left; height:485px; background-color:#A2BC5D; -moz-border-radius:7px; -webkit-border-radius:7px; -khtml-border-radius:7px; padding:4% 2%;"><h1 style="color:#fff; font-size:28px; text-shadow:1px 1px 1px #000;">Contatar O Anunciante</h1><br>
<br>

<input name="" type="text" placeholder="Name" class="grenbgform"><br><br>

<input name="" type="text" placeholder="Email" class="grenbgform"><br>
<br>
<input name="" type="text" style="width:32%;" placeholder="000"  class="grenbgform">
<input name="" type="text" style="width:60%;" placeholder="Telefone"  class="grenbgform"><br>
<br>
<input name="" type="text" placeholder="Empresa" class="grenbgform"><br>
<br>
<textarea name="" cols="" rows="" style="width:96%; padding:8px 4px; border-radius:4px; resize:none; border-top:1px solid #617430; border-left:1px solid #617430;" placeholder="Empresa"></textarea><br>
<br>
<input name="enter" type="button" class="grybtn" value="Enviar">
<br>
<br>
<input name="" type="checkbox" value=""><label style="font-size:16px; font-weight:bold;"> Envie-me propriededes semelhontes</label>

</div>
</form>

<input name="enter" type="button" class="grnbtn" value="Telefone do Agente" style="margin-top:50px;" onClick="javascript: animatedcollapse.toggle('property')">
<div id="property" style="width:100%; display:none">
<h3 style="color:#000; text-align:center;">9888 186 727</h3>
</div>
</div>

</div>

<div style="width:68%; float:left;">

<div style="width:94%; padding:2%; line-height:35px; float:left; font-size:23px; border:1px solid #e5e5e5; border-radius:7px; -moz-border-radius:7px; -webkit-border-radius:7px; -khtml-border-radius:7px;">
<h3>Recursos</h3>
<span style="float:right; width:30%; font-size:18px; line-height:26px;">
Area: 335 m2<br>
Taxa: 380,000/m2
</span>
  <img src="images/tick.jpg" alt="Tick" style="text-align:left; padding-right:10px;"> 6 Lugares de Estacionamento<br>
  <img src="images/tick.jpg" alt="Tick" style="text-align:left; padding-right:10px;"> 2 Banheiros<br>
  <img src="images/tick.jpg" alt="Tick" style="text-align:left; padding-right:10px;"> 2 Cozinha<br>
  <img src="images/tick.jpg" alt="Tick" style="text-align:left; padding-right:10px;"> 3 Quartoz Executivos
  
</div><br><br>

<div style="width:94%; padding:2%; margin-top:2%; float:left; border:1px solid #e5e5e5; border-radius:7px; -moz-border-radius:7px; -webkit-border-radius:7px; -khtml-border-radius:7px;">
<h3>Detalhes</h3>
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br>
<br>
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
</div>

</div>


<div style="width:25%; float:right; padding:2%; border:1px solid #e5e5e5; border-radius:7px; -moz-border-radius:7px; -webkit-border-radius:7px; -khtml-border-radius:7px;">
<h3 align="center">Propriedades Semelhantes</h3>
<p align="center" style="width:100%; font-size:16px; line-height:24px;"><img src="uploads/i1.jpg" width="140" height="90" class="imgbdr"><br>
The Discription will go here<br>
Neighborhood<br>
Size<br>
Price</p>
<p align="center" style="width:100%; font-size:16px; line-height:24px;"><img src="uploads/i1.jpg" width="140" height="90" class="imgbdr"><br>
The Discription will go here<br>
Neighborhood<br>
Size<br>
Price</p>
</div>

</div>

</div></div>
</section>

<!-- Section Ends -->


<!-- Footer Starts -->
<footer>
<div id="footerbg">&nbsp;</div>
<div id="footer">
  <div>
  
<div class="right"><a href="#"><img src="images/fb.png" alt="Facebook"></a> <a href="#"><img src="images/twitt.png" width="30" height="30" alt="Twitter"></a></div>
<a href="#">Sobre</a> |  <a href="#">FAQ</a> |  <a href="#">Imprensa</a> |  <a href="#">Blog</a> |  <a href="#">Mobile</a> |  <a href="#">Contato.</a><br>
© JibeNet 2013 Termos de Uso


</div></div>
</footer>
<!-- Footer Ends -->
 <!-- jQuery -->
  <script src="flexslider/jquery-1.5.2.min.js"></script>
  <script>window.jQuery || document.write('<script src="flexslider/jquery-1.7.min.js">\x3C/script>')</script>
  
  <!-- FlexSlider -->
  <script defer src="flexslider/jquery.flexslider.js"></script>
  
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
  <script defer src="flexslider/demo.js"></script>
</body>
</html>
