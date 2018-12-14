package util;

import java.sql.Connection;
import java.sql.DriverManager;


public class dbconnect {
	
	public static Connection getConnection() {
	try {
		String dbURL = "jdbc:mysql://locathost:3306/userform?serverTimezone=UTC";
		String dbID = "root";
		String dbPasswd = "159159";
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection(dbURL,dbID,dbPasswd);
	}catch (Exception e) {
		e.printStackTrace();
		}
		return null;
	}
}
