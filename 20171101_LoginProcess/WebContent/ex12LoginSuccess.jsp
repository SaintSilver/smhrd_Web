<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% //String id = request.getParameter("id"); %> 
<!-- Query String is not used more. Because We are going to use request object.-->
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
	
		/* 		
		String id_cookie = request.getParameter("id");
		Cookie[] cook = request.getCookies();
		
		for(int i = 0;i<cook.length;i++){
			
			out.print("Cookie NAME : " + cook[i].getName()+"<br>");
			out.print("Cookie VALUE : " + cook[i].getValue()+"<br>");
			
			
		} */ 
		//��Ű ���� �κ��̱� ������ �ּ�ó��(������ �����ϸ� ��Ű�� �����ϴ� ������ �ݺ��߱⶧���� ���� ��Ű�� ����.)
		String id = (String) session.getAttribute("id");
	%>
	
	<fieldset>
		<legend>
			<h1>�α��� ����</h1>
			<form action="ex12Login.jsp">
			<input type="submit" value = "�α��� �������� ���ư���"/>
			</form>
		</legend>
		<h3><%=id %>�� ȯ���մϴ�!</h3>
	</fieldset>


</body>
</html>