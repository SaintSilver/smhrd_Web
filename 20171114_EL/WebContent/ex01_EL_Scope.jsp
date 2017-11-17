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

	request.setAttribute("request", "requestScope's Value");
	session.setAttribute("session", "sessionScope's Value");
	application.setAttribute("application","applicationScope's Value");
	
	request.setAttribute("Same", "requestScope_Same's Value");
	session.setAttribute("Same", "sessionScope_Same's Value");
	application.setAttribute("Same","applicationScope_Same's Value");
	
	RequestDispatcher dis = request.getRequestDispatcher("ex01_EL_Scope_rec.jsp");
	// 왜 RequestDispatcher 를 사용할까? 
	// 저장한 requestScope 라는 값을 ex01_scope_rec 에서 사용할 수 있도록
	dis.forward(request, response);
	

%>
</body>
</html>