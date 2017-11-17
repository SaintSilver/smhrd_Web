<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.memberVO"%>
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
	<%
	
		//1. ex07foreach.html에서 입력한 member1과 member2에 대한 정보를 받으시오.
				
		
		//2. 입력받은  member1과 member2에 대한 정보를 각각 memberVO vo1 / memberVO vo2 타입으로 묶으시오.


		//3. arrayList 객체를 생성하시오.(<memberVO>)

		
		//4. vo1 / vo2 를 arrayList객체에 add하시오.

		
		//5. request영역에 arr값을 저장하시오.

	
		//6. RequestDispatcher를 이용해 현재페이지의 request/response(forward) 영역을 갖고 ex07foreach_2.jsp로 이동하시오.			
		
	%>
	<% String id1 = request.getParameter("id1"); %>
	<% String pw1 = request.getParameter("pw1"); %>
	<% String nick1 = request.getParameter("nick1"); %>
	<% String email1 = request.getParameter("email1"); %>
	
	<% String id2= request.getParameter("id2"); %>
	<% String pw2 = request.getParameter("pw2"); %>
	<% String nick2 = request.getParameter("nick2"); %>
	<% String email2 = request.getParameter("email2"); %>
	

	<% memberVO vo1 = new memberVO(id1, pw1, nick1, email1); %>
	<% memberVO vo2 = new memberVO(id2, pw2, nick2, email2); %>
	
	<% ArrayList<memberVO> arr = new ArrayList<memberVO>(); %>
	
	<%	
		arr.add(vo1);
		arr.add(vo2); 
	%>
	
	<% request.setAttribute("arr", arr);%>
	
	<% RequestDispatcher dis = request.getRequestDispatcher("ex07foreach_2.jsp"); 
	   dis.forward(request, response);
	%>
	
	
</body>
</html>