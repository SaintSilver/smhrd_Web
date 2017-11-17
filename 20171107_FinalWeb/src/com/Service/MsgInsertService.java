package com.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.webDAO;

public class MsgInsertService implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");

		try {
			webDAO dao = new webDAO();
			int cnt = dao.messageInsert(name, email, message);
			if (cnt > 0) {
				System.out.println("Seding Message Success!");
				response.sendRedirect("main.jsp");
			}
		} catch (Exception e) {

		}	}

}
