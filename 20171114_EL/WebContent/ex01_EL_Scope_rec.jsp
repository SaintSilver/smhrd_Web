<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%-- �Ʒ� ������ �ʹ� ���� �ڹ� �ڵ尡 �� �� ���� ���δ�. �ּ� ó���� �Ʒ��� �ڵ�ó�� �ٲ� ���� �ִ�. 

 	<%
		String req = (String) request.getAttribute("request");
		String sess = (String) session.getAttribute("session");
		String app = (String) application.getAttribute("application");
	%>

	request ���� �� :	<%=req%><br> 
	session ���� �� :	<%=sess%><br> 
	application ���� �� :   <%=app%><br> 

--%>

	request ���� �� :	${request} <br> 
	session ���� �� :	${session} <br> 
	application ���� �� :   ${application}<br> <br>
	
	request ������ ID Same �� �� : ${Same} <br>
	session ������ ID Same �� �� : ${Same} <br>
	application ������ ID Same �� �� : ${Same} <br>
	<h6>�׷��� �츮�� ���ϴ� �� ������ ���� ������ �� ����. ��� request �� ���� �����Դ�.
	<br>���� �Ʒ��� ���� Ư�� ������ ID �� ������ �� �ִ�. ex) application.Same</h6>
		request ������ ID Same �� �� : ${requestScope.Same} <br>
		session ������ ID Same �� �� : ${sessionScope.Same} <br>
		application ������ ID Same �� �� : ${applicationScope.Same} <br>

	

</body>
</html>