<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*, java.io.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Como (St. Paul)</title>
</head>
<body>

<h2> Como Data</h2>
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
//	String sql = "Select type, date from crime where neighborhood = Como";
	        ResultSet results = stmt.executeQuery("Select type, date from crime where neighborhood ='Como'");
	        ResultSetMetaData rs = results.getMetaData();
	     
	        int numberOfCoumns = rs.getColumnCount();
	        out.println("<table border=1>");
	        out.println("<tr>");

	        for (int i=1; i<=numberOfCoumns; i++)  {
	        out.println("<th>" + rs.getColumnName(i) + "</th>");
	        }
	        out.println("</tr>");
	        
	       while (results.next()) { 
	        	
	        
	        out.println("<tr>");
	       for (int i =1; i<=numberOfCoumns; i++) {
	    	   
	        out.println("<td>" + results.getString(i) );
	        out.println("</td>");
	      
	       	        
	       }
	       out.println("</tr>");
	       }
 			out.print("</table>");
 }
	        catch (SQLException ex) {
	        	ex.getMessage();
	        }
	        %>
	        
</body>
</html>