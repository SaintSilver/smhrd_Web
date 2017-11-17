package com.example;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex01Request")
//URL Mapping 이라고 한다. 서버 페이지의 경로를 간단하게 압축한다. 
//위치를 정확히 표현해버리먼 먼저는 보안상 취약점이 생기게 됨과 동시에 사용자가 url 을 이해하기 너무 어려워저버린다는 단점이 있다. 
public class Ex01Request extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String clientIP = request.getRemoteAddr(); 		//클라이언트 IP
		String clientComName = request.getRemoteHost();	//클라이언트 컴퓨터 이름
		String clientProtocol = request.getProtocol();	//클라이언트와 서버가 통신하는 프로토콜
		Locale clientNation = request.getLocale();		//클라이언트가 접속하는 나라
		String userAgent = request.getHeader("User-Agent");	//클라이언트가 서버에 요청할 때 헤더값을 확인할 수 있는 메소드
		
		System.out.println(clientIP);
		System.out.println(clientComName);
		System.out.println(clientProtocol);
		System.out.println(clientNation);
		System.out.println(userAgent);
		
	}
}
