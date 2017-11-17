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
		result = "F 웰컴투 재수강";
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
			<legend>성적확인프로그램</legend>
			<table width="500">	
				<tr>
					<td>이름</td>
					<td><%= name %></td>
				</tr>
				<tr>
					<td>JAVA점수</td>
					<td><%= scoreJava %></td>
				</tr>
				<tr>
					<td>WEB점수</td>
					<td><%= scoreWeb %></td>
				</tr>
				<tr>
					<td>IOT점수</td>
					<td><%= scoreIot %></td>
				</tr>
				<tr>
					<td>Android점수</td>
					<td><%= scoreAndroid %></td>
				</tr>		
				<tr>
					<td>평균</td>
					<td><h2><%= scoreAvg %></h2></td>
				</tr>		
				<tr>
					<td>학점</td>
					<td><h3><%= result %></h3></td>
				</tr>																																			
			</table>
		</fieldset>
</body>
</html>