/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *
 * @author juanc
 */
public class ServerletTabIn {
    
    public String TablaIn(String corr) throws SQLException{
        String prt = "<table>";
        Connection conn = ConexionDB.conectarBaseDatos();
        //preparamos la consulta con el id de la tabla individual de el usuario actual
        Statement smt;
        ResultSet rs = null;
        PreparedStatement ps = null;
        
        //se prepara la consulta con el id de la tabla individual
        
        
        //se hace la consulta con la base de dato para saber 
        ps=conn.prepareStatement("SELECT * FROM cellgadb.tabla_individual WHERE Usu_id = '"+ corr +"';");
        rs = ps.executeQuery();
        //se obtiene el id de la tabla
        int id_Ti = 0;
        while(rs.next()){
             id_Ti = rs.getInt("Ti_id");
        }
        rs = null;
        ps = null;
        
        ps = conn.prepareStatement("SELECT * FROM cellgadb.tarea_ti WHERE Ti_id = '"+ id_Ti +"';");
        rs = ps.executeQuery();
        
        while(rs.next()){
            prt += "<tr>";
            
            prt += "<td>";
            prt += rs.getString("Tari_tema");
            prt += "</td>";
            
            prt += "<td>";
            prt += rs.getString("Tari_descripcion");
            prt += "</td>";
            
            prt += "<td>";
            prt += rs.getDate("Tari_fechaCrea");
            prt += "</td>";
            
            prt += "<td>";
            prt += rs.getDate("Tari_fechaExp");
            prt += "</td>";
                    
            prt += "</tr>";
        }
        prt += "</table>";
        
        return prt;
    }
    
    public static void main (String[] args) throws SQLException{
        ServerletTabIn res = new ServerletTabIn();
        
        String tabla = res.TablaIn("Jimenez.zea");
        
        System.out.print(tabla);
    }
    
}
