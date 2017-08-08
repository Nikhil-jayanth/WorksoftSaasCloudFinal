<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%
String userName = (String)session.getAttribute("name");
if(null == userName)
	response.sendRedirect("GiftcardHomePage.jsp");
String driverName = "com.mysql.jdbc.Driver";
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>worksoft saas</title>
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/retina-1.1.0.min.js"></script>
        <script src="assets/js/scripts.js"></script>
		<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<style>.carousel-inner > .item > img,.carousel-inner > .item > a > img{width: 60%;margin: auto;}</style>
    </head>
    <body>
    <div class="container-fluid" align = "center" style="color:white">
    	<h1>Work In Progress</h1>
    	<h1>will be updated shortly</h1>
    </div>
  												
<footer class="container-fluid text-center">
  <p style="color:white">Copyright © 2017 by worksoft.All Rights Reserved.</p>  
  <div class="container-fluid" align = "center">
		<a href="http://www.linkedin.com" title="linkedin" target="_blank">
			<i class="fa fa-linkedin"></i></a>
		<a href="https://www.facebook.com" title="facebook" target="_blank">
			<i class="fa fa-facebook"></i></a>
		<a href="https://www.twitter.com" title="twitter" target="_blank">
			<i class="fa fa-twitter"></i></a>
		<a href="https://www.gmail.com">
			<i class="fa fa-envelope"></i></a>
		<a href="https://www.skype.com">
			<i class="fa fa-skype"></i></a>
</div>
</footer>
</body>
</html>