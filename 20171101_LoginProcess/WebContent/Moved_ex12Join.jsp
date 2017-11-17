<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	/* 
	############################################################
	##                                                        ##
	## Below All Codes are moved into ex12Join.java(Servlet)  ##
	## (So you can delete this .jsp file)                     ##
	##                                                        ##
	############################################################
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String dbid  = "immanuel";
	String dbpw = "immanuel";
	
	//동적 로딩
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//DBMS에 id와 pw를 인증받고 DB를 핸들링 할 수 있는 Connection 객체를 생성
	Connection conn = DriverManager.getConnection(url,dbid,dbpw);
	
	PreparedStatement pst = conn.prepareStatement("insert into member values(?,?,?)");
	pst.setString(1, id);
	pst.setString(2, pw);
	pst.setString(3, nick);
	
	int result = pst.executeUpdate();
	if(result>0){
		System.out.println(result+ " 조인 발생 : "+id+"\t"+pw+"\t"+nick);
		response.sendRedirect("ex12Login.html");
	} else {
		System.out.println(result+ " 조인 실패");
		response.sendRedirect("ex12LoginFail.html");
	}
	 */
	%>
</body>
</html>