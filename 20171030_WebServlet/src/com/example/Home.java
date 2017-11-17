package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Home")
public class Home extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String clIP = request.getRemoteAddr();
		System.out.println(clIP);
		String welcomeSentence = "환영합니다.";
		response.setContentType("text/html;charset=euc-kr"); // 클라이언트에게 어떤 타입으로 응답해줄지 판단 //인코딩 방식 설정
		PrintWriter out = response.getWriter();
		
		if(clIP.equals("192.168.0.35")) {
			welcomeSentence += " 선생님.";
		}else if(clIP.equals("192.168.0.14")){
			welcomeSentence += " 희망.";
		} else {
			welcomeSentence += " 그런데 누구냐 넌. ";
		}
		
		out.print(welcomeSentence);
	}

}
