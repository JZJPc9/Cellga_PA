/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author juanc
 */
public class ServerletInsActInd {
    public boolean ingresa(String usuario, String tema, String descripcion, String fechad, String fechah){
         if(usuario != null && tema != null ){
        
        System.out.println("*****************INSERTAR JSP**************************");
        Connection conn = ConexionDB.conectarBaseDatos();
        Statement st = null;
        ResultSet rs = null;        
        
        //System.out.println(TI_id);
        System.out.println(tema);
        System.out.println(descripcion);
        System.out.println(fechad);
        System.out.println(fechah);
        
        String query="";
        String query2="";
        String query3="";
        try{
            // Se crea un Statement, para realizar la consulta
            st = conn.createStatement();
            
            /****************************PRIMER QUERY PARA LA TABLA INDIVIDUAL*********************************/
            query3 ="";
            
            // Se arma el query
            query2 = "SELECT Ti_id FROM tabla_individual WHERE Usu_id='"+usuario+"';";
            
            rs = st.executeQuery(query2);
            
            String ti_id = "";
            
            while(rs.next()){
                ti_id = rs.getString("Ti_id");
            }
            
            //String usuario = (String)sesion.getAttribute("user");
            
            //INSERT INTO cellgadb.tarea_ti(tari_tema,tari_descripcion, tari_fechaInit, tari_fechafin,ti_id) VALUES ('Tema','descripcion','2022-09-27 20:39:27','2022-09-27 20:39:27','1');
            query = "INSERT INTO cellgadb.tarea_ti(tari_tema,tari_descripcion, Tari_fechaCrea, tari_fechaExp,Ti_id) VALUES ('"+tema+"','"+descripcion+"',now(),'"+ fechad +" "+ fechah +"','"+ti_id+"');";

            //System.out.println("<br>El Query Ejecutado es: <br>"+query);
            // Se ejecuta el query
            st.execute(query);  
            return true;
        
            
        }catch(Exception e){
            System.out.println("<br>No se pudo completar la operación: <br>"+e.getMessage()+"<br>");
            System.out.println(query);
            return false;
        
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
        
    }else{
             return false;
         }
        
        
    }
}
