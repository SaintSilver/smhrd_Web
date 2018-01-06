package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BookDAO {
	private String id="test";
	private String pw="test";
	private String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs; 
	
	public Connection getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url,id,pw);
			
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public int insert_member(BookDTO bookDTO) {
		conn = getConn();
				String sql = "insert into book_member values(?,?,?,?,?)";
		int cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, bookDTO.getId());
			psmt.setString(2, bookDTO.getPw());
			psmt.setString(3, bookDTO.getNick());
			psmt.setString(4, bookDTO.getEmail());
			psmt.setString(5, bookDTO.getTel());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
		
	}

	public String login_member(BookDTO bookDTO) {
		conn = getConn();
		
		String sql = "select * from book_member where id = ? and pw = ?";
		String nick = "";
		try {

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, bookDTO.getId());
			psmt.setString(2, bookDTO.getPw());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				nick = rs.getString(3);
			};
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return nick;
		
	}
	
	
}
