<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Test2.jsp" method="post" name="nTest">
	 	가위<input type="radio" name="nRsp" value="1">
	 	바위<input type="radio" name="nRsp" value="2">
	 	보<input type="radio" name="nRsp" value="3">
	 	<br>
		<input type="submit" name="nSub" value="확인">
	
	</form>
	<br><br>
	계산기<br>
	<form action="Myco.jsp">
	<input type="text" name="nFir" size="3">
	<select name="nSel" size="1">
		<Option value="1">+
		<Option value="2">-
		<Option value="3">*
		<Option value="4">/
	</select>
	<input type="text" name="nSen"  size="3">
	<input type="submit" name="nSub" value="확인">
	</form>
</body>
</html>