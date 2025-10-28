<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="10;url=https://www.daelim.ac.kr/">
<title>Answer1</title>
</head>
<body>
<%
    Calendar cal = Calendar.getInstance();
    String name = "여름";
    int studentID = 202312345;
    out.println("현재 시간 : " + cal.getTime() + "<br>");
    out.println("이름 : " + name + "<br>");
    out.println("학번 : " + studentID + "<br>");
    out.println("10초 뒤에 이동합니다.");
%>
</body>
</html>  