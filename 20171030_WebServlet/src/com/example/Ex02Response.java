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
		
		response.setContentType("text/html;charset=euc-kr"); // Ŭ���̾�Ʈ���� � Ÿ������ ���������� �Ǵ� //���ڵ� ��� ����
		PrintWriter out = response.getWriter();
		out.print("������ client�� IP"+clientIP);
		//������ �����Ѵ�. ���� html ������ ����� ���� �����.
	}

}
