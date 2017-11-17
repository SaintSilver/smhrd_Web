package com.Service;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.webDAO;

public class UpdateService implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		System.out.println(email+" "+pw+" "+tel+" "+address);
		
		webDAO dao = new webDAO();
		try {
			int cnt = dao.update(pw, tel, address, email);
			if (cnt==1) {
				
				HttpSession session = request.getSession();
				RequestDispatcher dis = request.getRequestDispatcher("main.jsp");
				session.setAttribute("email", email);
				dis.forward(request, response);

			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}
