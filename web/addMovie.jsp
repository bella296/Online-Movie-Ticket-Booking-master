<%-- 
    Document   : Movie
    Created on : 20 Jun, 2018, 7:32:34 PM
    Author     : hp
--%>

<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <link rel="shortcut icon" href="./image/27811183.jpg" type="image/x-icon">

        <title>Movie Entry Page</title>
    </head>
    <body>
        
        
        
    <div id="login-box">
     <div class="left">
    <h1>Add Movie</h1>
    <form action="movieadd.jsp" enctype="multipart/form-data">
        
    
        <input type="text" name="moviename" placeholder="MovieName" />    
    <input type="text" name="movieid" placeholder="ID" />
    
    <input type="text" name="price" placeholder="Price" />
<!--    <select name="movietheatre">
        <option >Select Movie Theratre Id</option>
       <h2></h2>
<select>
    <input type="file" name="movieimage" placeholder="MovieTheatreNumber"/>-->
    
    <input type="submit" value="Add" />
  </div>
  
    
</div>
        
</form>
        
        
        
        
        
     
   </body>
</html>
