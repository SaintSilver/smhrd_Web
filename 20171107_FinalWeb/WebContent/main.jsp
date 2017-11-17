<%@page import="com.DAO.messageVO"%>
<%@page import="com.DAO.memberVO"%>
<%@page import="com.DAO.webDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>
<body>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt"> <a href="index.html"
			class="logo"><strong>Forty</strong> <span>by HTML5 UP</span></a> 
			<nav>
		
		<!-- �Ʒ� �ڵ带 JSTL �±׷� �ٲپ��� ���̴�.  -->
		<%-- <%
			if (session.getAttribute("email") == null) {
		%> <a href="#menu">�α���</a> <%
 		} else {
 		%>
		<a href="Logout.jsp">�α׾ƿ�</a> 
		<a href="Update.jsp">������������</a><%
 		}
 		%> --%> 
 		
 		<c:choose>
 			<c:when test = "${empty email}">
 				<a href="#menu">�α���</a>
 			</c:when>
 			<c:otherwise>
 				<a href="Logout.jsp">�α׾ƿ�</a> 
				<a href="Update.jsp">������������</a>
			</c:otherwise>
 		</c:choose>
 		
 		<!-- �α��� �� Logout.jsp�� �̵��� �� �ִ�'�α׾ƿ�'��ũ�� '������������'��ũ�� ����Ͻÿ�. -->
		</nav> 
		</header>

		<!-- Menu -->
		<nav id="menu">
		<ul class="links">
			<li><h5>�α���</h5></li>
			<form action="Login.do"> <%-- action key ��  value �� LoginCon �̾����� FrontController �۾��� �ϸ鼭 Login.do�� ���� --%>
				<li><input type="text" name="email" placeholder="Email�� �Է��ϼ���"></li>
				<li><input type="password" name="pw" placeholder="PW�� �Է��ϼ���"></li>
				<li><input type="submit" value="LogIn" class="button fit"></li>
			</form>
		</ul>
		<ul class="actions vertical">
			<li><h5>ȸ������</h5></li>
			<form action="Join.do">
				<li><input type="text" name="email" placeholder="Email�� �Է��ϼ���"></li>
				<li><input type="password" name="pw" placeholder="PW�� �Է��ϼ���"></li>
				<li><input type="text" name="tel" placeholder="��ȭ��ȣ�� �Է��ϼ���"></li>
				<li><input type="text" name="address" placeholder="���ּҸ� �Է��ϼ���"></li>
				<li><input type="submit" value="JoinUs" class="button fit"></li>
			</form>
		</ul>
		</nav>
		<!-- Banner -->
		<section id="banner" class="major">
		<div class="inner">
			<header class="major"> 
			
			<!-- ���� �ڵ带 JSTL �� �ٲ��ֱ� -->
			<%-- <%
	 		String email = (String) session.getAttribute("email");
 			if (email != null) {
 				out.print("<h1>" + email + "</h1>");
 			} else {
 				out.print("�α����� ���ּ���.");
 			}
 			%> --%> 
 			
 			<c:choose>
 			
	 			<c:when test = "${empty email}">
	 				<h1>"�α����� ���ּ���."</h1>
	 			</c:when>
 			
	 			<c:otherwise>
	 				<h1>${email}</h1>
	 			</c:otherwise>
 			
 			</c:choose>
 			
 			<!-- �α��� �� �α��� �� ������� ���Ǿ��̵�� �ٲٽÿ�.
									 ex)smart�� ȯ���մϴ� --> 
			
			</header>
			<div class="content">
				<p>
					�Ʒ��� ���ݱ��� ��� �� ������Դϴ�.<br>
				</p>
				<ul class="actions">
					<li><a href="#one" class="button next scrolly">Ȯ���ϱ�</a></li>
				</ul>
			</div>
		</div>
		</section>

		<!-- Main -->
		<div id="main">

			<!-- One -->
			<section id="one" class="tiles"> <article> <span
				class="image"> <img src="images/pic01.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">HTML</a>
			</h3>
			<p>Ȩ�������� ����� ���� ���</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic02.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">CSS</a>
			</h3>
			<p>HTML�� ���������ִ� ���</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic03.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">Servlet/JSP</a>
			</h3>
			<p>Java�� �⺻���� �� �� ���α׷��� ���/��ũ��Ʈ ���</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic04.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">JavaScript</a>
			</h3>
			<p>HTML�� �⺻���� ������ ������ �� �ִ� ���</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic05.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">MVC</a>
			</h3>
			<p>�� ������Ʈ �� ���� ���� ����ϴ� ����������</p>
			</header> </article> <article> <span class="image"> <img
				src="images/pic06.jpg" alt="" />
			</span> <header class="major">
			<h3>
				<a href="#" class="link">Web Project</a>
			</h3>
			<p>�������� ����������Ʈ�� �� ����� Ȱ���ϼ���!</p>
			</header> </article> </section>
			<!-- Two -->
			<section id="two">
			<div class="inner">
				<header class="major">
				<h2>������ �� �޼��� Ȯ���ϱ�</h2>
				</header>
				<p></p>
				<ul class="actions">
                           <%if(session.getAttribute("email")==null){ %>
                              <li>�α����� �ϼ���.</li>
                              <% }else{ %>
                              
                              <%
                              
                              String email3 = (String)session.getAttribute("email");
                              webDAO dao = new webDAO();
                              ArrayList<messageVO> arr = dao.messageSelect(email3);
                              
                              request.setAttribute("arr", arr);
                              
                              
                              /* for(int i = 0; i<arr.size();i++){
                            	  out.print("<li><b>"+
                              				arr.get(i).getNum()+"</b>&nbsp&nbsp"+
                              				arr.get(i).getSend_name()+"&nbsp-->&nbsp"+
                              				arr.get(i).getContent()+"("+
                              				arr.get(i).getDate()+")" + "<a href = 'deleteCon?num="+arr.get(i).getNum()+"'>����</a>"+"</li><br>");
                              } */
                              
                              %>
                              
                              <c:forEach items="${arr}" var="vo">
                              	<li>
	                              	${vo.num}&nbsp&nbsp
	                              	${vo.send_name}&nbsp-->&nbsp
	                              	${vo.send_name}(
	                              	${vo.date})
	                              	<a href = 'delete.do?num=${vo.num}'>����</a>
                              	</li>
                              	<br>
                              </c:forEach>
                              
                              <li><a href="#" class="button next scrolly">��ü�����ϱ�</a></li>
                              <%} %>
                           </ul>
			</div>
			</section>

		</div>

		<!-- Contact -->
		<section id="contact">
		<div class="inner">
			<section>
			<form action = "messageInsert.do">
				<div class="field half first">
					<label for="name">Name</label> <input type="text" name="name"
						id="name" placeholder="������ ��� �̸�" />
				</div>
				<div class="field half">
					<label for="email">Email</label> <input type="text" name="email"
						id="email" placeholder="���� ��� �̸���" />
				</div>

				<div class="field">
					<label for="message">Message</label>
					<textarea name="message" id="message" rows="6"></textarea>
				</div>
				<ul class="actions">
					<li><input type="submit" value="Send Message" class="special" /></li>
					<li><input type="reset" value="Clear" /></li>
				</ul>
			</form>
			</section>
			
		<!-- JSTL�� �ٲٱ� -->
		<%-- <%if(session.getAttribute("email")==null){ %>
			<section class="split"> <section>
			<div class="contact-method">
				<span class="icon alt fa-envelope"></span>
				<h3>Email</h3>
				<a href="#"><%=email %></a>
				<!-- �α��� �� ������� �̸����� ����Ͻÿ� -->
			</div>
			</section> <section>
			<div class="contact-method">
				<span class="icon alt fa-phone"></span>
				<h3>Phone</h3>
				<span>�α��� �� ����� ��ȭ��ȣ�� ���</span>
				<!-- �α��� �� ������� ��ȭ��ȣ�� ����Ͻÿ� -->
			</div>
			</section> <section>
			<div class="contact-method">
				<span class="icon alt fa-home"></span>
				<h3>Address</h3>
				<span>�α��� �� ����� ���ּҸ� ���</span>
				<!-- �α��� �� ������� ���ּҸ� ����Ͻÿ� -->
			</div>
			</section> </section>
		</div>
		</section>
		<%}else{ %>
		
		<%
		//�Է��� �� ���� ���� ���� �ö��� servlet���� ���� dao�� �����ؼ� ������ �� �ִ� 
		String email2 = (String)session.getAttribute("email");
		webDAO dao = new webDAO();
		memberVO vo = dao.emailSelect(email);
		%> 
			<section class="split"> <section>
		<div class="contact-method">
			<span class="icon alt fa-envelope"></span>
			<h3>Email</h3>
			<a href="#"><%= email2 %></a>
			<!-- �α��� �� ������� �̸����� ����Ͻÿ� -->
		</div>
		</section> <section>
		<div class="contact-method">
			<span class="icon alt fa-phone"></span>
			<h3>Phone</h3>
			<span><%= vo.getTel() %></span>
			<!-- �α��� �� ������� ��ȭ��ȣ�� ����Ͻÿ� -->
		</div>
		</section> <section>
		<div class="contact-method">
			<span class="icon alt fa-home"></span>
			<h3>Address</h3>
			<span><%= vo.getAddress() %></span>
			<!-- �α��� �� ������� ���ּҸ� ����Ͻÿ� -->
		</div>
		</section> </section>
	</div>
	</section>
	<%}%>
		
		--%>
		<%
		String email2 = (String)session.getAttribute("email");
		webDAO dao = new webDAO();
		memberVO vo = dao.emailSelect(email2);
		request.setAttribute("vo", vo);
		%>
		<c:choose>
			<c:when test = "${empty email}">
			
				<section class="split"> 
					<section>
						<div class="contact-method">
							<span class="icon alt fa-envelope"></span>
							<h3>Email</h3>
							<a href="#"></a>
				<!-- �α��� �� ������� �̸����� ����Ͻÿ� -->
						</div>
					</section> 
					<section>
						<div class="contact-method">
							<span class="icon alt fa-phone"></span>
							<h3>Phone</h3>
							<span>�α��� �� ����� ��ȭ��ȣ�� ���</span>
				<!-- �α��� �� ������� ��ȭ��ȣ�� ����Ͻÿ� -->
						</div>
					</section> 
					<section>
						<div class="contact-method">
							<span class="icon alt fa-home"></span>
							<h3>Address</h3>
							<span>�α��� �� ����� ���ּҸ� ���</span>
				<!-- �α��� �� ������� ���ּҸ� ����Ͻÿ� -->
						</div>
					</section> 
				</section>
	
			</c:when>
			<c:otherwise>
						

				<section class="split"> 
					<section>
						<div class="contact-method">
							<span class="icon alt fa-envelope"></span>
							<h3>Email</h3>
							<a href="#">${email}</a>
				<!-- �α��� �� ������� �̸����� ����Ͻÿ� -->
						</div>
					</section> 
					<section>
						<div class="contact-method">
							<span class="icon alt fa-phone"></span>
							<h3>Phone</h3>
							<span>${vo.tel}</span>
				<!-- �α��� �� ������� ��ȭ��ȣ�� ����Ͻÿ� -->
						</div>
					</section> 
					<section>
						<div class="contact-method">
							<span class="icon alt fa-home"></span>
							<h3>Address</h3>
							<span>${vo.address}</span>
				<!-- �α��� �� ������� ���ּҸ� ����Ͻÿ� -->
						</div>
					</section> 
				</section>
			
			</c:otherwise>
		
		</c:choose>
		</div>
		</section>

	
	<!-- Footer -->
	<footer id="footer">
	<div class="inner">
		<ul class="icons">
			<li><a href="#" class="icon alt fa-twitter"><span
					class="label">Twitter</span></a></li>
			<li><a href="#" class="icon alt fa-facebook"><span
					class="label">Facebook</span></a></li>
			<li><a href="#" class="icon alt fa-instagram"><span
					class="label">Instagram</span></a></li>
			<li><a href="#" class="icon alt fa-github"><span
					class="label">GitHub</span></a></li>
			<li><a href="#" class="icon alt fa-linkedin"><span
					class="label">LinkedIn</span></a></li>
		</ul>
		<ul class="copyright">
			<li>&copy; Untitled</li>
			<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
		</ul>
	</div>
	</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>

</body>
</html>

