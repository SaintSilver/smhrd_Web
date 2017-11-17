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
	<!-- set�±׸� �̿��� 4������ ������ ����� ���ϴ� avg���� �����Ͻÿ�.(scope : request) -->
	
	<c:set var = "avg" value = "${(param.java+param.web+param.iot+param.android)/4}"></c:set>
	${avg}
	
	<!-- choose�±׸� �̿��� avg ���� �̿���
		avg 90�� �̻� : ���������� ������ A�Դϴ�.
		avg 80�� �̻� : ���������� ������ B�Դϴ�.
		avg 70�� �̻� : ���������� ������ C�Դϴ�.
		������ : ���������� ������ D�Դϴ�.
		
		���� ���� ��µǰ� �Ͻÿ�.
	 -->
	${param.name}���� ������
	<c:choose>
		<c:when test="${avg>=90}"> A </c:when>
		
		<c:when test="${avg>=80}"> B </c:when>
		
		<c:when test="${avg>=70}"> C </c:when>
	
		<c:otherwise> D </c:otherwise>
	</c:choose>	
	�Դϴ�.

	
</body>
</html>