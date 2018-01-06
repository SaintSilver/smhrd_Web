package com.DAO;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		BookDAO dao = new BookDAO();
		String nickname =dao.login_member(id,pw);
		
		HttpSession session = request.getSession();
		session.setAttribute("nickname", nickname);
		
		if (!nickname.equals("")) {
		RequestDispatcher dis = request.getRequestDispatcher("Question6_Main.jsp");
		dis.forward(request, response);
		} else {
			response.sendRedirect("Question6_Login.jsp");
		}
		
	}

}
