/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;
import java.sql.*;


/**
 *
 * @author HP
 */
public class conexion {
    private Connection con =null;
    public Connection conexion(){
    try {
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306//BibliotecaVirtual","root", "123456");
    } catch(ClassNotFoundException | SQLException e){
        
    }
    return con;
   
    }
    
    public void cerrarConexion(Connection con){
    try{
    con.close();
    }catch (SQLException e){
    } 
}
} 