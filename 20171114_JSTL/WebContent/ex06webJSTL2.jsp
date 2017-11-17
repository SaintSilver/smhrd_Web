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

	<!-- 자주 사용하는 url 을 변수로 지정 -->
<%-- 	<c:url var = "naver" value = "https://www.naver.com">
	</c:url>
	
	<c:redirect url ="${naver}"></c:redirect> --%>
	

	<!-- 언제 사용하는가? -->
	<!-- 검색창에 검색할 내용을 직접 입력하지 않을 때 -->
	
	<!-- 네이버에서 이동국 검색되게 하기 -->
<%-- 	<c:url var = "naverSearch" value = "https://search.naver.com/search.naver?">
		<c:param name = "query" value = "이동국"></c:param>
	</c:url>
	
	<c:redirect url = "${naverSearch}"></c:redirect> --%>

	<!-- 다음에서 이동국 검색되게 하기 -->
	<c:url var = "daumSearch" value = "http://search.daum.net/search?">
		<c:param name = "q" value = "이동국"></c:param>
	</c:url>
	
	<c:redirect url = "${daumSearch}"></c:redirect>
	
</body>
</html>