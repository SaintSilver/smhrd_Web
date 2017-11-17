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
		
		Cookie cook = new Cookie("id","users_input_data");
		cook.setMaxAge(365*24*60*60); //1년동안 살아있는 쿠키 생성
	
		response.addCookie(cook);
		
		
	%>
</body>
</html>