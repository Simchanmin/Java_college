<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="foo.jsp">
	<input type = "text" name="nText" size="3" maxlength="6"><br>
	남<input type="radio" name="nRdo" value="남">
	여<input type="radio" name="nRdo" value="여"><br>
	<select name="nSel">
	<option value="1">1
	<option value="2">2
	<option value="3">3
	</select><br>
	<input type = "submit" value="확인">
	</form>
</body>
</html>