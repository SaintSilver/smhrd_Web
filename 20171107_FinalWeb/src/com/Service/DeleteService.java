package com.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.webDAO;

public class DeleteService implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String num = request.getParameter("num");
		
		int cnt;
		try {
			webDAO dao = new webDAO();
			cnt = dao.messageDelete(num);
			
			if(cnt>0) {
				response.sendRedirect("main.jsp#two");
			}
			
		} catch (Exception e) {

		}
		
	}
	

}
