<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="UserInfo.jsp" method="post" name="UserForm">
	
	회원가입<br>
	
	이름<input type="text" name="nName"><br>
	
	생년월일<input type="text" size ="3" maxlength="4" name = "nBirY">
		<input type="text" size ="1" maxlength="2" name = "nBirM">
		<input type="text" size ="1" maxlength="2" name = "nBirD"><br>
	
	취미<input type="checkbox" name = "nHby1" value="운동">운동<br>
	<input type="checkbox" name = "nHby2" value="영화">영화<br>
	<input type="checkbox" name = "nHby3" value="기타">기타<br>
	
	남<input type="radio" name = "nSex" value="남">여<input type="radio" name = "nSex" value="여"><br>
	
	통신사(KT/LG/SKT)<select name="nCmu" size="1">
		<option value="KT">KT
		<option value="LG">LG
		<option value="SKT">SKT
	</select><br>
	
	핸드폰<input type="text" size="2" maxlength="3" name = "nTel1">-
		<input type="text" size="3" maxlength="4" name = "nTel2">-
		<input type="text" size="3" maxlength="4" name = "nTel3"><br>
		
	하고싶은 말<br>
	<textarea name="nCmt" rows="5" cols="20"></textarea><br>
	<input type="submit" value="가입">
	</form>
	
</body>
</html>