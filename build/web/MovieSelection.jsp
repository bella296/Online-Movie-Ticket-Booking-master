<%--<%@page import="com.pankaj.Bean.MovieBean"%>--%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
    <head>
		<meta charset="UTF-8" />
                 <link rel="stylesheet" href="css/style.css">
                 <link rel="shortcut icon" href="./image/27811183.jpg" type="image/x-icon">
        
        <title>Movie Selection List</title>
        
    </head>
    <body>
       <%

      Connection con = null;
    Statement st = null;
    ResultSet rs = null;
//    MovieBean mb=new MovieBean();
     try
     {
   
     String dbDriver = "com.mysql.jdbc.Driver";
//  
      Class.forName(dbDriver);
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Sound","root","9685");
//    
     }
     catch(Exception e)
     {
         out.println(e);
     }
    String sql ="SELECT moviename from Movie";
    st=con.createStatement();
    rs = st.executeQuery(sql);
   

 %>
 
  <form action="SeatLayout.jsp">
        <div class="container"> 
 
 <div id="login-box">
  <div class="left">
      <h1>Select Movie Name</h1>
    <select name="movie">
   <% 
     while(rs.next())
    {
   %>
     <option value="<%= rs.getString("moviename")%>"><%= rs.getString("moviename") %></option>
     <%
         }
    %>
</select>
   
    <input type="submit" value="Go" />
    </form>
  </div>
  
    
</div>
                   
    </body>
</html>