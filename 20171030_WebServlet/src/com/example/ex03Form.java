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
		
		System.out.println("����ڰ� �Է��� ID : "+id);
		System.out.println("����ڰ� �Է��� pW : "+pw);
		
		//����ڰ� �Է��� id �� pw �� Client ���� �����Ͻÿ�. 
		
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		out.print("����� ID"+id+"\n"+"����� PW"+pw+123+"������");
	}

}
