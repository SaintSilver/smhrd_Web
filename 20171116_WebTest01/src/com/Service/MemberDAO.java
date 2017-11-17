package com.Service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberDAO {
	public void deleteMember(String name) throws ServletException, IOException{
		String className = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String db_Id  = "system";
		String db_Pw = "1111";
		String sql = "";
		
		int cnt = 0;
		
		Connection conn = null;
		PreparedStatement pst = null;
		
		try {
			Class.forName(className);
			conn = DriverManager.getConnection(url, db_Id, db_Pw);

			sql = "DELETE FROM member where name = ?";
			
			pst = conn.prepareStatement(sql);
			pst.setString(1, name);
			
			cnt = pst.executeUpdate();
			
			if(cnt>0) {
				System.out.println("정보 삭제 완료");
			}
			
			pst.close();
			conn.close();
				
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertMember(String name, String age, String email, String tel) throws ServletException, IOException{
		String className = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String db_Id  = "system";
		String db_Pw = "1111";
		String sql = "";
		
		int cnt = 0;
		
		Connection conn = null;
		PreparedStatement pst = null;
		try {
			Class.forName(className);
			conn = DriverManager.getConnection(url, db_Id, db_Pw);
			
			sql = "INSERT INTO memver value(?,?,?,?)";
			
			pst = conn.prepareStatement(sql);
			pst.setString(1, name);
			pst.setString(2, age);
			pst.setString(3, email);
			pst.setString(4, tel);
			
			cnt = pst.executeUpdate();
			
			if(cnt >0) {
				System.out.println("정보저장 완료");
			}
			
			pst.close();
			conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public void updateMember(String age, String email, String tel, String name) throws ServletException, IOException{
		String className = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String db_Id  = "system";
		String db_Pw = "1111";
		String sql = "";
		
		int cnt = 0;
		
		Connection conn = null;
		PreparedStatement pst = null;
		
		try {
			Class.forName(className);
			conn = DriverManager.getConnection(url, db_Id, db_Pw);
			
			sql = "UPDATE member SET AGE = ?, EMAIL = ?, TEL = ?, NAME = ?";
			
			pst = conn.prepareStatement(sql);
			pst.setString(1, age);
			pst.setString(2, email);
			pst.setString(3, tel);
			pst.setString(4, name);
			
			cnt = pst.executeUpdate();
			
			if(cnt >0) {
				System.out.println("정보수정 완료");
			}
			
			pst.close();
			conn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
