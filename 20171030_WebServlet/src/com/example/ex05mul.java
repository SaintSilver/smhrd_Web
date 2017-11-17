package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ex05mul")
public class ex05mul extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int dan = Integer.parseInt(request.getParameter("dan"));
		System.out.println(dan);
		
		response.setContentType("text/html;charset=euc-kr"); // 클라이언트에게 어떤 타입으로 응답해줄지 판단 //인코딩 방식 설정
		PrintWriter out = response.getWriter();
		
		out.print("<table border = '1px solid black'>");
		
		for (int i = 1; i < 10; i++) {
			out.print("<tr><td>");
			out.print(dan+"×"+i+"="+(dan*i));
			out.print("</td></tr>");
		}
		
		out.print("</table>");
	}

}
