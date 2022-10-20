<%-- 
    Document   : regval
    Created on : 6/10/2022, 06:24:48 PM
    Author     : juanc
--%>

<%@page import="java.sql.Connection"%>
<%@page import="bean.ConexionDB"%>
<%@page import="bean.ServerletRegistro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //Se obtienen los parametros a insertar en la base
    String nombre_re = request.getParameter("nombre");
    String correo_re = request.getParameter("correo");
    String pass_re = request.getParameter("pss");
    //Se inicia la clase para la insercion
    ServerletRegistro reg = new ServerletRegistro();
    if(nombre_re != null && correo_re != null && pass_re != null){
        boolean resp = reg.Registro(correo_re, nombre_re, pass_re);
        if(resp = true){
            response.sendRedirect("../loginvista.jsp");
        }else{
            out.print("<br><p>Algo salio mal vuelba a intentar </p>");
        }
    }else{
        response.sendRedirect("../registravista.jsp");
    }
    
%> 

<html>
    <head>
        <link rel="shortCut icon" type="image/png" href="../images/favicon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1>Procesando.....</h1>
    </body>
</html>
