<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- ǥ���� 		<%= %> 	--%>
	<%-- ����� 		<%! %> 	--%>
	<%-- Scriptlet 	<%  %>  --%>
	<%-- ������ 		<%@ %> 	--%>


	<%	int num = 11;	%>
	<!-- num�� ¦���̸� "¦���Դϴ�." ���, Ȧ���̸� "Ȧ���Դϴ�." ��� -->

	<%	if (num % 2 == 0) { %>

	<h3>¦���Դϴ�.</h3>

	<%	} else { %>

	<h3>Ȧ���Դϴ�.</h3>

	<%	}	%>

</body>
</html>