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
	request.setCharacterEncoding("UTF-8");


	String nText = request.getParameter("nText");
	int nSel = Integer.parseInt(request.getParameter("nSel"));
	String Num = String.valueOf(nSel);	
	
	
	out.println(nText+"<br>");
	out.println(nSel+"<br>");
	String sText = nText.substring(0);
	out.println(sText+"<br>");
	if(sText.equals("심찬민")){
		out.println("앞자리가 심찬민");
	}

%>
</body>
</html>