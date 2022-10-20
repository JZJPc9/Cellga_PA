<%-- 
    Document   : inputindval
    Created on : 18/10/2022, 08:37:11 AM
    Author     : juanc
--%>
<%@page session="true"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="bean.ConexionDB"%>
<%@page import="bean.ServerletInsActInd"%>

<%
    
    HttpSession sesion=request.getSession();
    String usuario = (String)sesion.getAttribute("user");
    String password = (String)sesion.getAttribute("password");
    if(usuario != null && password != null){
        //SI HAY UNA SESION ABIERTA NO HACE NADA
      }
    else{
        response.sendRedirect("registrarvista.jsp");        
    }
    
    String tema = "";
    String descripcion = "";
    String fechaFind = "";
    String fechaFinh = "";
    
    tema = request.getParameter("tema");
    descripcion = request.getParameter("descripcion");
    fechaFind = request.getParameter("fechaFind");
    fechaFinh = request.getParameter("fechaFinh");
    /*
    out.print("<h1>" + tema + "</h1><br>");
    out.print("<h1>" + descripcion + "</h1><br>");
    out.print("<h1>" + fechaFind + "</h1><br>");
    out.print("<h1>" + fechaFinh + "</h1><br>");
    */
    ServerletInsActInd re = new ServerletInsActInd();
    
    
    boolean result = re.ingresa(usuario, tema, descripcion, fechaFind, fechaFinh);
    if(result = true){
        response.sendRedirect("../tableroindividual.jsp");
    }else{
        out.print("ha susedido un error de regresar y intente de nuevo");
    }
    
%>
<html>
    <head>
        <link rel="shortCut icon" type="image/png" href="../images/favicon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>integrando</title>
    </head>
    <body>
        <h1>Prosesando....</h1>
    </body>
</html>
