<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	받는 페이지<br>
<%
	String sId = request.getParameter("mId");
	String sPwd = request.getParameter("mPwd");
	out.println("id : " + sId + "<br>");
	out.println("pwd : " + sPwd + "<br>");
%>
<form action="369.jsp" method="post">
369 실행 <br>
369 실행 페이지 : 369.jsp <br>
<input type="text" name="nEnd" value="">까지<br> 
<input type="submit" name="mBtn" value="OK"><br>	
</form>
</body>
</html>