package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ex12DAO {
	public int Join(String id, String pw, String nick) throws ClassNotFoundException, SQLException {
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String dbid  = "immanuel";
		String dbpw = "immanuel";
		
		//동적 로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//DBMS에 id와 pw를 인증받고 DB를 핸들링 할 수 있는 Connection 객체를 생성
		Connection conn = DriverManager.getConnection(url,dbid,dbpw);
		
		PreparedStatement pst = conn.prepareStatement("insert into member values(?,?,?)");
		pst.setString(1, id);
		pst.setString(2, pw);
		pst.setString(3, nick);
		
		int result = pst.executeUpdate();
		return result;
	}
	
	public ResultSet Login(String id, String pw) throws Exception{
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String dbid  = "immanuel";
		String dbpw = "immanuel";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//DBMS에 id와 pw를 인증받고 DB를 핸들링 할 수 있는 Connection 객체를 생성
		Connection conn = DriverManager.getConnection(url,dbid,dbpw);
		
		PreparedStatement pst = conn.prepareStatement("select * from member where id = ? AND pw = ?");
		pst.setString(1, id);
		pst.setString(2, pw);
		
		ResultSet rs = pst.executeQuery();
		//select return ResultSet
		//pst.executeUpdate();
		//create / update / delete / insert ... return int
		
		return rs;
	}
}
