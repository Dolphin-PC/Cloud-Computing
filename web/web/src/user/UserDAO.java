package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.mysql.jdbc.exceptions.jdbc4.MySQLDataException;

import util.dbconnect;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/userform?serverTimezone=UTC";
			String dbID = "root";
			String dbPasswd = "159159";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbID,dbPasswd);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public int login(String userid,String passwd)
	{
		String SQL="SELECT passwd FROM user WHERE userid = ?";
	try {
		pstmt = conn.prepareStatement(SQL);
		pstmt.setString(1, userid);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			if(rs.getString(1).equals(passwd))
				return 1;
			else
				return 0;
			}
		return -1;
		} catch(Exception e) {
			e.printStackTrace();
		}
	return -2;
	}
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?,?,?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserid());
			pstmt.setString(2, user.getPasswd());
			pstmt.setString(3, user.getUsername());
			pstmt.setString(4, user.getGender());
			pstmt.setString(5, user.getYear());
			pstmt.setString(6, user.getYear2());
			pstmt.setString(7, user.getYear3());
			pstmt.setString(8, user.getEmail());
			pstmt.setString(9, user.getPhone());
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;	
	}	
}
