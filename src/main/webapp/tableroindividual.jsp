<%-- 
    Document   : tableroindividual
    Created on : 8/09/2022, 04:00:00 PM
    Author     : juanc
--%>
<%@page session="true"%>
<%@page import="bean.ServerletTabIn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //VALIDAR SI HAY UNA SESION ABIERTA
    HttpSession sesion=request.getSession();
    
    String usuario = (String)sesion.getAttribute("user"); 
    String password = (String)sesion.getAttribute("password");
    
    if(usuario != null && password != null){
        //SI HAY UNA SESION ABIERTA NO HACE NADA
      }
    else{
        response.sendRedirect("registrarvista.jsp");        
    }
    ServerletTabIn result = new ServerletTabIn();
    
    String tablatareas = result.TablaIn(usuario);
    
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- SEO Meta Tags -->
    <meta http-equiv='cache-control' content='no-cache'>
    <meta http-equiv='expires' content='0'>
    <meta http-equiv='pragma' content='no-cache'>

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
    <link rel="shortCut icon" type="image/png" href="images/favicon.png">
    
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
            <%--
            <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            --%>
            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ms-auto navbar-nav-scroll">
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false" >Usuario</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown01">
                        
                            <li><a class="dropdown-item" href="Valid/cerrar_sesion.jsp">Cerrar Sesion</a></li>
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
                        
                <h1 class="h1-large">Tareas individuales</h1>
                <div>
                        <%
                            if(tablatareas != null){
                                out.print(tablatareas);
                            }else{
                                out.print("<p>Exelente!!!     no tiene nada por hacer.</p>");
                            }
                        %>
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of header -->

    <div class="container">
        <a class="btn-solid-reg" data-bs-toggle="modal" data-bs-target="#unirtablero">Crear Tarea</a>
        
        <%--
        <div class="eventoalto">
            <strong>Hacer la tarea de química.</strong><br>
            <p>Contestar todas las preguntas que dejó, e investigar acerca de la próxima práctica.</p>
        </div>
        <div class="eventomedio">
            <strong>Sacar la basura.</strong><br>
            <p></p>
        </div>
        <div class="eventobajo">
            <strong>Hacer ejercicio.</strong><br>
            <p></p>
        </div>
        <div class="eventobajo">
            <strong>Comprar fruta.</strong><br>
            <p>Mango, sandía, plátano y papaya.</p>
        </div>
        <div class="eventomedio">
            <strong>Realizar los trámites pendientes.</strong><br>
            <p>Rellenar el formulario, escanear los archivos.</p>
        </div>
       --%>

    </div>
    <!-- Details Modal -->
        <div id="unirtablero" class="modal fade" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="row">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    
                        <form method="POST" action="Valid/inputindval.jsp">
                            <h3>Ingrese la informacion de la asignacion</h3>
                            <hr>
                            <%--<h4>ID:</h4> --%>
                            Tema: <input type="text"  class="form-control" id="tema" name="tema" aria-describedby="emailHelp">
                            Descripcion: <input type=""  class="form-control" id="descripcion" name="descripcion" aria-describedby="emailHelp">
                            Dia:<input type="date" class="form-control" id="fechaFind" name="fechaFind" aria-describedby="emailHelp">
                            Hora:<input type="time"  class="form-control" id="fechaFinh" name="fechaFinh" aria-describedby="emailHelp">
                            <br>
                            <input type="submit" value="crear">
                            <%--
                            <div class="separar">
                                <a id="unirse" class="btn-solid-reg" href="#">Unirte</a>
                            --%>
                        </form>
                            <%--
                            </div>
                            --%>
                    </div><!-- end of row -->
                    
                    
                </div> <!-- end of modal-content -->
                
            </div> <!-- end of modal-dialog -->
        </div>

    <button  class="boton">
        <img src="images/up-arrow.png" alt="alternative">
    </button>
     <script src="js/procesos.js"></script>
    <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/purecounter.min.js"></script> <!-- Purecounter counter for statistics numbers -->
    <script src="js/isotope.pkgd.min.js"></script> <!-- Isotope for filter -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
    <script src = "filename.js?version = 1.0"></script>
    <script src = "newfile.js?version = 1.1"></script>

        
</body>
</html>
