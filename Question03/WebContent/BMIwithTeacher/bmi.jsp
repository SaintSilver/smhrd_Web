<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 중요한 것은 관련 라이브러리를 추가해주어야 한다는 것이다. -->
<c:set var = "m" value = "${param.height*0.01}" scope = "request"></c:set>
<c:set var = "bmi" value = "${param.weight/(m*m)}" scope = "request"></c:set>

이름 : ${param.name}
키: ${m}m
체중 : ${param.kg}kg
나의 BMI : ${bmi}

<c:choose>
	<c:when test="${bmi>=35}">
		고도비만
	</c:when>
	
	<c:when test="${bmi>=30}">
		비만
	</c:when>
	
	<c:when test="${bmi>=25}">
		과체중
	</c:when>
	
	<c:when test="${bmi>=20}">
		정상체중
	</c:when>
	
	<c:when test="${bmi<20}">
		저체중
	</c:when>
</c:choose>
	
	
	

</body>
</html>