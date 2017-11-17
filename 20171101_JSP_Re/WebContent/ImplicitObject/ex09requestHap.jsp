<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	request.setCharacterEncoding("euc-kr");
	String name = request.getParameter("name");
	int scoreJava = Integer.parseInt(request.getParameter("java"));
	int scoreWeb = Integer.parseInt(request.getParameter("web"));
	int scoreIot = Integer.parseInt(request.getParameter("iot"));
	int scoreAndroid = Integer.parseInt(request.getParameter("android"));
	int scoreAvg = (scoreJava+scoreWeb+scoreIot+scoreAndroid)/4;
	String result = "";
	if(scoreAvg>=95){
		result = "A+";
	}else if(scoreAvg>=85){
		result = "A";
	}else if(scoreAvg>=80){
		result = "B+";
	}else if(scoreAvg>=70){
		result = "C";
	}else{
		result = "F ������ �����";
	}
	
%>

<html>
<head>
<style>
	tr{
		height: 40px;
		text-align: center;
	}
	table{
		margin: 0 auto;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
			<legend>����Ȯ�����α׷�</legend>
			<table width="500">	
				<tr>
					<td>�̸�</td>
					<td><%= name %></td>
				</tr>
				<tr>
					<td>JAVA����</td>
					<td><%= scoreJava %></td>
				</tr>
				<tr>
					<td>WEB����</td>
					<td><%= scoreWeb %></td>
				</tr>
				<tr>
					<td>IOT����</td>
					<td><%= scoreIot %></td>
				</tr>
				<tr>
					<td>Android����</td>
					<td><%= scoreAndroid %></td>
				</tr>		
				<tr>
					<td>���</td>
					<td><h2><%= scoreAvg %></h2></td>
				</tr>		
				<tr>
					<td>����</td>
					<td><h3><%= result %></h3></td>
				</tr>																																			
			</table>
		</fieldset>
</body>
</html>