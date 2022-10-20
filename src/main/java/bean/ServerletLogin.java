/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author juanc
 */
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ServerletLogin {
    
    
    
    public boolean Login(String corr, String pass){
        Connection conn = ConexionDB.conectarBaseDatos();
        Statement st = null;
        ResultSet rs = null;
        String query="";
        try{
            // Se crea un Statement, para realizar la consulta
            st = conn.createStatement();

            // Se arma el query

            query ="SELECT Usu_id, Usu_contraseña FROM usuario WHERE Usu_id = '"+corr+"' AND Usu_contraseña ='"+pass+"';";
            //out.println("<br>El Query Ejecutado es: <br>"+query);
            // Se ejecuta el query

            rs = st.executeQuery(query);

            String vCorreo="";
            String vPss="";

            while(rs.next()){
                vCorreo =rs.getString("Usu_id");
                vPss = rs.getString("Usu_contraseña");
            }
            
            
            if(corr.equals(vCorreo) && vPss.equals(pass)){
                return true;
            }else{
                return false;
            }

        }catch(Exception e){
            System.out.println("Error: " + e);
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
    }
}
