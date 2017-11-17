<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Locale"%>
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
	
		GregorianCalendar cal = new GregorianCalendar(Locale.KOREA);
		int year = cal.get(cal.YEAR);
		int month = cal.get(cal.MONTH);
		int day = cal.get(cal.DATE);
		
		int hour = cal.get(cal.HOUR);
		int min = cal.get(cal.MINUTE);
		int sec = cal.get(cal.SECOND);
		
	%>
	
		<%= year %>년 <%= month+1 %> 월 <%= day %> 일 <br />
		<%=	hour %>시 <%= min %> 분 <%= sec %> 초

</body>
</html>