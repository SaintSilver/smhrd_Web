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
	<!-- set태그를 이용해 4가지의 점수의 평균을 구하는 avg값을 선언하시오.(scope : request) -->
	
	<c:set var = "avg" value = "${(param.java+param.web+param.iot+param.android)/4}"></c:set>
	${avg}
	
	<!-- choose태그를 이용해 avg 값을 이용해
		avg 90점 이상 : 차현석님의 학점은 A입니다.
		avg 80점 이상 : 차현석님의 학점은 B입니다.
		avg 70점 이상 : 차현석님의 학점은 C입니다.
		나머지 : 차현석님의 학점은 D입니다.
		
		위와 같이 출력되게 하시오.
	 -->
	${param.name}님의 학점은
	<c:choose>
		<c:when test="${avg>=90}"> A </c:when>
		
		<c:when test="${avg>=80}"> B </c:when>
		
		<c:when test="${avg>=70}"> C </c:when>
	
		<c:otherwise> D </c:otherwise>
	</c:choose>	
	입니다.

	
</body>
</html>