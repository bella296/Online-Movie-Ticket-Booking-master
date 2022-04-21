<%-- 
    Document   : Ticket
    Created on : 28 Jun, 2018, 8:00:29 PM
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
      <title>Event Ticket</title>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700|Lobster|Kreon:700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
  <!-- <link rel="stylesheet" href="styles/main.css" media="screen" charset="utf-8"/> -->
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <link rel="shortcut icon" href="./image/27811183.jpg" type="image/x-icon">
  <meta http-equiv="content-type" content="text-html; charset=utf-8">
</head>
<style>
  body {
    margin: 0;
    color: #ffffff;
    font-family: "Open Sans", sans-serif;
    font-weight: 400;
    font-size: 24px;
  }

  .container {
    
      width: 795px;
    margin: 0 auto;
  
    
  }

  section {
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    height: 280px;
    padding: 0 60px;
    background-image: url("https://wallpaperaccess.com/full/1157063.jpg") ;
    background-repeat: no-repeat;
    overflow: hidden;
  }
  section .title {
    float: left;
    padding: 22px 65px 23px;
    margin-bottom: 42px;
    background-color: #ffffff;
    box-shadow: 0px 11px 9px 0px rgba(0, 0, 0, 0.5);
    color: #ff0000;
    font-family: "Lobster", cursive;
    font-size: 2.48em;
  }
  section .event {
    width: 50%;
    float: right;
    padding-top: 15px;
    font-family: "Open Sans", sans-serif;
    font-weight: 700;
    font-size: 2.24em;
    text-align: right;
    line-height: 55px;
    text-transform: uppercase;
  }
  section .info {
    clear: both;
    margin-bottom: 40px;
    text-transform: uppercase;
  }
  section .seats {
    display: inline-block;
    margin-right: 150px;
    font-size: 0.375em;
    text-transform: uppercase;
    vertical-align: middle;
  }
  section .seats:last-child {
    margin-right: 0;
  }
  section .seats span {
    position: relative;
    font-family: "Kreon", serif;
    background-color: #fff;
    color: rgb(192, 5, 5);
    padding: 10px 15px;
    margin-left: 10px;
    font-size: 2.666em;
    box-shadow: 0px 8px 8px 4px rgba(0, 0, 0, 0.5);
    vertical-align: middle;
  }
</style>

<body>
     <%

      Connection con = null;    
      PreparedStatement st = null;

    ResultSet rs = null;
    ResultSet rs1 = null;
    
     try
     {
     String dbDriver = "com.mysql.jdbc.Driver";
//      Class.forName("oracle.jdbc.OracleDriver");
      Class.forName(dbDriver);
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Sound","root","9685");
   
//    Class.forName("org.apache.derby.jdbc.ClientDriver");
//            String url = "jdbc:derby://localhost:1527/Sound";
//            String user= "pankaj";
//            String pass="pankaj";
//            con = DriverManager.getConnection(url, user, pass);
     }
     catch(Exception e)
     {
         out.println(e);
     }
    
     int movieid=(Integer)session.getAttribute("movieid");
    //System.out.println(movieid);
     String sql1 ="SELECT m.movieid,m.moviename,s.starttime,s.endtime,s.price from movie m,shows s where s.movieid=m.movieid and m.movieid=?";
    PreparedStatement st2=null;
    st2=con.prepareStatement(sql1);
    
    st2.setInt(1, movieid);
     rs1=st2.executeQuery();
     
    rs1.next();
   
    
  %>
    
  <div class="container" style="padding-top:105px;">
    <section>
      <div class="title"><%= rs1.getString(2)%></div>
      <div class="event">Movie Ticket</div>
      <div class="info">Start Time :<%= rs1.getString(3)%> PM</div>
      <div class="seats">section<span>A</span></div>
      <div class="seats">row<span>1</span></div>
      <div class="seats">col<span>7</span></div>
    
    </section>
  </div >
      
  <div style="padding-left:705px; padding-top:25px;">  
      <input type="button" class="checkout-button" value="PrintTicket"  onclick="print1()"/>
    </div 
</body>
<script type="text/javascript">
     
            function print1()
            {
               
                window.print();
            }
     </script>
</html>

