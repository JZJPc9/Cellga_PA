<%-- 
    Document   : indexequipo
    Created on : 8/09/2022, 03:53:43 PM
    Author     : 
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- SEO Meta Tags -->
    <meta name="description" content="Your description">
    <meta name="author" content="Your name">

    <!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->
	<meta property="og:site_name" content="" /> <!-- website name -->
	<meta property="og:site" content="" /> <!-- website link -->
	<meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
	<meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
	<meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
	<meta property="og:url" content="" /> <!-- where do you want your post to link to -->
	<meta name="twitter:card" content="summary_large_image"> <!-- to have large image post format in Twitter -->

    <!-- Webpage Title -->
    <title>Cellga</title>
    
    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
</head>
<body data-bs-spy="scroll" data-bs-target="#navbarExample">


    <nav id="navbarExample" class="navbar navbar-expand-lg fixed-top navbar-light" aria-label="Main navigation">
        <div class="container">

            <!-- Image Logo -->
            <!-- <a class="navbar-brand logo-image" href="index.html"><img src="images/logo.svg" alt="alternative"></a>  -->

            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <a class="navbar-brand logo-text" href="index.jsp">Cellga</a>
            <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ms-auto navbar-nav-scroll">
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false" >Usuario</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                        
                            <li><a class="dropdown-item" >Cerrar Sesion</a></li>
                        </ul>
                    </li>
                </ul>
                
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <header id="header" class="header2">
        <div class="container">
            <div class="row">
                    
                <hr>
                        
                <h1 class="h1-large">Tus tableros </h1>
                <div>
                        
            </div> <!-- end of row -->
            

        </div> <!-- end of container -->
        <br>
        <a class="btn-solid-reg" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Crear Tablero</a>
        <a class="btn-solid-reg" data-bs-toggle="modal" data-bs-target="#unirtablero">Unirte a un tablero</a>
                    
    </header> <!-- end of header -->

    <div class="container">
        <div class="contenedor">
            <a href="tableroequipo.html">
                <div class="cuadros">
                    Matemáticas
                </div>

            </a>
            

            <div class="cuadros">
                Química
            </div>
            <div class="cuadros">
                Física
            </div>
            <div class="cuadros">
                Inglés
            </div>
            <div class="cuadros">
                Familia
            </div>
            <div class="cuadros">
                Amigos
            </div>

        </div>
        
    </div>
    <!-- Details Modal -->
    <div id="unirtablero" class="modal fade" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="row">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

                    
                        <h3>Información del tablero</h3>
                        <hr>
                        <h4>ID:</h4>
                        <input  class="form-control" id="nombretablero" aria-describedby="emailHelp">
                        <br>
     
                        <div class="separar">
                            <a id="unirse" class="btn-solid-reg" href="#">Unirte</a>
                            
                        </div>
                </div><!-- end of row -->
                
                
            </div> <!-- end of modal-content -->
            
        </div> <!-- end of modal-dialog -->
    </div> <!-- end of modal -->
    <div id="staticBackdrop" class="modal fade" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="row">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

                    
                        <h3>Información del tablero</h3>
                        <hr>
                        <h4>Nombre:</h4>
                        <input  class="form-control" id="nombretablero" aria-describedby="emailHelp">
                        <br>
                        <h4>Descripción:</h4>
                        <input  class="form-control" id="nombretablero" aria-describedby="emailHelp">
                        <br>
     
                        <div class="separar">
                            <a id="modalCtaBtn" class="btn-solid-reg" href="#">Crear</a>
                            
                        </div>
                </div><!-- end of row -->
                
                
            </div> <!-- end of modal-content -->
            
        </div> <!-- end of modal-dialog -->
    </div> <!-- end of modal -->

    <button  class="boton">
        <img src="images/up-arrow.png" alt="alternative">
    </button>

    <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/purecounter.min.js"></script> <!-- Purecounter counter for statistics numbers -->
    <script src="js/isotope.pkgd.min.js"></script> <!-- Isotope for filter -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
</body>
</html>