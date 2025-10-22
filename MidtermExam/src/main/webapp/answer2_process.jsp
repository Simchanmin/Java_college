<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Answer2 Process</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String studentID = request.getParameter("studentID");
    out.println("이름 : " + name + "<br>");
    out.println("학번 : " + studentID + "<br>");
%>
</body>
</html>