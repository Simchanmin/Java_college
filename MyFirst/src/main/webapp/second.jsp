<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>second</title>
</head>
<body>
test<br>
<%
for(int j=2; j<10; j++){	
	for(int i=2; i<10; i++){		
		out.println(j+ "*" +i+ "=" +j*i+ "<br>");	
	}
	out.println(j + "단 끝<br>");
}
	
	
%> 




</body>
</html>