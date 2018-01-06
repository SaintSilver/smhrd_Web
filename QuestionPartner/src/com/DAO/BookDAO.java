package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BookDAO {
	String dbclass = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String dbid = "test";
	String dbpw = "test";
	
	public int insert_member(BookDTO dto) {
		int cnt = 0;
		try {
			Class.forName(dbclass);
			Connection conn = DriverManager.getConnection(url, dbid, dbpw);

			PreparedStatement pst = conn.prepareStatement("insert into book_member values(?,?,?,?,?)");
			pst.setString(1, dto.getId());
			pst.setString(2, dto.getPw());
			pst.setString(3, dto.getNick());
			pst.setString(4, dto.getEmail());
			pst.setString(5, dto.getTel());
			
			cnt = pst.executeUpdate();

			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
		
	}

	public String login_member(String id, String pw) {
		String nickname = "";
		try {
			Class.forName(dbclass);
			Connection conn = DriverManager.getConnection(url, dbid, dbpw);
			PreparedStatement pst = conn.prepareStatement("select * from book_member where id = ? and pw = ?");
			pst.setString(1, id);
			pst.setString(2, pw);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				nickname = rs.getString("nickname");
				System.out.println(nickname);
				
			} else {
				System.out.println("Login Denied.");
			};
			
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return nickname;
	}

}
