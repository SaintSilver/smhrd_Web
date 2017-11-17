package com.VO;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class bookDAO {
		Connection conn;
		PreparedStatement pst;
		ResultSet rs;
		
		private void getConn() throws ClassNotFoundException, SQLException, IOException {
		
		InputStream in = (this.getClass().getResourceAsStream("../../../../db.properties"));
		Properties p = new Properties();
		p.load(in);
		
		String dbclass = p.getProperty("dbclass");
		String url = p.getProperty("dburl");
		String dbid = p.getProperty("dbid");
		String dbpw = p.getProperty("dbpw");
		
		Class.forName(dbclass);
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		conn = DriverManager.getConnection(url, dbid, dbpw);
	}
	
	public int insertBook(String num, String name, String author, String publisher) throws ClassNotFoundException, SQLException, IOException {
		getConn();
		
		pst = conn.prepareStatement("INSERT INTO test_book values (?,?,?,?)");
		pst.setString(1, num);
		pst.setString(2, name);
		pst.setString(3, author);
		pst.setString(4, publisher);

		int cnt = pst.executeUpdate();
		return cnt;
		
	}
	
	public int updateBook(String num, String name, String author, String publisher) throws Exception{
		getConn();
		
		pst = conn.prepareStatement("UPDATE test_book SET name = ?, author = ?, publisher = ? WHERE num = ?");
		pst.setString(1, name);
		pst.setString(2, author);
		pst.setString(3, publisher);
		pst.setString(4, num);
		
		int cnt = pst.executeUpdate();
		return cnt;
				
	}
	
	public int deleteBook(String num) throws Exception {
		getConn();
		
		pst = conn.prepareStatement("DELETE FROM test_book WHERE num = ?");
		pst.setString(1, num);
		int cnt = pst.executeUpdate();
		return cnt;
	}
	
	public ResultSet selectBookAll() throws Exception {
		getConn();
		
		pst = conn.prepareStatement("select * from test_book");
		rs = pst.executeQuery();
		
		return rs;
	}
	
}
