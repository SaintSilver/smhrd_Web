package com.Service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberVO;
import com.DAO.webDAO;


@WebServlet("/SearchEmail")
public class SearchEmail extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//클라이언트의 요청을 request가 가지고 있으므로
		
		String email = request.getParameter("email");
		webDAO dao = new webDAO();
		System.out.println("email: "+email);
		try {
			memberVO vo = dao.emailSelect(email);
			
			response.setContentType("text/html;charset=UTF-8");;
			PrintWriter out = response.getWriter();
			
			if(vo!= null) {
				out.print("이메일이 존재합니다.");	
			} else {
				out.print("이메일이 존재하지 않습니다.");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

		
		
	}

}
