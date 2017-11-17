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
		String welcomeSentence = "ȯ���մϴ�.";
		response.setContentType("text/html;charset=euc-kr"); // Ŭ���̾�Ʈ���� � Ÿ������ ���������� �Ǵ� //���ڵ� ��� ����
		PrintWriter out = response.getWriter();
		
		if(clIP.equals("192.168.0.35")) {
			welcomeSentence += " ������.";
		}else if(clIP.equals("192.168.0.14")){
			welcomeSentence += " ���.";
		} else {
			welcomeSentence += " �׷��� ������ ��. ";
		}
		
		out.print(welcomeSentence);
	}

}
