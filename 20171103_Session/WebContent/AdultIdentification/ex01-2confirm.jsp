<%@page import="com.vo.MemberVO"%>
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
	request.setCharacterEncoding("euc-kr");
		//1. 입력받은 name, age, addr, email의 값을 받아오시오.
	String name =request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String addr = request.getParameter("addr");
	String email = request.getParameter("email");
	
	System.out.println(name+" "+age+" "+addr+" "+email);
	
	if(age>19){
		
		//2. 회원정보를 memberVO로 정의하시오.(name, age, addr, email)
		MemberVO vo = new MemberVO(name, addr, age, email);
		// 하나 하나의 데이터를 전송하기에는 너무 비효율적이다. 따라서 VO 를 통해 데이터를 하나로 묶어줌과 동시에 새로운 데이터타입을 정의한다.
		
		//3. memberVO를 담아 ex01-3main.jsp로 이동하시오.
		request.setAttribute("vo",vo);
		//현재의 JSP/Servlet 페이지의 Request 영역에 데이터를 저장한다.
		
		RequestDispatcher dis = request.getRequestDispatcher("ex01-3main.jsp");
		dis.forward(request, response);
		//
		
	}else{
		//4. ex01-1input.html로 이동하시오.
		response.sendRedirect("ex01-1input.html");
	}
%>
</body>
</html>