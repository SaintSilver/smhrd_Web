<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- JSP의 response.sendRedirect() 와 동일 -->
	<!-- 해당 페이지로 이동해버린다(주소가 바뀐다.) -->
	<%-- <c:redirect url="https://www.naver.com"></c:redirect> --%>
	
	
	<!-- 아래 코드는 주소는 바뀌지 않지만, 해당 페이지를 현재 페이지로 불러온다.-->
	<c:import url="https://www.naver.com"></c:import>
	
	<!-- 아래 코드는 현재 페이지에 또 다른 페이지를 내부 페이지로서 불러오게 된다. -->
	<%-- 위의 <c:import> 태그로 인해 페이지가 네이버 페이지로 바뀌었지만, 페이지의 하단에 <c:include> 에서 불러온 페이지를 로드한다.--%>
	
	
	<%@ include file="ex03if.html"%>
	
</body>
</html>