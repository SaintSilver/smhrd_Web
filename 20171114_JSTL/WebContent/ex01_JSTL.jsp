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
	<%-- set 태그 : 변수를 영역에 저장하도록 선언 --%>
	<c:set var = "request" value = "requestScope!" scope = "request"></c:set> <%-- scope 를 설정하지 않으면 기본적으로 page 영역에 저장이 된다. --%>
	
	<%-- remove 태그 : 변수를 영역에서 삭제되도록 명령--%>
	<c:remove var="request" />		
	
	<%-- if 태그 : 조건문--%>
	<c:set var="num1" value="100" scope="request"></c:set>
	<c:if test="${num==100}">
		num1은 100이다.
	</c:if>
	
	<%-- choose 태그 : 다중조건문(else if / else) --%>
	<c:choose>
		<c:when test = "${num1>90}">
			num1은 90보다 크다.
		</c:when>
		
		<c:when test = "${num1>60}">
			num1은 60보다 크다.
		</c:when>
		
		<c:otherwise>
			num1은 60 이하의 수이다.
		</c:otherwise>
	</c:choose>
	
	<!-- forEach 태그 : 반복문 -->
	<%-- <%for (int i = 0; i<10; i++) %> --%>
	
	<c:forEach begin = "1" end = "10">
		반복
	</c:forEach>
	
	<br /><br /><br />
	
	<c:forEach begin = "1" end = "10" var = "i">
		<font size="${i}">반복</font>
	</c:forEach>
	
	<br /><br /><br />
	
	<c:forEach begin = "1" end = "10" var = "i" step = "2">
		2 * ${i} = ${2*i}<br>
	</c:forEach>
	
	
	<!-- ArrayList 사용하기! -->
	<%
	
		ArrayList<String> arr = new ArrayList<String>();
		arr.add("준희");
		arr.add("희망");
		arr.add("명호");
		arr.add("태주");
		
		request.setAttribute("arr",arr);
		
	%>
	
	<c:forEach items ="${arr}" var = "i">
		${i}
	</c:forEach>
	<br /><br /><br />
	<!-- ArrayList와 VO 사용하기! -->
	<!-- 특히 이 부분을 실무에서 가장 많이 사용한다. -->
	
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
	
	
	
	<!-- forTokens 태그 : 반복문 -->
	<c:forTokens items="준희.희망.태주.명호" delims="." var="i">
		${i} <br />
	</c:forTokens>
	
	<br /><br /><br />
	<c:forTokens items="준희!@희망#태주$명호" delims="!@#$" var="i">
		${i} <br />
	</c:forTokens>
	
	
	<br /><br /><br />
	<!-- catch : 예외처리 -->
	<c:catch var = "errorMsg1">
		<%= 2/0 %> <!-- 왼쪽 코드는 0으로 나누었기 때문에 에러가 발생한다.  -->
	</c:catch>
	
	${errorMsg1}<br />
	
	<c:catch var = "errorMsg2">
		<%= 2/1 %> <!-- 왼쪽 코드는 정상적으로 동작할 것이다..  -->
	</c:catch><br />
	
	<c:out value = "${errorMsg1}" default = "에러가 없습니다."></c:out>
	<c:out value = "${errorMsg2}" default = "에러가 없습니다."></c:out>
	
	
</body>
</html>