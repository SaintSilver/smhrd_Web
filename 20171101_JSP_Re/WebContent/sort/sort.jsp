<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% String numList = request.getParameter("numList"); %>
	<% String sortType = request.getParameter("sortType"); %>
	<% String[] inputArray = numList.split(" "); %>
	<% int[] numArray = new int[inputArray.length]; %>
	<%
	
	for(int i =0; i<numArray.length;i++){
		numArray[i] = Integer.parseInt(inputArray[i]);
	}
	
	for(int i = 0;i<numArray.length;i++){
		for(int j = i; j<numArray.length;j++){
			if(numArray[j] > numArray[i]){
				int temp = numArray[i];
				numArray[i] = numArray[j];
				numArray[j] = temp;
			}
		}
	}
	String output = "";
	if(sortType.equals("dsc")){
		for(int i = 0; i < numArray.length;i++){
			output += numArray[i]+" ";  
		}
	} else {
		for(int i =numArray.length-1; i> -1;i--){
			output += numArray[i] +" ";
		}
	}
		
	%>
	
	<%= output %>
	
</body>
</html>