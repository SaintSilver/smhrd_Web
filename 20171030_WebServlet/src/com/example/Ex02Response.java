package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex02Response")
public class Ex02Response extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String clientIP = request.getRemoteAddr();
		System.out.println(clientIP);
		
		response.setContentType("text/html;charset=euc-kr"); // 클라이언트에게 어떤 타입으로 응답해줄지 판단 //인코딩 방식 설정
		PrintWriter out = response.getWriter();
		out.print("접속한 client의 IP"+clientIP);
		//순서에 유의한다. 먼저 html 파일을 만들고 길을 만든다.
	}

}
