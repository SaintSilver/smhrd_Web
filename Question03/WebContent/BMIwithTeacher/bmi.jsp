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
<!-- �߿��� ���� ���� ���̺귯���� �߰����־�� �Ѵٴ� ���̴�. -->
<c:set var = "m" value = "${param.height*0.01}" scope = "request"></c:set>
<c:set var = "bmi" value = "${param.weight/(m*m)}" scope = "request"></c:set>

�̸� : ${param.name}
Ű: ${m}m
ü�� : ${param.kg}kg
���� BMI : ${bmi}

<c:choose>
	<c:when test="${bmi>=35}">
		����
	</c:when>
	
	<c:when test="${bmi>=30}">
		��
	</c:when>
	
	<c:when test="${bmi>=25}">
		��ü��
	</c:when>
	
	<c:when test="${bmi>=20}">
		����ü��
	</c:when>
	
	<c:when test="${bmi<20}">
		��ü��
	</c:when>
</c:choose>
	
	
	

</body>
</html>