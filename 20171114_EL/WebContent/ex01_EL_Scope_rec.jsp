<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%-- 아래 영역은 너무 많은 자바 코드가 들어간 것 같아 보인다. 주석 처리된 아래의 코드처럼 바꿀 수가 있다. 

 	<%
		String req = (String) request.getAttribute("request");
		String sess = (String) session.getAttribute("session");
		String app = (String) application.getAttribute("application");
	%>

	request 영역 값 :	<%=req%><br> 
	session 영역 값 :	<%=sess%><br> 
	application 영역 값 :   <%=app%><br> 

--%>

	request 영역 값 :	${request} <br> 
	session 영역 값 :	${session} <br> 
	application 영역 값 :   ${application}<br> <br>
	
	request 영역의 ID Same 의 값 : ${Same} <br>
	session 영역의 ID Same 의 값 : ${Same} <br>
	application 영역의 ID Same 의 값 : ${Same} <br>
	<h6>그러나 우리가 원하는 각 영역의 값을 가져올 수 없다. 모두 request 의 값만 가져왔다.
	<br>따라서 아래와 같이 특정 영역의 ID 를 지정할 수 있다. ex) application.Same</h6>
		request 영역의 ID Same 의 값 : ${requestScope.Same} <br>
		session 영역의 ID Same 의 값 : ${sessionScope.Same} <br>
		application 영역의 ID Same 의 값 : ${applicationScope.Same} <br>

	

</body>
</html>