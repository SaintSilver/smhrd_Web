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
		//���������� ���尴ü�� �������� �ʱ� ������ ���� ��ü������ ���־�� �Ѵ�.  
		
		session.setMaxInactiveInterval(365*24*60*60);
		//���� �����ֱ� ����
		
		session.invalidate();
		//���� �����Ű��
		
	}

}
