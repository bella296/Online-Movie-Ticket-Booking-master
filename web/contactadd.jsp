<%-- 
    Document   : contactadd
    Created on : 21-Apr-2022, 4:05:54 am
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submit Query</title>
        <link rel="shortcut icon" href="./image/27811183.jpg" type="image/x-icon">
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
     <%

      Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        PreparedStatement ps=null;
//    MovieBean mb=new MovieBean();
     try{
   
     String dbDriver = "com.mysql.jdbc.Driver";
//      Class.forName("oracle.jdbc.OracleDriver");
      Class.forName(dbDriver);
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Sound","root","9685");
      ps =con.prepareStatement("insert into contact(name ,mail,query)values (?,?,?)",Statement.RETURN_GENERATED_KEYS);
         String strt= request.getParameter("name");   
         String movid= request.getParameter("mail");   
         String prc= request.getParameter("query");  
//         String movid= request.getParameter("movieid");  
         ps.setString(1, strt);
//         ps.setString(2, endt);
         ps.setString(3, prc);
         ps.setString(2, movid);
         ps.executeUpdate();
         ResultSet rs1=ps.getGeneratedKeys();
        
         response.sendRedirect("thanks.jsp");
        
    }
    catch (Exception e){
        out.println(e);
    }
    %>
</html>
