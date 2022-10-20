<%-- 
    Document   : logval.jsp
    Created on : 13/10/2022, 03:10:53 PM
    Author     : juanc
--%>

<%@page import="java.sql.Connection"%>
<%@page import="bean.ConexionDB"%>
<%@page import="bean.ServerletLogin"%>
<%@page import="javax.servlet.http.HttpSession" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--
    PASO 3: Se reciben los parametros que se ingresaron por el formulario form_sesion
--%>

<%
    String correo_in = request.getParameter("campo_correo");
    String pass_in = request.getParameter("campo_pass");
    ServerletLogin log = new ServerletLogin();
    if(correo_in != null && pass_in != null){
        boolean resp = log.Login(correo_in, pass_in);
        if(resp = true){
            /*Se crea la sesion*/
            HttpSession sesion = request.getSession();
            /*Se agregan atributos a la sesión*/

            sesion.setAttribute("password",pass_in);
            sesion.setAttribute("user", correo_in);
            response.sendRedirect("../tableroindividual.jsp");
        }else{
            out.print("<br><p>Algo salio mal vuelba a intentar </p>");
        }       
    }else{
        response.sendRedirect("../loginvista.jsp");
    }       
%>
<html>
    <head>
        <link rel="shortCut icon" type="image/png" href="../images/favicon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Prosesando....</h1>
    </body>
</html>
