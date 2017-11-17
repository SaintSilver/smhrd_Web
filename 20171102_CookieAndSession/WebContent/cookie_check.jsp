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
		String id_cookie = request.getParameter("id");
		Cookie[] cook = request.getCookies();

		for (int i = 0; i < cook.length; i++) {

			out.print("Cookie NAME : " + cook[i].getName()+"<br>");
			out.print("Cookie VALUE : " + cook[i].getValue()+"<br>");
		}
	%>
</body>
</html>