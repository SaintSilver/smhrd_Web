<%@page import="com.VO.memberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- set �±� : ������ ������ �����ϵ��� ���� --%>
	<c:set var = "request" value = "requestScope!" scope = "request"></c:set> <%-- scope �� �������� ������ �⺻������ page ������ ������ �ȴ�. --%>
	
	<%-- remove �±� : ������ �������� �����ǵ��� ���--%>
	<c:remove var="request" />		
	
	<%-- if �±� : ���ǹ�--%>
	<c:set var="num1" value="100" scope="request"></c:set>
	<c:if test="${num==100}">
		num1�� 100�̴�.
	</c:if>
	
	<%-- choose �±� : �������ǹ�(else if / else) --%>
	<c:choose>
		<c:when test = "${num1>90}">
			num1�� 90���� ũ��.
		</c:when>
		
		<c:when test = "${num1>60}">
			num1�� 60���� ũ��.
		</c:when>
		
		<c:otherwise>
			num1�� 60 ������ ���̴�.
		</c:otherwise>
	</c:choose>
	
	<!-- forEach �±� : �ݺ��� -->
	<%-- <%for (int i = 0; i<10; i++) %> --%>
	
	<c:forEach begin = "1" end = "10">
		�ݺ�
	</c:forEach>
	
	<br /><br /><br />
	
	<c:forEach begin = "1" end = "10" var = "i">
		<font size="${i}">�ݺ�</font>
	</c:forEach>
	
	<br /><br /><br />
	
	<c:forEach begin = "1" end = "10" var = "i" step = "2">
		2 * ${i} = ${2*i}<br>
	</c:forEach>
	
	
	<!-- ArrayList ����ϱ�! -->
	<%
	
		ArrayList<String> arr = new ArrayList<String>();
		arr.add("����");
		arr.add("���");
		arr.add("��ȣ");
		arr.add("����");
		
		request.setAttribute("arr",arr);
		
	%>
	
	<c:forEach items ="${arr}" var = "i">
		${i}
	</c:forEach>
	<br /><br /><br />
	<!-- ArrayList�� VO ����ϱ�! -->
	<!-- Ư�� �� �κ��� �ǹ����� ���� ���� ����Ѵ�. -->
	
	<%
	
		ArrayList<memberVO> arrVO = new ArrayList<memberVO>();
		memberVO vo = new memberVO("jason","123","jasonNo1","99");
		memberVO vo1 = new memberVO("NickCat","123","CatNeap","98");
		
		arrVO.add(vo);
		arrVO.add(vo1);
		
		request.setAttribute("arrVO",arrVO);
		
	%>
	
	<c:forEach items = "${arrVO}" var = "i">
		${i.id}${i.pw}${i.nick}${i.age} <br />
	</c:forEach>
	<br /><br /><br />
	
	
	
	<!-- forTokens �±� : �ݺ��� -->
	<c:forTokens items="����.���.����.��ȣ" delims="." var="i">
		${i} <br />
	</c:forTokens>
	
	<br /><br /><br />
	<c:forTokens items="����!@���#����$��ȣ" delims="!@#$" var="i">
		${i} <br />
	</c:forTokens>
	
	
	<br /><br /><br />
	<!-- catch : ����ó�� -->
	<c:catch var = "errorMsg1">
		<%= 2/0 %> <!-- ���� �ڵ�� 0���� �������� ������ ������ �߻��Ѵ�.  -->
	</c:catch>
	
	${errorMsg1}<br />
	
	<c:catch var = "errorMsg2">
		<%= 2/1 %> <!-- ���� �ڵ�� ���������� ������ ���̴�..  -->
	</c:catch><br />
	
	<c:out value = "${errorMsg1}" default = "������ �����ϴ�."></c:out>
	<c:out value = "${errorMsg2}" default = "������ �����ϴ�."></c:out>
	
	
</body>
</html>