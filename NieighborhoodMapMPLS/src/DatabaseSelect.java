import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseSelect {
//window.location.pathname.split('/'); we split pathname like this 
	
	private final String user ="root";
	private final String pass = "EB485TacoTuesday1!";
	private final String jdbcURL = "jdbc:mysql://localhost:3306/crimedb2?autoreconnect=true&useSSL=false";

	public void SelectFrom(String neighborhood) {
		 Statement stmt = null;
		String sql = "Select type, date from crime where neighborhood = '"+neighborhood+"'";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		 try {
				Class.forName("com.mysql.cj.jdbc.Driver");
		 Connection con = DriverManager.getConnection(jdbcURL,user, pass); 
		        stmt = con.createStatement();
		        ResultSet rs = stmt.executeQuery(sql);
		        ResultSetMetaData rsMetaData = rs.getMetaData();
		        int numberOfCoumns = rsMetaData.getColumnCount();
		        while (rs.next()) {
		        
		        }
	} catch (SQLException | ClassNotFoundException e) {
		e.getMessage();
		e.printStackTrace();
	}
	}
	public static void main(String[] args) {
		DatabaseSelect ds = new DatabaseSelect();
		ds.SelectFrom("Como");
	}
	
}
