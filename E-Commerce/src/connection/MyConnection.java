package connection;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

public class MyConnection {
	public static Connection getConnection() {
		Connection con = null;
		String driver = "com.ibm.db2.jcc.DB2Driver";
		String url = "jdbc:db2://localhost:50000/ECOMMERC";
		String username = "CKSIN";
		String pass = "Chandan@95";
		try {
			Class.forName(driver);
			try {
				con = DriverManager.getConnection(url, username, pass);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		return con;
	}

}
