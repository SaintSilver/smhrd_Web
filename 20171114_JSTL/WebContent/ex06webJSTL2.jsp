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

	<!-- ���� ����ϴ� url �� ������ ���� -->
<%-- 	<c:url var = "naver" value = "https://www.naver.com">
	</c:url>
	
	<c:redirect url ="${naver}"></c:redirect> --%>
	

	<!-- ���� ����ϴ°�? -->
	<!-- �˻�â�� �˻��� ������ ���� �Է����� ���� �� -->
	
	<!-- ���̹����� �̵��� �˻��ǰ� �ϱ� -->
<%-- 	<c:url var = "naverSearch" value = "https://search.naver.com/search.naver?">
		<c:param name = "query" value = "�̵���"></c:param>
	</c:url>
	
	<c:redirect url = "${naverSearch}"></c:redirect> --%>

	<!-- �������� �̵��� �˻��ǰ� �ϱ� -->
	<c:url var = "daumSearch" value = "http://search.daum.net/search?">
		<c:param name = "q" value = "�̵���"></c:param>
	</c:url>
	
	<c:redirect url = "${daumSearch}"></c:redirect>
	
</body>
</html>