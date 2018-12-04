<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*, java.io.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Humboldt Industrial</title>
</head>
<body>
<h2> Humboldt Industrial Data</h2>
<%

String user ="root";
String pass = "EB485TacoTuesday1!";
String jdbcURL = "jdbc:mysql://localhost:3306/crimedb2?autoreconnect=true&useSSL=false";


Statement stmt = null;
ResultSetMetaData md;
Class.forName("com.mysql.cj.jdbc.Driver");
 try {
	 
 Connection con = DriverManager.getConnection(jdbcURL,user, pass); 
	stmt = con.createStatement();

	        ResultSet results = stmt.executeQuery("Select count(type) from crime where neighborhood ='Humboldt'");
	        ResultSetMetaData rs = results.getMetaData();
	        out.print("Humboldt Industrial has the least amount of crime within Minneapolis in 2018 with 35 instances of crime in the last year");
 }catch(SQLException e) {
	        	e.getMessage();
	        }
	        %>
</body>
</html>