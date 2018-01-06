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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="LoginCon">
		<div width="500px" margin="15%">
			<fieldset>

				<legend> 도서관리프로그램 </legend>
				<table>
					<tr>
						<td>ID</td>
						<td><input type="text" name="id"></td>
						<td rowspan="2"><input type="submit" value="로그인"></td>
					</tr>

					<tr>
						<td>PW</td>
						<td><input type="text" name="pw"></td>

					</tr>

					<tr>
						<td colspan="2">아이디가 없다면 <a href="Question6_Join.jsp">회원가입</a>클릭	</td>
					</tr>

				</table>
				
			</fieldset>
		</div>


	</form>



</body>
</html>