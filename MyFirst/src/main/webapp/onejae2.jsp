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
	String sCmu = request.getParameter("nCmu");
	String sText = request.getParameter("nText");
	String sText2 = request.getParameter("nText2");
	int dText = Integer.parseInt(sText);
	int dText2 = Integer.parseInt(sText2);
	switch(sCmu){
	case "1":
		out.println(dText + dText2);
		break;
	case "2":
		out.println(dText - dText2);
		break;
	case "3":
		out.println(dText * dText2);
		break;
	case "4":
		out.println(dText / dText2);
		break;
	
	
	}
	
%>

</body>
</html>