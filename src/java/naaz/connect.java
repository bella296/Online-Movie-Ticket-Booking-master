/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package naaz;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
//import com.sun.jdi.connect.spi.Connection;

/**
 *
 * @author DELL
 */
public class connect  {
     public static java.sql.Connection getConnection() 
    {
       Connection con = null;
    Statement st = null;
    ResultSet rs = null;
//    MovieBean mb=new MovieBean();
     try
     {
   
     String dbDriver = "com.mysql.jdbc.Driver";
      Class.forName(dbDriver);
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Sound","root","9685");
//    
     }
     catch(Exception e)
     {
         System.out.println(e);
     }
//    String sql ="SELECT moviename from Movie";
//    st=con.createStatement();
//    rs = st.executeQuery(sql);
    return con;
    }
}
