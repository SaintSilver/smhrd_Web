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
	
		<h1>옵션 종합 쇼핑몰</h1>
		
		<form action="shoppingBasket.jsp">
		
			<table border="3px solid #9400D3" align="center">
				
				<tr>
					<td colspan="5" class ="topMenu">
						2017년 11월 인기 Top 10 메뉴~!
					</td>
				</tr>
				
				<tr>
					<th>
						<img src="shoppingImg/chicken.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="눼눼 후라이드 교환권">눼눼 후라이드 교환권</label>
					</th>
					
					<th>
						<img src="shoppingImg/daram.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="똘망똘망 다람이 봉제인형">똘망똘망 다람이 봉제인형</label>
					</th>
					<th>
						<img src="shoppingImg/hanwoo.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="횡성한우 특A++ 한 근">횡성한우 특A++ 한 근</label>
					</th>
					
					<th>
						<img src="shoppingImg/javaBook.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="이해가 쏘옥쏘옥~ Java의 정석">이해가 쏘옥쏘옥~ Java의 정석</label>
					</th>
					
					<th>
						<img src="shoppingImg/hura.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="배그에서 유행하는 네팔 후라이팬">배그에서 유행하는 네팔 후라이팬</label>
					</th>
				</tr>
				
				<tr>
				
					<th><img src="shoppingImg/kia.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="2017년 신상 KIA타이거즈 유니폼">2017년 KIA 기아타이거즈 유니폼</label>
					</th>
					
					<th>
						<img src="shoppingImg/over.JPG"><br><br>
						<label><input type="checkbox" name="goods" value="고오급시계 한정판 게임 Set!">고오급시계  한정판 게임 Set!</label>
					</th>
					
					<th>
						<img src="shoppingImg/youkgogi.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="군인들이 제일 좋아하는 소스!!">군인들이 제일 좋아하는 소스!!</label>
					</th>
					
					<th>
						<img src="shoppingImg/chaoru.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="차오루도 반한 특급 위장크림~">차오루도 반한 특급 위장크림~</label>
					</th>
					
					<th>
						<img src="shoppingImg/costum.jpg"><br><br>
						<label><input type="checkbox" name="goods" value="이번 할로윈 주인공은 나야 나~">이번 할로윈 주인공은 나야 나~</label>
					</th>
					
				</tr>
				
				<tr>
					<td colspan="5" class="buttonTd">
						<input class="button" type="submit" value="장바구니 담기">
					</td>
				</tr>
				
			</table>
			
		</form>
		
	</div>
	
	<div id="myMenu">
	
		<b><나의 쇼핑목록></b>
		
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