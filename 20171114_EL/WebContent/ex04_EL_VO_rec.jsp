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
		memberVO vo = (memberVO) request.getAttribute("vo");
	%>
	
	�̸� : <%= vo.getId() %><br>
	��� : <%= vo.getPw() %><br>
	�г��� : <%= vo.getNick() %><br>
	���� : <%= vo.getAge() %><br>
	
	<br>
	<!-- ${className.variableName} -->
	<h4>�Ʒ���  EL ���� ����Ͽ� ǥ���Ͽ���.</h4>
	�̸� EL : ${vo.id}<br>
	��� EL : ${vo.pw}<br>
	�г��� EL : ${vo.nick}<br>
	���� EL :  ${vo.age}<br>
	
	
	
</body>
</html>