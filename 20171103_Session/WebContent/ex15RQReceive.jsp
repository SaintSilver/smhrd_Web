<%@page import="com.dao.ForwardVO"%>
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
		//String name = (String) request.getAttribute("name");
		//String pw = (String) request.getAttribute("pw");
		//String nick = (String) request.getAttribute("nick"); //Now They Sent this Information as a object.
		
		ForwardVO vo = (ForwardVO) request.getAttribute("vo");
		
	%>
	
		ex15RQSend.jsp가 보내준 변수 : <%= vo.getName() %> / <%= vo.getPw() %> / <%= vo.getNick() %>

</body>
</html>