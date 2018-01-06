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
	<%	if (!name.equals("관리자")) {	%>

	<form>
	
		<fieldset>
			<legend> 고객님 환영합니다! </legend>
			
			<table>

				<tr>
					<td><input type=submit value=도서검색></td>
					<td><input type=submit value=나의책방></td>
					<td><input type=submit value=즐겨찾기></td>
					<td><input type=submit value=회원정보></td>
				</tr>

			</table>
		</fieldset>

	</form>
	
	<%	} else {	%>

	<form>

		<fieldset>

			<legend>
				<%=name%>님 환영합니다
			</legend>
			<table>

				<tr>
					<td><input type=submit value=회원관리></td>
					<td><input type=submit value=도서관리></td>
					<td><input type=submit value=대여현황></td>
					<td><input type=submit value=재고관리></td>
				</tr>

			</table>

		</fieldset>

	</form>

	<%	}	%>

</body>
</html>