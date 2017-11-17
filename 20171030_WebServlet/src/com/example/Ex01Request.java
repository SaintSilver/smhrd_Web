package com.example;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex01Request")
//URL Mapping �̶�� �Ѵ�. ���� �������� ��θ� �����ϰ� �����Ѵ�. 
//��ġ�� ��Ȯ�� ǥ���ع����� ������ ���Ȼ� ������� ����� �ʰ� ���ÿ� ����ڰ� url �� �����ϱ� �ʹ� ������������ٴ� ������ �ִ�. 
public class Ex01Request extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String clientIP = request.getRemoteAddr(); 		//Ŭ���̾�Ʈ IP
		String clientComName = request.getRemoteHost();	//Ŭ���̾�Ʈ ��ǻ�� �̸�
		String clientProtocol = request.getProtocol();	//Ŭ���̾�Ʈ�� ������ ����ϴ� ��������
		Locale clientNation = request.getLocale();		//Ŭ���̾�Ʈ�� �����ϴ� ����
		String userAgent = request.getHeader("User-Agent");	//Ŭ���̾�Ʈ�� ������ ��û�� �� ������� Ȯ���� �� �ִ� �޼ҵ�
		
		System.out.println(clientIP);
		System.out.println(clientComName);
		System.out.println(clientProtocol);
		System.out.println(clientNation);
		System.out.println(userAgent);
		
	}
}
