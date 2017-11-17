<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
<%
	request.setAttribute("requestVariable", "request!Value");
	session.setAttribute("sessionVariable", "session!Value");
	application.setAttribute("applicationVariable", "application!Value");
%>
	<!-- 각 영역에 선언된 값들을 JSTL set태그로 바꾸시오. -->
	<c:set var = "requestVariable" value = "request!Value" scope = "request"></c:set>	
	<c:set var = "sessionVariable" value = "session!Value" scope = "session"></c:set>
	<c:set var = "applicationVariable" value = "application!Value" scope = "application"></c:set>
	
</body>
</html>



