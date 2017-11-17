<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- EL 식을 이용하게 되면 다음과 같은 코드가 간결해진다. 	
<%
		Cookie[] cook = request.getCookies();
		for(int i = 0; i<cook.length; i++){
			cook[i].getValue();
			cook[i].getName();
		}	
%> 
--%>

Cookie EL : ${cookie.Cookie.value}
	
</body>
</html>