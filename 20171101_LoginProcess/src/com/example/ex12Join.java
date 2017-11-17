package com.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ex12DAO;


@WebServlet("/ex12Join")
public class ex12Join extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		
		ex12DAO dao = new ex12DAO();
		int result;
		try {
			result = dao.Join(id,pw,nick);
			if(result>0){
				System.out.println(result+ " 조인 발생 : "+id+"\t"+pw+"\t"+nick);
				//response.sendRedirect("ex12Login.jsp"); //Now They made "ex12JoinSuccess.jsp". We need to pass through that page.
				RequestDispatcher dis = request.getRequestDispatcher("ex12JoinSuccess.jsp");
				request.setAttribute("id", id);
				request.setAttribute("nick", nick);
				dis.forward(request, response);
			} else {
				System.out.println(result+ " 조인 실패");
				response.sendRedirect("ex12LoginFail.jsp");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
