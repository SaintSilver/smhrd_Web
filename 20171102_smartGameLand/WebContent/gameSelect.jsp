<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	h4 {
	display : inline;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% String id = request.getParameter("id"); %>
	<h3><%=id %>�� �ȳ��ϼ���!</h3>
	<h3>������ �����ϼ���.</h3>
	<br />

	<form action="cubeGame.jsp">
		<ul type="none">
			<li><input type="radio" name="game" value="1" required="required" /><h4>�ֻ�������</h4> </li>
		</ul>
		<input type="submit" value = "����" />
	</form>
</body>
</html>