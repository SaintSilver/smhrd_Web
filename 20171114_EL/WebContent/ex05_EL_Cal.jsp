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
	
		request.setAttribute("num1", 10);
		request.setAttribute("num2", 5);
	
	%>
	
	<h3>산술연산자</h3>
	num1 + num2 = ${num1+num2}<br>
	num1 / num2 = ${num1/num2}<br>
	num1 * num2 = ${num1*num2}<br>
	num1 - num2 = ${num1-num2}<br><br>
	
	<h3>비교연산자</h3>
	num1이 num2 보다 큰가? ${(num1-num2)>0}<br>
	num1이 num2 보다 큰가? ${num1>num2}<br>
	num1과 num2 가 양수인가? ${(num1>0) && (num2>0)}<br><br>
	
	<h3>삼항연산자</h3>
	num1과 num2 의 곱은? ${(num1*num2)<10?'10보다 작다':'10보다 크다.'}<br><br>
	
	<h3>Null 값 판정</h3>
	num1 이 null 이 아닌가? ${not empty num1}
	
</body>
</html>