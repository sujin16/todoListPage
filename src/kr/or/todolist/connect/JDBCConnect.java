package kr.or.todolist.connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnect {
	
	private JDBCConnect() {
		//다른 곳에서 객체를 생성할 수 없다. 
	}
	
	public static Connection getConnection() throws SQLException{
	       

        String driver = "com.mysql.jdbc.Driver";
    	String url = "jdbc:mysql://localhost:3306/connectdb?useSSL=false&serverTimezone=UTC";
    	String user ="connectuser";
    	String password ="connect123!@#";
    	
        // 1. driver 를 로딩
        try {

            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            System.out.println("드라이버를 찾을 수 없습니다.");
        }
        return DriverManager.getConnection(url, user, password);
    }
	 

    public static Connection getConnection(String user, String password) throws SQLException {
       
    	String driver = "com.mysql.jdbc.Driver";
    	String url = "jdbc:mysql://localhost:3306/connectdb?useSSL=false&serverTimezone=UTC";
       
        // 1. driver 를 로딩
        try {
            Class.forName(driver);

        } catch (ClassNotFoundException e) {
            System.out.println("드라이버를 찾을 수 없습니다.");
        }
        return DriverManager.getConnection(url, user, password);

    }

    public static Connection getConnection(String ipAddress, String user, String password) throws SQLException {

    	String driver = "com.mysql.jdbc.Driver";
    	//String url = "jdbc:mysql://localhost:3306/connectdb?useSSL=false&serverTimezone=UTC";
        String url = "jdbc:oracle:thin:@" + ipAddress + ":1521:xe";

        // 1. driver 를 로딩
        try {
            Class.forName(driver);

        } catch (ClassNotFoundException e) {

            System.out.println("드라이버를 찾을 수 없습니다.");

        }
        return DriverManager.getConnection(url, user, password);
    }

}
