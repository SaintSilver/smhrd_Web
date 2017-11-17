<%@page import="com.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	body{
		text-align: center;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>환영합니다!</h1>
	<%
		// 1. ex01-2confirm.jsp에서 넘겨준 memberVO객체를 출력하시오.
		MemberVO vo = (MemberVO) request.getAttribute("vo");
		
	%>
	
	이름 : <%=vo.getName() %><br>
	나이 : <%=vo.getAge() %><br>
	주소 : <%=vo.getAddr() %><br>
	이메일 : <%=vo.getEmail() %><br>
	
		
</body>
</html>