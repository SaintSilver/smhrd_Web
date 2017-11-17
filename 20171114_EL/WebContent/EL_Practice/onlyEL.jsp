<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
tr{
	background-color: whitesmoke;
	height: 40px;
	text-align: center;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("euc-kr");%>
	
	<table width="400px" align="center">
	<tr>
	<td colspan="2" bgcolor="cornflowerBlue" align="center"><h3>EL실습</h3></td>
	</tr>
	<tr>
	<td>${cookie.cook.value}</td>
	<td> </td>
	</tr>
	<tr>
	<td>${sessionScope.what}</td>
	<td> </td>
	</tr>
	<tr>
	<td>${applicationScope.what}</td>
	<td> </td>
	</tr>
	<tr>
	<td>${param.name}</td>
	<td> </td>
	</tr>
	<tr>
	<td>${param.email}</td>
	<td> </td>
	</tr>
	<tr>
	<td>${param.gender}</td>
	<td> </td>
	</tr>		
	<tr>			
	<td>${param.phone}</td>
	<td> </td>
	</tr>		
	<tr>
	<td>${param.country}</td>
	<td> </td>
	</tr>		
	<tr>
	<td>${param.address}</td>
	<td> </td>
	</tr>		
	<tr>
	<td>${param.birth}</td>
	<td> </td>
	</tr>		
	<tr>
	<td>${paramValues.hobby[0]}</td>
	<td> </td>
	</tr>		
	<tr>		
	<td>${param.color}</td>
	<td> </td>
	</tr>		
	<tr>
	<td>${param.talk}</td>
	<td> </td>
	</tr>	
	</table>
</body>
</html>