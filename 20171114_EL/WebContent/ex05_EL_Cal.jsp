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
	
	<h3>���������</h3>
	num1 + num2 = ${num1+num2}<br>
	num1 / num2 = ${num1/num2}<br>
	num1 * num2 = ${num1*num2}<br>
	num1 - num2 = ${num1-num2}<br><br>
	
	<h3>�񱳿�����</h3>
	num1�� num2 ���� ū��? ${(num1-num2)>0}<br>
	num1�� num2 ���� ū��? ${num1>num2}<br>
	num1�� num2 �� ����ΰ�? ${(num1>0) && (num2>0)}<br><br>
	
	<h3>���׿�����</h3>
	num1�� num2 �� ����? ${(num1*num2)<10?'10���� �۴�':'10���� ũ��.'}<br><br>
	
	<h3>Null �� ����</h3>
	num1 �� null �� �ƴѰ�? ${not empty num1}
	
</body>
</html>