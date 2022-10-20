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
        
public class ServerletRegistro {
    
    public boolean Registro(String corr,String nomb, String password){
        //Se crea la instancia conneccion 
        Connection conn = ConexionDB.conectarBaseDatos();
        String qwery = "";
        String qwery2 = "";
        Statement st = null;
        ResultSet rs = null;
        
        if(corr != null && nomb != null && password != null){
           try{
               st = conn.createStatement();
               
               qwery ="INSERT INTO usuario (Usu_id, Usu_contraseña, Usu_nombre,Usu_fechaReg) values('"+corr+"','"+password+"','"+nomb+"',CURRENT_TIMESTAMP());";
               qwery2 ="INSERT INTO tabla_individual (Ti_nombre,Usu_id) VALUES('Tabla de "+nomb+"','"+corr+"');";
               
               st.execute(qwery);
               st.execute(qwery2);

               
               
           }catch(SQLException e){
               System.out.println("Error: " + e);
               return false;
           }
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
            return true;
        }else{
            return false;
        }
    }/*Prueba de incercion con el serverlet
    public static void main(String[] args){
        ServerletRegistro reg = new ServerletRegistro();
        boolean des = reg.Registro("Jimenez.zea", "juan", "prueba");
        System.out.print(des);
    }
    */
}
