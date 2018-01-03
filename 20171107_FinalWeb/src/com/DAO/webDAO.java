package com.DAO;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

public class webDAO {
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
		conn = DriverManager.getConnection(url, dbid, dbpw);
	}
		
	public int Join(String email, String pw, String tel, String address) throws Exception {

		getConn();
		
		// web_member���̺� ����ڰ� �Է��� ������ �����ϰ�
		// �������� �� �ٽ� main.jsp�� ���ư��� �Ͻÿ�.
		// jsp������Ʈ�� ex12DAO -> join �޼ҵ� ����
		pst = conn.prepareStatement("insert into web_member values (?,?,?,?)");
		pst.setString(1, email);
		pst.setString(2, pw);
		pst.setString(3, tel);
		pst.setString(4, address);

		int cnt = pst.executeUpdate();
		return cnt;
		// con.DAO��Ű���� webDAO Ŭ���������� ����
		// ���������� JDBC�ҽ��� �и��ϴ� �ڵ带 �ϼ��Ͻÿ�.
		// webDAO�� join�޼ҵ带 ���� ��
	}

	public int Login(String email, String pw) throws Exception {

	
		getConn();
		// web_member���̺� ����ڰ� �Է��� ������ �����ϰ�
		// �������� �� �ٽ� main.jsp�� ���ư��� �Ͻÿ�.
		// jsp������Ʈ�� ex12DAO -> join �޼ҵ� ����
		System.out.println("Method ");
		pst = conn.prepareStatement("select * from web_member where email =?");
		pst.setString(1, email);
		rs = pst.executeQuery();
		int cnt = 0;
		if (rs.next()) {
			String getpw = rs.getString(2);
			if (pw.equals(getpw)) {
				cnt=1;
			}
		} else {
			cnt=2;
		}
		return cnt;

	}
	
	
	public memberVO emailSelect(String email) throws Exception {
		getConn();
		
		pst = conn.prepareStatement("select*from web_member where email =?");
		pst.setString(1, email);
		
		rs = pst.executeQuery();
		
		memberVO vo = null;
		
		if(rs.next()) {
			String tel = rs.getString(3);
			String address = rs.getString(4);
			
			vo = new memberVO(tel, address);
			
		}else {
			
			
		}
		return vo;
	}

	public int update(String pw, String tel, String address, String email) throws Exception{
		getConn();
		
		pst = conn.prepareStatement("UPDATE WEB_MEMBER SET PW = ?, TEL = ?, ADDRESS = ? WHERE EMAIL = ?");
		pst.setString(1, pw);
		pst.setString(2, tel);
		pst.setString(3, address);
		pst.setString(4, email);
		
		int cnt = pst.executeUpdate();
		return cnt;
		
		
	}

	public int messageInsert(String name, String email, String message){
		int cnt = 0;
		try {
			
			//web_message ���̺� ����ڰ� �Է��� ���� �����Ͻÿ�.
			getConn();
			
			pst = conn.prepareStatement("INSERT INTO web_message VALUES(message_num.NEXTVAL,?,?,?,SYSDATE)");
			pst.setString(1,name);
			pst.setString(2,email);
			pst.setString(3,message);
			
			cnt = pst.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("SQL Error");
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return cnt;
	}
	
	public ArrayList<messageVO> messageSelect(String email) throws Exception {
		getConn();
		
		pst = conn.prepareStatement("SELECT * FROM web_message WHERE receive_email = ?");
		pst.setString(1, email);
		
		rs = pst.executeQuery();
		
		messageVO vo = null;
		ArrayList<messageVO> arr = new ArrayList<>();
		
		while(rs.next()) {
			String num = rs.getString(1);
			String send_name = rs.getString(2);
			String content = rs.getString(4);
			String date = rs.getString(5);
			
			vo = new messageVO(num, send_name, content, date);
			arr.add(vo);
		}
		
		return arr;
	}
	
	public int messageDelete(String num) throws Exception {
		getConn();
		
		pst = conn.prepareStatement("DELETE FROM web_message WHERE num = ?");
		pst.setString(1, num);
		int cnt = pst.executeUpdate();
		return cnt;
	}

}
