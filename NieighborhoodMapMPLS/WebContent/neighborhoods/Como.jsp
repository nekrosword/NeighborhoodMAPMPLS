<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*, java.io.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Selected Neighborhood</title>
</head>
<body>
// select info for past year
<% String sql = "select type, amount from sdff where year = 2017"; %>
<p> here is Como</p>
<h2> Como Data</h2>
<%
 final String user ="root";
final String pass = "EB485TacoTuesday1!";
final String jdbcURL = "jdbc:mysql:localhost:3306/crimedb2?autoreconnect=true&ampuseSSL=false";
Connection con = null;

try {
	
	 Statement stmt = null;
//	String sql = "Select type, date from crime where neighborhood = Como";
	 con = DriverManager.getConnection(jdbcURL,user, pass); 
	        stmt = con.createStatement();
	        ResultSet rs = stmt.executeQuery("Select type, date from crime where neighborhood = Como");
	        ResultSetMetaData rsMetaData = rs.getMetaData();
	        int numberOfCoumns = rsMetaData.getColumnCount();
	        out.println("<table border=1>");
	        out.print("<tr>");
	        for (int i=1; i<=numberOfCoumns; i++) {
	        out.print("<th>");
	        out.print(rsMetaData.getColumnName(i));
	        }
	        out.println("</tr>");
	        out.println("</table>");
	        }
	        catch (SQLException ex) {}
	        %>
</body>
</html>