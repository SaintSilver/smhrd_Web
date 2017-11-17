package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex04Plus")
public class ex04Plus extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//����ڰ� ���� �� �ҷ�����
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		int tdNum = Integer.parseInt(request.getParameter("tdNum"));
		int result = Integer.parseInt(num1)+Integer.parseInt(num2);
		System.out.println(result);
		
		response.setContentType("text/html;charset=euc-kr"); // Ŭ���̾�Ʈ���� � Ÿ������ ���������� �Ǵ� //���ڵ� ��� ����
		PrintWriter out = response.getWriter();
//		out.print(num1+"+"+num2+"="+result);
		
		out.print("<font color=rgba(0,0,0,0.3) size='10px'>"+result+"</font>");
		
		out.print("<table border = '5px solid #ee2222'>");
		out.print("<tr>");
		if(tdNum>1000) {
			out.print("������ �ض�");
		} else {
			for (int i = 0; i < tdNum; i++) {
				out.print("<td>");
				out.print(i);
				out.print("</td>");	
			}
		}
		
				
		out.print("</tr>");
		out.print("</table>");
	}
}
