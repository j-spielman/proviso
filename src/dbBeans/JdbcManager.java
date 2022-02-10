package dbBeans;

import java.sql.Connection;
import java.sql.SQLException;

public class JdbcManager {
	private static String jdbcUrl = "jdbc:mysql://localhost:3306/proviso?";
	private static String jdbcUserName = "proviso_user";
	private static String jdbcPassword = "MySQL5IsGreat!";
	//private static String jdbcUserName = "root";
	//private static String jdbcPassword = "root";
	
	java.sql.Connection con = null;
	
	public  Connection getConn() throws SQLException {
		java.sql.Connection con = null;
		try {			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con= java.sql.DriverManager.getConnection(jdbcUrl +"user="+jdbcUserName+"&password="+jdbcPassword);
			System.out.println("Connection Success");
			return con;
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("connection failed");
			return null;
		}		
	}

public void closeConn() throws SQLException {
	try {
		con= java.sql.DriverManager.getConnection(jdbcUrl +"user="+jdbcUserName+"&password="+jdbcPassword);
		con.close();
		System.out.println("Connection Closed.");
	}catch(SQLException e){
		e.printStackTrace();
		System.out.println("Close Failed");
	};		
}

}
