<%-- 
    Document   : logaction
    Created on : 21-Apr-2022, 2:09:58 am
    Author     : DELL
--%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validate</title>
        <link rel="shortcut icon" href="./image/27811183.jpg" type="image/x-icon">
    </head>
    <body>
        <!--<h1>Hello World!</h1>-->
    </body>
    <%

      Connection con = null;
        Statement st = null;
        ResultSet rs = null;
//    MovieBean mb=new MovieBean();
     try
     {
   
     String dbDriver = "com.mysql.jdbc.Driver";
     String username = request.getParameter("userid");   
       String password = request.getParameter("password");
//      Class.forName("oracle.jdbc.OracleDriver");
      Class.forName(dbDriver);
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Sound","root","9685");
//    Class.forName("org.apache.derby.jdbc.ClientDriver");
//            String url = "jdbc:derby://localhost:1527/Sound";
//            String user= "pankaj";
//            String pass="pankaj";
//            con = DriverManager.getConnection(url, user, pass);
        PreparedStatement pst = con.prepareStatement("Select * from admin where userid=? and password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        rs = pst.executeQuery();                        
        if(rs.next()) 
            response.sendRedirect("adminPage.jsp");
//           out.println("Valid login credentials");        
        else
           out.println("Invalid login credentials");  
           response.sendRedirect("Login.jsp");
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
//     }
//     catch(Exception e)
//     {
//         out.println(e);
//     }
//    String sql ="SELECT * from admin";
//    st=con.createStatement();
//    rs = st.executeQuery(sql);
//   

 %>
 

</html>
