<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="ex02_EL_Form_rec.jsp">
		<input type="text" name = "id"/>
		<input type="text" name = "pw"/><br />
		코딩<input type="checkbox" value = "코딩" name = "hobby"/>
		독서<input type="checkbox" value = "독서" name = "hobby"/>
		게임<input type="checkbox" value = "게임" name = "hobby"/>
		<input type="submit" value = "전송"/>
	</form>
</body>
</html>