<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ex08import.html에서 보내준 사이트 이름을 받아 choose/import태그를 이용해 출력하시오. -->
	<c:if test="${param.site == 'daum'}">
		<c:import url="https://www.daum.net"></c:import>
	</c:if>
	
	<c:if test="${param.site == 'youtube'}">
		<c:import url="https://www.youtube.net"></c:import>
	</c:if>
	
	<c:if test="${param.site == 'kism'}">
		<c:import url="https://www.kism.net"></c:import>
	</c:if>
</body>
</html>