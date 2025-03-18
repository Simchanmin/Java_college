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
	int nTemp1 = 2;
	int nTemp2 = 3;
	
	int nTemp3 = nTemp1 + nTemp2; 
	out.println("nTemp3 = " + nTemp3);

%>
<%="nTemp3" %>
</body>
</html>