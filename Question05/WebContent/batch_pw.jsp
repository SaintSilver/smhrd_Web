<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.GregorianCalendar"%>
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
<% String date1 = "2017-11-20"; %>

<% String date2 = "2017-12-20"; %>
<% Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","test","test");%>
<% PreparedStatement pst = conn.prepareStatement("select * from Join where id = ?");%>
<% pst.setString(1,"jason");%>
<% ResultSet rs = pst.executeQuery(); %>
<% rs.next();%>

<% SimpleDateFormat format = new SimpleDateFormat("yyyymmdd");%>
<% Date firstDate = format.parse(date1);%>
<% Date secondDate = format.parse(date2);%>
<%= firstDate %>

<% long calDate = firstDate.getTime() - secondDate.getTime(); %>

<%long calDateDays = calDate/(24*60*60*100);
calDateDays = Math.abs(calDateDays);%>

	<c:if test="${calDateDays>=7}">
		<% response.sendRedirect("Change_pw.jsp"); %>
	</c:if>

</body>
</html>