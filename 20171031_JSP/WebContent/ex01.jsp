<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	Hello JSP!
	
	<%
	
		int num1 = 10;
		int num2 = 20;
		int result = num1+num2;
	
	%>
	
	<!-- 표현식 : 자바 변수 출력 -->
	num1과 num2의 합 : <%=result%>

</body>
</html>