<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
fieldset {
	width: 500px;
	margin: 15%;
}

input {
	width: 100px;
	height: 100px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%	String name = (String) session.getAttribute("nickname");  %>
	<%	if (!name.equals("������")) {	%>

	<form>
	
		<fieldset>
			<legend> ���� ȯ���մϴ�! </legend>
			
			<table>

				<tr>
					<td><input type=submit value=�����˻�></td>
					<td><input type=submit value=����å��></td>
					<td><input type=submit value=���ã��></td>
					<td><input type=submit value=ȸ������></td>
				</tr>

			</table>
		</fieldset>

	</form>
	
	<%	} else {	%>

	<form>

		<fieldset>

			<legend>
				<%=name%>�� ȯ���մϴ�
			</legend>
			<table>

				<tr>
					<td><input type=submit value=ȸ������></td>
					<td><input type=submit value=��������></td>
					<td><input type=submit value=�뿩��Ȳ></td>
					<td><input type=submit value=������></td>
				</tr>

			</table>

		</fieldset>

	</form>

	<%	}	%>

</body>
</html>