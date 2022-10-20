<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--
    Se cierra la sesión
--%>
<%
HttpSession sesion = request.getSession();
sesion.invalidate();


%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv='cache-control' content='no-cache'>
        <meta http-equiv='expires' content='0'>
        <meta http-equiv='pragma' content='no-cache'>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/fontawesome-all.min.css" rel="stylesheet">
        <link href="../css/swiper.css" rel="stylesheet">
        <link href="../css/styles.css" rel="stylesheet">
        <link rel="shortCut icon" type="image/png" href="../images/favicon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cerrar sesion</title>
    </head>
    <body>
        <h1>Cerrar sesion</h1>
    <center>
        <%out.println("<p>La sesión se ha cerrado correctamente</p>");%>
        <span class="nav-item">
            <a class="btn-solid-sm" href="../index.jsp">Menu</a>
        </span>
    </center>    
        
        <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
        <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
        <script src="js/purecounter.min.js"></script> <!-- Purecounter counter for statistics numbers -->
        <script src="js/isotope.pkgd.min.js"></script> <!-- Isotope for filter -->
        <script src="js/scripts.js"></script> <!-- Custom scripts -->
        <script src = "filename.js?version = 1.0"></script>
        <script src = "newfile.js?version = 1.1"></script>

        
    </body>
</html>
