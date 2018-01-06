<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
fieldset{

width:500px;
margin:15%;

}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action=JoinCon>

		<fieldset>

			<legend> 회원가입</legend>
			<table>
				<tr>
					<td>ID</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="text" name="pw"></td>
				</tr>
				<tr>
					<td>NICKNAME</td>
					<td><input type="text" name="nickname"></td>
					<td><input type="submit" value="가입"></td>
				</tr>
				<tr>
					<td>EMAIL</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>TEL</td>
					<td><input type="text" name="tel"></td>
				</tr>

			</table>

		</fieldset>






	</form>




</body>
</html>