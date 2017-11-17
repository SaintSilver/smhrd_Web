package com.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.webDAO;

public class JoinService implements Command{
	public void execute(HttpServletRequest request, HttpServletResponse response){
		webDAO dao = new webDAO();

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");

		int cnt = 0;
		try {
			cnt = dao.Join(email, pw, tel, address);
			if (cnt > 0) {
				response.sendRedirect("main.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
