<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
body {
	text-align: center;
}

fieldset {
	padding-top: 50px;
	padding-bottom: 50px;
	width: 400px;
	border: 3px dotted black;
	margin: 0 auto;
}

input {
	width: 200px;
	height: 35px;
	margin-top: 10px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = (String) request.getAttribute("id");
		String nick = (String) request.getAttribute("nick");
	%>
	
	<fieldset>
		<legend>ȸ�����Լ���</legend>
		<%= id %>(<%=nick %>)ȯ���մϴ�! <br />
		<a href="ex12Login.jsp"><input type="button" value = "�α��� �������� �̵�"/></a>
	</fieldset>
	
</body>
</html>