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
		
		out.print("컴퓨터의 주사위 : "+comRan+"<br>");
		out.print("유저의 주사위 : "+userRan+"<br>");
		
		if(comRan>userRan){
			out.print("<h3>컴퓨터의 승리!</h3>");
		} else if (comRan==userRan){
			out.print("<h3>비겼다! 확률은 1/6!</h3>");
		} else {
			out.print("<h3>유저의 승리!</h3>");
		}
		
	%>
	<form action="gameSelect.jsp">
	<input type="submit" value = "돌아가기"/>
	</form>
</body>
</html>