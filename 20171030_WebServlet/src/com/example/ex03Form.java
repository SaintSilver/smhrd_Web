package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex03Form")
public class ex03Form extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println("사용자가 입력한 ID : "+id);
		System.out.println("사용자가 입력한 pW : "+pw);
		
		//사용자가 입력한 id 와 pw 를 Client 에게 응답하시오. 
		
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		out.print("당신의 ID"+id+"\n"+"당신의 PW"+pw+123+"오지마");
	}

}
