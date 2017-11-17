<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body{
	background-color: #FFC8CD;
}
h1{
	color: #906D3B;
	font-size:100px;
	margin: 100px;
}
img {
	width: 200px;
	height: 200px;
	border: 2px solid gray;
}

table {
	margin: 0px auto;
	text-align: center;
	background-color: orange;
}
.buttonTd{
	height: 100px;
}

table th{
	width: 270px;
	height: 300px;
}
.topMenu{
	font-size: 50px;
	font-weight: bold;
	color: #8B4513;
}

.button {
	width: 500px;
	height: 80px;
	background-color: #E0EBFF;
}
.button:active {
	background-color: #47FF9C;
}
#myMenu{
	width: 250px;
	height: 500px;
	background-color: rgba(30,120,30,0.5);
	position: fixed;
	right: 0px;
	top: 200px;
	
	text-align: center;
	line-height: 40px;
}
a{	
	color:#28288C;
	text-decoration: none;
}
a:hover {
	color: #FAEB78;
}
</style>
</head>
<body>
	<div align="center">
	
		<h1>�ɼ� ���� ���θ�</h1>
		
		<form action="shoppingBasket.jsp">
		
			<table border="3px solid #9400D3" align="center">
				
				<tr>
					<td colspan="5" class ="topMenu">
						2017�� 11�� �α� Top 10 �޴�~!
					</td>
				</tr>
				
				<tr>
					<th>
						<img src="shoppingImg/chicken.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="���� �Ķ��̵� ��ȯ��">���� �Ķ��̵� ��ȯ��</label>
					</th>
					
					<th>
						<img src="shoppingImg/daram.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="�ʸ��ʸ� �ٶ��� ��������">�ʸ��ʸ� �ٶ��� ��������</label>
					</th>
					<th>
						<img src="shoppingImg/hanwoo.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="Ⱦ���ѿ� ƯA++ �� ��">Ⱦ���ѿ� ƯA++ �� ��</label>
					</th>
					
					<th>
						<img src="shoppingImg/javaBook.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="���ذ� ������~ Java�� ����">���ذ� ������~ Java�� ����</label>
					</th>
					
					<th>
						<img src="shoppingImg/hura.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="��׿��� �����ϴ� ���� �Ķ�����">��׿��� �����ϴ� ���� �Ķ�����</label>
					</th>
				</tr>
				
				<tr>
				
					<th><img src="shoppingImg/kia.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="2017�� �Ż� KIAŸ�̰��� ������">2017�� KIA ���Ÿ�̰��� ������</label>
					</th>
					
					<th>
						<img src="shoppingImg/over.JPG"><br><br>
						<label><input type="checkbox" name="goods" value="����޽ð� ������ ���� Set!">����޽ð�  ������ ���� Set!</label>
					</th>
					
					<th>
						<img src="shoppingImg/youkgogi.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="���ε��� ���� �����ϴ� �ҽ�!!">���ε��� ���� �����ϴ� �ҽ�!!</label>
					</th>
					
					<th>
						<img src="shoppingImg/chaoru.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="�����絵 ���� Ư�� ����ũ��~">�����絵 ���� Ư�� ����ũ��~</label>
					</th>
					
					<th>
						<img src="shoppingImg/costum.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="�̹� �ҷ��� ���ΰ��� ���� ��~">�̹� �ҷ��� ���ΰ��� ���� ��~</label>
					</th>
					
				</tr>
				
				<tr>
					<td colspan="5" class="buttonTd">
						<input class="button" type="submit" value="��ٱ��� ���">
					</td>
				</tr>
				
			</table>
			
		</form>
		
	</div>
	
	<div id="myMenu">
	
		<b><���� ���θ��></b>
		
		<br><br>
		
	<%
	
	 Cookie[] cook = request.getCookies();
	        
	 for(int i = 1;i<cook.length;i++){
	            out.print("<a href='#'>"+URLDecoder.decode(cook[i].getValue(),"euc-kr")+"</a>");
	            out.print("<br>");
	 }
	
	%>
	
	</div>
	
</body>