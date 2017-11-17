package com.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ex12DAO;

@WebServlet("/ex12Login")
public class ex12Login extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		
		
		try{
		//���� �ε�
			ex12DAO dao = new ex12DAO();
			ResultSet rs = dao.Login(id, pw);
			
		if(rs.next()){ // There is only one row. So using "if" instead of "while". 
			String getId = rs.getString(1); //parameter could be name of column. ex) rs.getString("id")
			String getPw = rs.getString(2);
			String getNick = rs.getString(3);
			
			HttpSession session = request.getSession(); //20171103 session ���� ����
			session.setAttribute("id",id);//20171103 session ���� ���� 
			
			/*20171103 Modified*/
			//response.sendRedirect("ex12LoginSuccess.jsp?id="+getId);
			//������ ������Ʈ���� ���� ���̵� ���� �˾Ƴ����ٸ� 
			//������ session �� ���̵� ����ǰ� �ȴ�.
			//���� �Ʒ� �ڵ带 ���� �������� �̵��� ���������� session �� ���� ���̵� �޾ƿ� �� �ִ�.  
			
			response.sendRedirect("ex12LoginSuccess.jsp");
		} else {
			response.sendRedirect("ex12LoginFail.jsp");
		}
		
		} catch(Exception e) {
			
		}

				
//		if(id.equals("smart") && pw.equals("123")){
//			response.sendRedirect("ex12LoginSuccess.jsp");
//		}else{
//			response.sendRedirect("ex12LoginFail.jsp");
//		}
		
	}

}
