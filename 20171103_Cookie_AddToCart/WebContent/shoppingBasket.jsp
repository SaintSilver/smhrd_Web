<%@page import="java.net.URLEncoder"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String[] goods = request.getParameterValues("goods");
	
	if(goods!=null){
		for(int i = 0; i < goods.length ; i++){
			Cookie cookie = new Cookie("myShopping"+i,URLEncoder.encode(goods[i],"euc-kr"));
			cookie.setMaxAge(-1);
			response.addCookie(cookie);
		}
	}
	
	response.sendRedirect("optionShopping.jsp");	
	%>

</body>
</html>