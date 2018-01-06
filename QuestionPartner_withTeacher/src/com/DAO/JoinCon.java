package com.DAO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/JoinCon2")
public class JoinCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nickname");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		System.out.println(nick);
		BookDTO dto = new BookDTO(id,pw,nick,email,tel);
		BookDAO dao = new BookDAO();
		int result = dao.insert_member(dto);
		if (result>0) {
			response.sendRedirect("loginForm.html");
		}
		
	}

}
