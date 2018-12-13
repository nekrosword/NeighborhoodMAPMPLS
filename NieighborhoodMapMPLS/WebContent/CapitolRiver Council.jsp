<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*, java.io.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Capital River </title>
 <link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
<h2> Capital River Crime</h2>
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

	        ResultSet results = stmt.executeQuery("Select count(type) from crime where neighborhood ='Capitol River'");
	        ResultSetMetaData rs = results.getMetaData();
	        while(results.next()) {
	        	for (int i =1; i<2; i++) {
	        		out.print("<p>Capitol River has the most amount of crime within St. Paul in 2018 with " + results.getString(i) +" instances of" + 
	        				" crime in the past week</p>");
	        	}
	        }
	        
 }catch(SQLException e) {
	        	e.getMessage();
	        }
	        %>
	        <p> With Capital River having 5866 instances of crime in the past year </p>
</body>
</html>