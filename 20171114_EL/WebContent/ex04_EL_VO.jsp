<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = "json";
		String pw = "123";
		String nick = "jasonNo1";
		String age = "95";
		
		memberVO vo = new memberVO(id, pw, nick, age);
		
		request.setAttribute("vo", vo);
		RequestDispatcher dis = request.getRequestDispatcher("ex04_EL_VO_rec.jsp");
		dis.forward(request, response);
		
	%>
</body>
</html>