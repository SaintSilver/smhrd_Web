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
	<!-- foreach�±׸� �̿��� ����ڰ� ���ϴ� ���۰� ���� ������ ������ �����ܱ��� ����Ͻÿ� -->

	<c:if test = "${param.num1>=param.num2}">���۴��� ���ܺ��� �۾ƾ� �մϴ�. �ٽ� �Է����ּ���.</c:if>
	
	<c:if test = "${param.num1<param.num2}">
	<c:forEach begin = "${param.num1}" end = "${param.num2}" var = "i">
		<c:forEach begin = "1" end = "9" var = "j">
			${i} * ${j} = ${i*j}
			<br />
		</c:forEach>
		<br />
	</c:forEach>
	</c:if>
</body>
</html>