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
	
		//1. ex07foreach.html���� �Է��� member1�� member2�� ���� ������ �����ÿ�.
				
		
		//2. �Է¹���  member1�� member2�� ���� ������ ���� memberVO vo1 / memberVO vo2 Ÿ������ �����ÿ�.


		//3. arrayList ��ü�� �����Ͻÿ�.(<memberVO>)

		
		//4. vo1 / vo2 �� arrayList��ü�� add�Ͻÿ�.

		
		//5. request������ arr���� �����Ͻÿ�.

	
		//6. RequestDispatcher�� �̿��� ������������ request/response(forward) ������ ���� ex07foreach_2.jsp�� �̵��Ͻÿ�.			
		
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