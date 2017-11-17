package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ex14Session")
public class ex14Session extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//서블릿에서는 내장객체가 지원되지 않기 때문에 직접 객체생성을 해주어야 한다.  
		
		session.setMaxInactiveInterval(365*24*60*60);
		//세션 생명주기 설정
		
		session.invalidate();
		//세션 만료시키기
		
	}

}
