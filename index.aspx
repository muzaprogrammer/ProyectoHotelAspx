<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html lang="en" class="wide wow-animation">

<head>

<!-- Smartsupp Live Chat script -->
<!--<script type="text/javascript">
var _smartsupp = _smartsupp || {};
_smartsupp.key = '93089d4f12dbc1fc3cd431c573ce726f4cbbae74';
window.smartsupp||(function(d) {
	var s,c,o=smartsupp=function(){ o._.push(arguments)};o._=[];
	s=d.getElementsByTagName('script')[0];c=d.createElement('script');
	c.type='text/javascript';c.charset='utf-8';c.async=true;
	c.src='//www.smartsuppchat.com/loader.js?';s.parentNode.insertBefore(c,s);
})(document);
</script>-->
<meta charset="utf-8">
 <title>Hotel TerraBella</title>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="viewport"
          content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>

    <!-- Stylesheets -->
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link href="//fonts.googleapis.com/css?family=Lato:400,300,400italic,700,900,100' rel='stylesheet' type='text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat%7CRoboto+Slab' rel='stylesheet' type='text/css">
    <link rel="stylesheet" href="css/style.css">

    <!--[if lt IE 10]>
        <script src="js/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- The Main Wrapper -->
<div class="page">
<!--For older internet explorer-->
<div class="old-ie" style= "background": #212121; padding: 10px 0; box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3); clear: both; text-align:center; position: relative; z-index:1;>
    <a href="http://windows.microsoft.com/en-US/internet-explorer/..">
        <img src="images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820"
             alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
    </a>
</div>
<!--END block for older internet explorer-->
    <!--========================================================
                              HEADER
    =========================================================-->
    <header class="page-header">
        <div class="page-header-top">
            <div class="container">
                <div class="row row-md-middle">
                <div class="col-xs-12 text-center col-md-push-2">
                    <!-- RD Navbar Brand -->
                    <div class="rd-navbar-brand text-white">
                        <a href="index.html" class="brand-name">
                            TerraBella
                        </a>
                        <ul>
                            <li class="fa-star"></li>
                            <li class="fa-star"></li>
                            <li class="fa-star"></li>
                            <li class="fa-star"></li>
                        </ul>
                        <span>Hotel  Boutique</span>
                    </div>
                    <!-- END RD Navbar Brand -->
                </div>
                <div class="col-md-4 col-xs-12 col-md-push-1 text-center text-md-left">
                    <a class="btn btn-sm btn-primary" href = "#Formulario">Solicitud</a>
                </div>
                 <div class="col-md-4 col-xs-12 text-center col-md-push-1 address">
                    <address>                            
                            <p>Encuéntranos<span class="text-primary"><a href="#google-map">en El Salvador</a></span></p>
                    </address>
                </div>
                 <div class="col-md-4 col-xs-12 col-md-push-1 text-center text-md-right">
                    <a class="btn btn-sm btn-primary" href = "Login.aspx">Ingresar</a>
                </div>
            </div>
        </div>
    </div>
</header>
    <!--========================================================
                              CONTENT
    =========================================================-->
    <main class="page-content">
    <!-- Find Hot Deals -->
        <section>
          <div class="container">
              <img width="1170" height="420" alt="" src="images/logo_hotel.jpg">
              <div class="row row-md-center offset-1">
                  <div class="col-md-10 col-sm-12 col-xs-12 text-center">
                    <div class="border1 inset-1 postfix-3 preffix-4">
                        <h2>Naturaleza, belleza y Confort en un clima lleno de armonía y descanso.</h2>
                        <p>
                           Nos destacamos por ofrecer servicios de alojamiento personalizado y de la más alta calidad a nuestros clientes, brindándoles un ambiente de tranquilidad y comodidad. Sobrepasando las exigencias y expectativas de nuestros clientes para lograr su satisfacción y preferencia.
                        </p>
                       <!-- <a class="btn btn-xs btn-default" href="#">Mas Informacion</a>-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Find Hot Deals -->
    <!-- index-list -->
    <section class="well-md">
        <div class="container">
            <ul class="row">
                <li class="col-md-3 col-sm-6 col-xs-12 wow fadeInLeft">
                    <h2>Rooms</h2>
                    <p>
                       Amplias habitaciones <br> A/C <br>Teléfono en cada habitación<br> Agua caliente y TV cable. 
                    </p>
                </li>
                <li class="col-md-3 col-sm-6 col-xs-12">
                    <h2>Ubicación<br>Exclusiva</h2>
                    <p>
                       Estrategicamente cerca de centros de negocios, museos, centros comerciales, terminales terrestes internacionales, centro de ferias y convenciones, restaurantes.
                    </p>
                </li>
                <li class="col-md-3 col-sm-6 col-xs-12">
                    <h2>Espacios y<br>Confort</h2>
                    <p>
                       Terraza, Jardines , salas de descanso, parqueo privado y servicio de taxi    
                    </p>
                </li>
                <li class="col-md-3 col-sm-6 col-xs-12 wow fadeInRight">
                    <h2>Comunicacion <br> Seguridad</h2>
                    <p>Free-WiFi de alta velocidad en todos los espacios de nuestro hotel, las instalaciones cuentan con seguridad privada 24/7.
                     
                    </p>
                </li>
            </ul>  
        </div>
        <div class="container text-center offset-2">
           <!-- <a class="btn btn-xs btn-default" href="#">Más Información</a>-->
        </div>
    </section>
    <!-- End index-list -->
    <!-- Airport Shuttle -->
    <section class="well-sm">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-6 col-sm-12 col-xs-12 wow fadeInLeft">
                    <img width="570" height="268" alt="" src="images/page-1_img03a.jpg">
                  <div class="border1 inset-2 postfix-1 preffix-1 offset-4">
                        <h2>Breakfast</h2>
                    <p>
                          Todas nuestras tarifas incluyen nuestro exclusivo servicio de desayunos típicos e internacionales, en un ambiente propicio para su tranquilidad.
                        </p>
                    
                      <!--<a class="btn btn-xs btn-default offset-3" href="#">More Info</a>-->
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12 offset-9 wow fadeInRight">
                    <img width="570" height="268" alt="" src="images/page-1_img04a.jpg">
                    <div class="border1 inset-2 postfix-1 preffix-1 offset-4">
                        <h2>Recepción</h2>
                        <p>
                            La recepción está disponible las 24 horas del día. No importa cuál sea su pregunta o problema, nuestro personal responderá inmediatamente.
                        </p>
                        <!--<a class="btn btn-xs btn-default offset-3" href="#"></a>-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Airport Shuttle -->
    <!-- Our Rooms -->
    <section class="well-sm">
        <div class="container text1">
            <h2 class="text-center">Nuestras Instalaciones</h2>
            <div class="row text-center">
                <div class="col-md-4 col-sm-12 col-xs-12 wow fadeInLeft">
                    <img width="370" height="370" alt="" src="images/page-1_img05.jpg">
                    <div class="border1 inset-3 postfix-2 preffix-2 offset-5 ">
                        <h2 class="text-white">Habitación Sencilla</h2>
                                                
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12 offset-9">
                    <img width="370" height="370" alt="" src="images/page-1_img06b.jpg">
                    <div class="border1 inset-3 postfix-2 preffix-2 offset-5">
                        <h2 class="text-white"> Habitación Doble</h2>
                                                
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12 offset-9 wow fadeInRight">
                    <img width="370" height="370" alt="" src="images/page-1_img07b.jpg">
                    <div class="border1 inset-3 postfix-2 preffix-2 offset-5 ">
                        <h2 class="text-white">Habitación Triple</h2>
                                            
                    </div>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4 col-sm-12 col-xs-12 offset-9 wow fadeInLeft">
                    <img width="370" height="370" alt="" src="images/page-1_img08a.jpg">
                    <div class="border1 inset-3 postfix-2 preffix-2 offset-5">
                        <h2 class="text-white">Suite</h2>
                        <!--<a class="btn btn-xs btn-default offset-7" href="#">More Info</a>-->                     
                     </div>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12 offset-9">
                    <img width="370" height="370" alt="" src="images/Terraza.jpg">
                    <div class="border1 inset-3 postfix-2 preffix-2 offset-5">
                        <h2 class="text-white">Terraza</h2>
                        <p class="text-primary offset-6">
                          
                        <!--<a class="btn btn-xs btn-default offset-7" href="#">More Info</a>-->
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12 offset-9 wow fadeInRight">
                    <img width="370" height="370" alt="" src="images/Comedor.jpg">
                    <div class="border1 inset-3 postfix-2 preffix-2 offset-5">
                        <h2 class="text-white">Comedor</h2>
                <!--<a class="btn btn-xs btn-default offset-7" href="#">More Info</a>-->       
            </div>
        </div>
    </section>
    <!-- End Our Rooms -->
    <!-- Want to Save -->
    <section class="well-sm">
        <div class="container">
            <img width="1170" height="420" alt="" src="images/page-1_img11.jpg">
            <div class="row row-md-center offset-1">
                <div class="col-md-10 col-sm-12 col-xs-12 text-center">
                    <div class="border1 inset-1 postfix-3 preffix-4">
                        <h2> Tu Mejor opción a un clic de distancia.</h2>
                        <p>
                     Costo de habitación desde U$55.00 + Impuestos, Pregunta por nuestras tarifas especiales de temporada. Sera un privilegio compartir un ambiente lleno de calidez, innovación y comodidad.    

                        </p>
                        </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Want to Save -->
    <!-- RD Google Map -->
    
    <!-- END RD Google Map --> 
    <!-- Newsletter -->  
    <section class="well-lg text-center">
        <div class="container">
            <div class="row row-md-center">
                <div class="col-md-6 col-sm-12 col-xs-12 ">
                    <a name="Formulario"><h2>Formulario Reservaciones</h2></a>
                    <p class="offset-8 text-contrast-1">
                        Verifica disponibilidad llenando el formulario,<br>También puedes contactarnos en nuestro chat online. 
                    </p>
                    <!-- RD Mailform -->
                     <form class='rd-mailform' method="post" action="bat/rd-mailform.php">
                            <!-- RD Mailform Type -->
                            <input type="hidden" name="form-type" value="order"/>
                            <!-- END RD Mailform Type -->
                            <fieldset>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label data-add-placeholder data-add-icon>
                                            <input type="text"
                                                   name="name"
                                                   placeholder="Nombre completo"
                                                   data-constraints="@NotEmpty @LettersOnly"/>
                                        </label>
                                    </div>
                                    <div class="col-md-6">
                                        <label data-add-placeholder data-add-icon>
                                            <input type="text"
                                                   name="email"
                                                   placeholder="Email"
                                                   data-constraints="@NotEmpty @Email"/>
                                        </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label data-add-placeholder data-add-icon>
                                            <input type="text"
                                                   name="guests"
                                                   placeholder="# Huesped"
                                                   data-constraints="@NotEmpty @NumbersOnly"/>
                                        </label>
                                    </div>
                                    <div class="col-md-6">
                                        <label data-add-placeholder data-add-icon>
                                            <input type="date"
                                                   name="date"
                                                   data-placeholder="Fecha"
                                                   data-constraints="@Date"
                                            />
                                     <!--  /* </label>
                                    </div>
                                    <div class="col-md-4">
                                        <label data-add-placeholder>
                                            <select name="time">
                                                <option>9:00</option>
                                                <option>14:00</option>
                                                <option>20:00</option>
                                            </select>
                                        </label>*/-->
                                    </div>
                                </div>
                                <br/>
                                <div class="mfControls btn-group text-center">                                    
                                    <button class="btn btn-sm btn-default" type="reset">Reiniciar</button>
                                </div>
                                <br/>
                                <div class="mfControls btn-group text-center">
                                    <button class="btn btn-sm btn-primary" type="submit">Enviar</button>                                    
                                </div>
                                <div class="mfInfo"></div>
                            </fieldset>
                        </form>
                    <!-- END RD Mailform -->
                </div>
            </div>
        </div>
    </section>
        <!-- END Newsletter --> 
</main>
    <!--========================================================
                              FOOTER
    ==========================================================-->
    <footer class="page-footer">
        <div class="container">
            <div class="row">
             <div class="col-lg-4 col-md-12 col-lg-push-2">
                <div class="address">
                    <a href="#">Colonia San Benito, San salvador,<br>Tel:(503)2133-6900<br>(503) 2562-7762                        
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-12 col-lg-push-1">
                <ul class="inline-list">
                   <!-- <li>
                        <a class="icon icon-default icon-sm fa-instagram" href="#"></a>
                    </li>-->
                    <li>
                        <a class="icon icon-default icon-sm fa-twitter" href="https://twitter.com/hotelterrabella"></a>
                    </li>
                    <li>
                        <a class="icon icon-default icon-sm fa-facebook" href="https://www.facebook.com/terrabellahotelBoutique"></a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-4 col-md-12 text-center col-lg-preffix-1  col-lg-push-1">
                <!-- RD Navbar Brand -->
                <div class="rd-navbar-brand">
                    <a href="index.html" class="brand-name">
                        TerraBella
                    </a>
                    <ul>
                      <li class="fa-star"></li>
                      <li class="fa-star"></li>
                      <li class="fa-star"></li>
                      <li class="fa-star"></li>
                  </ul> 
                  <span>Hotel  Boutique</span>
              </div>
                <!-- END RD Navbar Brand -->
                <div class="copyright">
                   &#169; <span id="copyright-year"></span> | 
                    Designed by Grupo los Iracundos Programacion II</a> - All Rights Reserved.
                   <!-- {%FOOTER_LINK} -->
               </div>
           </div>
       </div>        
   </div>
   <!-- Coded by crash -->
</footer>
</div>
<!-- Core Scripts -->
<script src="js/core.min.js"></script>
<!-- Additional Functionality Scripts -->
<script src="js/script.js"></script>
</body>
</html>