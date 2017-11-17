<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 표현식 		<%= %> 	--%>
	<%-- 선언식 		<%! %> 	--%>
	<%-- Scriptlet 	<%  %>  --%>
	<%-- 지시자 		<%@ %> 	--%>


	<%	int num = 11;	%>
	<!-- num이 짝수이면 "짝수입니다." 출력, 홀수이면 "홀수입니다." 출력 -->

	<%	if (num % 2 == 0) { %>

	<h3>짝수입니다.</h3>

	<%	} else { %>

	<h3>홀수입니다.</h3>

	<%	}	%>

</body>
</html>