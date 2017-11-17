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
		//1. �Է¹��� name, age, addr, email�� ���� �޾ƿ��ÿ�.
	String name =request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String addr = request.getParameter("addr");
	String email = request.getParameter("email");
	
	System.out.println(name+" "+age+" "+addr+" "+email);
	
	if(age>19){
		
		//2. ȸ�������� memberVO�� �����Ͻÿ�.(name, age, addr, email)
		MemberVO vo = new MemberVO(name, addr, age, email);
		// �ϳ� �ϳ��� �����͸� �����ϱ⿡�� �ʹ� ��ȿ�����̴�. ���� VO �� ���� �����͸� �ϳ��� �����ܰ� ���ÿ� ���ο� ������Ÿ���� �����Ѵ�.
		
		//3. memberVO�� ��� ex01-3main.jsp�� �̵��Ͻÿ�.
		request.setAttribute("vo",vo);
		//������ JSP/Servlet �������� Request ������ �����͸� �����Ѵ�.
		
		RequestDispatcher dis = request.getRequestDispatcher("ex01-3main.jsp");
		dis.forward(request, response);
		//
		
	}else{
		//4. ex01-1input.html�� �̵��Ͻÿ�.
		response.sendRedirect("ex01-1input.html");
	}
%>
</body>
</html>