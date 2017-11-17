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
	<!-- if태그를 이용하여 num1과 num2을 더한 값이 짝수인지 홀수인지 출력하시오 -->
	<c:set var="result" value="${(param.num1+param.num2)}" scope="request"></c:set>
	${param.num1}+${param.num2}=${result}<br> 
	<c:if test="${result%2==0}">
		더한 결과는 짝수!
	</c:if>
	<c:if test="${result%2!=0}">
		더한 결과는 홀수!
	</c:if>
	
	<h3>더 간단히 해보자! 두 줄로 끝내는 코드!</h3>
	<c:if test="${((param.num1+param.num2)%2)==0}">짝수입니다.</c:if>
	<c:if test="${((param.num1+param.num2)%2)!=0}">홀수입니다.</c:if>
</body>
</html>