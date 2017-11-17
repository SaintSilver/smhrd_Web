<%@page import="com.dao.ForwardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- Request send information -->

<%

	String name = "smart";
	String pw = "123";
	String nick = "smartNO1";
	
	%> <h3>I want to send this 3 variables to "ex15RQRecieve.jsp"</h3> <%
	
	//request.setAttribute("name", name);
	//request.setAttribute("pw", pw);
	//request.setAttribute("nick", nick); //We will send information as OBJECT!
	
	ForwardVO vo = new ForwardVO(name, pw, nick);
	request.setAttribute("vo",vo);
	
	RequestDispatcher dis = request.getRequestDispatcher("ex15RQReceive.jsp");
	dis.forward(request, response);

%>

</body>
</html>