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
	<!-- if�±׸� �̿��Ͽ� num1�� num2�� ���� ���� ¦������ Ȧ������ ����Ͻÿ� -->
	<c:set var="result" value="${(param.num1+param.num2)}" scope="request"></c:set>
	${param.num1}+${param.num2}=${result}<br> 
	<c:if test="${result%2==0}">
		���� ����� ¦��!
	</c:if>
	<c:if test="${result%2!=0}">
		���� ����� Ȧ��!
	</c:if>
	
	<h3>�� ������ �غ���! �� �ٷ� ������ �ڵ�!</h3>
	<c:if test="${((param.num1+param.num2)%2)==0}">¦���Դϴ�.</c:if>
	<c:if test="${((param.num1+param.num2)%2)!=0}">Ȧ���Դϴ�.</c:if>
</body>
</html>