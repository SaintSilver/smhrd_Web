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
	<!-- �˻��� ����Ʈ�� �˻��� �ܾ ����Ͻÿ�.(choose/url/redirect) -->
	
	<c:choose>
	
		<c:when test = "${param.site=='daum'}">
			<c:url var = "search" value = "http://search.daum.net/search?">
				<c:param name = "q" value = "${param.search}"></c:param>
			</c:url>
		</c:when>
	
		<c:when test = "${param.site=='google'}">
			<c:url var = "search" value = "http://www.google.co.kr/search??">
				<c:param name = "q" value = "${param.search}"></c:param>
			</c:url>

		</c:when>
		
	</c:choose>
	
	<c:redirect url = "${search}"></c:redirect>
		
</body>
</html>