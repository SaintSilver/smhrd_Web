<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%-- <%
//1. session에 있는 email값을 삭제
session.removeAttribute("email");
//2. main.jsp로 이동
response.sendRedirect("main.jsp");
%> --%>

<c:remove var = "email" scope="session"/>
<c:redirect url = "main.jsp"></c:redirect>

</body>
</html>