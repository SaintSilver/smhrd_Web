<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
	
	public int sum(int num1, int num2){
		return num1+num2;
	}

	%>
	
	<%= sum(4,5) %> <br />
	
	<!-- 사칙연산 메소드 설계 -->
	
	<%! 
	
		public String plus(int num1, int num2){
		int result =  num1+num2;
		return num1+"+"+num2+"="+result; 	
		}
	
		public String minus(int num1, int num2){
		int result =  num1-num2;
		return num1+"-"+num2+"="+result; 	
		}
		
		public String multiplex(int num1, int num2){
		int result =  num1*num2;
		return num1+"×"+num2+"="+result; 	
		}
		
		public String divide(int num1, int num2){
		int result =  num1/num2;
		return num1+"/"+num2+"="+result; 	
		}
	
	%>
	
	<%= plus(1,2) %> <br />
	<%= minus(3,4) %> <br />
	<%= multiplex(5,6) %> <br />
	<%= divide(20,4) %> <br />
	
	
</body>
</html>