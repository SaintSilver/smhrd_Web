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
	<h1>ȯ���մϴ�!</h1>
	<%
		// 1. ex01-2confirm.jsp���� �Ѱ��� memberVO��ü�� ����Ͻÿ�.
		MemberVO vo = (MemberVO) request.getAttribute("vo");
		
	%>
	
	�̸� : <%=vo.getName() %><br>
	���� : <%=vo.getAge() %><br>
	�ּ� : <%=vo.getAddr() %><br>
	�̸��� : <%=vo.getEmail() %><br>
	
		
</body>
</html>