<%-- 
    Document   : registroTE
    Created on : 6/10/2022, 07:42:58 PM
    Author     : Alumno
--%>
<%@page import="bean.ConexionDB"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
%>

<%
    String nombreTE = request.getParameter("nombretablero");
    String descripcion = request.getParameter("descripcion");
    //out.println(nombreTE);
    //out.println(descripcion);
        
    /****************************INSERTAR EN TABLA_EQUIPO *******************************************/
    // Se comprueba que haya parametros definidos y con valores
    if(nombreTE != null && descripcion != null ){
        
        //Se establecen las variables para realizar la consulta SQL
        System.out.println("*****************INSERTAR JSP**************************");
        Connection conn = ConexionDB.conectarBaseDatos();
        Statement st = null;
        ResultSet rs = null;
        
        String query="";
        String query2="";
        //String query3="";
        try{
            // Se crea un Statement, para realizar la consulta
            st = conn.createStatement();
            
            /****************************PRIMER QUERY PARA LA TABLA ROL*********************************/
            query="INSERT INTO rol(Ro_nombre) values('creador');";           
            /****************************SEGUNDO QUERY PARA LA TABLA ACCESOUSU*********************************/
            query2="INSERT INTO accesousu(Ro_id,Usu_id) values('','"+usuario+"');";
            
            
            
            
            /****************************TERCER QUERY PARA LA TABLA TABLA_TE*********************************/
                        
            // Se arma el query
            query2 = "SELECT Ti_id FROM tabla_individual WHERE Usu_id='"+usuario+"';";
            
            rs = st.executeQuery(query2);
            
            String ti_id = "";
            
            while(rs.next()){
                ti_id = rs.getString("Ti_id");
            }
            
            //String usuario = (String)sesion.getAttribute("user");
            
            //INSERT INTO cellgadb.tarea_ti(tari_tema,tari_descripcion, tari_fechaInit, tari_fechafin,ti_id) VALUES ('Tema','descripcion','2022-09-27 20:39:27','2022-09-27 20:39:27','1');
            query = "INSERT INTO cellgadb.tarea_ti(tari_tema,tari_descripcion, Tari_fechaCrea, tari_fechaExp,Ti_id) VALUES ('"+tema+"','"+descripcion+"','"+fechaInicio+"','"+fechaFin+"','"+ti_id+"');";

            //System.out.println("<br>El Query Ejecutado es: <br>"+query);
            // Se ejecuta el query
            st.execute(query);         
            
        }catch(Exception e){
            System.out.println("<br>No se pudo completar la operación: <br>"+e.getMessage()+"<br>");
            System.out.println(query);
        }
        /*
        * Se debe cerrar la conexión si o sí 
        * hay Resultset o un Statement.
        */
        finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException sqlEx) {
            } // ignore
            rs = null;
            }
            if (st != null) {
                try {
                    st.close();
                } catch (SQLException sqlEx) {
                } // ignore
                st = null;
            }
        }
        
    }
    
    
    //response.sendRedirect("indexequipo.jsp");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortCut icon" type="image/png" href="images/favicon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
