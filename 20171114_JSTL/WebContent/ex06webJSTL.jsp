<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- JSP�� response.sendRedirect() �� ���� -->
	<!-- �ش� �������� �̵��ع�����(�ּҰ� �ٲ��.) -->
	<%-- <c:redirect url="https://www.naver.com"></c:redirect> --%>
	
	
	<!-- �Ʒ� �ڵ�� �ּҴ� �ٲ��� ������, �ش� �������� ���� �������� �ҷ��´�.-->
	<c:import url="https://www.naver.com"></c:import>
	
	<!-- �Ʒ� �ڵ�� ���� �������� �� �ٸ� �������� ���� �������μ� �ҷ����� �ȴ�. -->
	<%-- ���� <c:import> �±׷� ���� �������� ���̹� �������� �ٲ������, �������� �ϴܿ� <c:include> ���� �ҷ��� �������� �ε��Ѵ�.--%>
	
	
	<%@ include file="ex03if.html"%>
	
</body>
</html>