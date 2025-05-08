<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String y = request.getParameter("i");
	int i = Integer.parseInt(y);
	while(i<10){
		for(int j=1; j<10; j++){
			out.println(i + "x" + j + "=" + i*j + "<br>");
		}
		i++;
	}

%>
</body>
</html>