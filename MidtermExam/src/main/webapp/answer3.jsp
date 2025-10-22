<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="stu" class="myPkg.Student" scope="page"/>
<jsp:setProperty name="stu" property="name" value="김대림"/>
<jsp:setProperty name="stu" property="score" value="85"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Answer3</title>
</head>
<body>
이름 : <jsp:getProperty name="stu" property="name"/><br>
점수 : <jsp:getProperty name="stu" property="score"/>
</body>
</html>