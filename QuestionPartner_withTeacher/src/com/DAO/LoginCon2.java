package com.DAO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginCon2")
public class LoginCon2 extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		BookDTO bookDTO = new BookDTO(id,pw);
		BookDAO bookDAO = new BookDAO();
		String nickname = bookDAO.login_member(bookDTO);
		System.out.println(nickname);
		if(nickname!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("nickname", nickname);
			response.sendRedirect("Question6_Main.jsp");
			
		}
		
	}
}
