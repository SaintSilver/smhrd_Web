<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%-- 기존 코드는 다음과 같다. 그러나 EL 을 사용하면 주석 아래 부분과 같다.
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

	%>
	
	ID : <%= id %><br>
	PW : <%= pw %>
 	--%>	
 	
 	ID EL : ${param.id}<br>
 	ID EL : ${param.pw}<br>
 	Hobby EL : ${paramValues.hobby[0]}${paramValues.hobby[1]}${paramValues.hobby[2]}
 	
</body>
</html>