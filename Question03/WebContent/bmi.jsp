<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	

	<h1>비만지수 결과</h1>
	이름 : ${param.name}<br>
	신장 : ${param.height/100}m<br>
	체중 : ${param.weight}<br>

	<c:set var = "bmi" value = "${param.weight/((param.height/100)*(param.height/100))}" scope = "request"></c:set>
	<h3>나의 BMI</h3>
	<h2>${bmi}</h2>
	<br>	
		<c:choose>
			
			<c:when test = "${bmi>=35}">
			고도비만
			</c:when>
	
			<c:when test = "${bmi<35 && bmi >= 30}">
			비만
			</c:when>
			
			<c:when test = "${bmi<30 && bmi >= 25}">
			과체중
			</c:when>
			
			<c:when test = "${bmi<25 && bmi >= 20}">
			정상체중
			</c:when>
			
			<c:when test = "${bmi<20}">
			저체중
			</c:when>
		
		</c:choose>
	
</body>
</html>