import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseSelect {
//window.location.pathname.split('/'); we split pathname like this 
	
	private final String user ="root";
	private final String pass = "EB485TacoTuesday1!";
	private final String jdbcURL = "jdbc:mysql:localhost:3306/MinnNeigh?autoreconnect=true&ampuseSSL=false";

	public void SelectFrom(String neighborhood) {
		 Statement stmt = null;
		String sql = "Select crime types from neighborhood left join table on id";
		 try(Connection con = DriverManager.getConnection(jdbcURL,user, pass);) {
		        stmt = con.createStatement();
		        ResultSet rs = stmt.executeQuery(sql);
		        while (rs.next()) {
		        
		        }
	} catch (SQLException e) {
		e.getMessage();
		e.printStackTrace();
	}
	}
}
