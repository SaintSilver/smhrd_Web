<%@page import="java.util.Random"%>
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
		Random rand = new Random();
		int comRan = rand.nextInt(5)+1;
		int userRan = rand.nextInt(5)+1;
		
		out.print("��ǻ���� �ֻ��� : "+comRan+"<br>");
		out.print("������ �ֻ��� : "+userRan+"<br>");
		
		if(comRan>userRan){
			out.print("<h3>��ǻ���� �¸�!</h3>");
		} else if (comRan==userRan){
			out.print("<h3>����! Ȯ���� 1/6!</h3>");
		} else {
			out.print("<h3>������ �¸�!</h3>");
		}
		
	%>
	<form action="gameSelect.jsp">
	<input type="submit" value = "���ư���"/>
	</form>
</body>
</html>