package com.Service;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.webDAO;

public class LoginService implements Command{
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");

		try {

			webDAO dao = new webDAO();
			int cnt = dao.Login(email, pw);
			if (cnt == 1) {
				// response.sendRedirect("main.jsp");
				HttpSession session = request.getSession();
				RequestDispatcher dis = request.getRequestDispatcher("main.jsp");
				session.setAttribute("email", email);
				dis.forward(request, response);

			} else {
				response.setContentType("text/html;charset=euc-kr");
				PrintWriter out = response.getWriter();
				out.println("비밀번호나 아이디를 다시 입력해주세요");
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		
	}
}
