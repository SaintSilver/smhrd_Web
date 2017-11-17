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
	
	이름 : <%= vo.getId() %><br>
	비번 : <%= vo.getPw() %><br>
	닉네임 : <%= vo.getNick() %><br>
	나이 : <%= vo.getAge() %><br>
	
	<br>
	<!-- ${className.variableName} -->
	<h4>아래는  EL 식을 사용하여 표현하였다.</h4>
	이름 EL : ${vo.id}<br>
	비번 EL : ${vo.pw}<br>
	닉네임 EL : ${vo.nick}<br>
	나이 EL :  ${vo.age}<br>
	
	
	
</body>
</html>