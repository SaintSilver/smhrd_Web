<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		if (session.getAttribute("id") != null) {
	%>
	
			<h1><%=session.getAttribute("id") %></h1> <br>�α��� ���Դϴ�.<br> 
			<a href="ex12Logout.jsp"><input type="button" value = "�α׾ƿ�" /> </a>
	
	<%
		} else {
	%>
	
	<fieldset>
		<legend>
			<h1>�α���</h1>
		</legend>
		<form action="ex12Login">
			<input type="text" placeholder="ID�� �Է����ּ���" name="id"><br>
			<input type="text" placeholder="PW�� �Է����ּ���" name="pw"><br>
			<input type="submit" value="�α���"> <a href="ex12Join.html"><input
				type="button" value="ȸ������" /></a>
		</form>
	</fieldset>
	
	<%
		}
	%>
</body>
</html>