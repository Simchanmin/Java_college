<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>checkbox만들기</title>
</head>
<body>
	
	이름<input type="text" name="mText" value="이름 입력"><br>
	나이<input type="text" name="mText" value=""><br>
	전화번호<input type="text" name="mText" value=""><br>
	주민등록번호<input type="password" name="mPwd" value=""><br>
	<br>
	<input type="checkbox" name="chk1" value="">체크1
	<input type="checkbox" name="chk2" value="">체크2
	<input type="checkbox" name="chk3" value=""checked>체크3
	<br>
	<input type="radio" name="mRodio1" value="">라디오1
	<input type="radio" name="mRodio1" value="">라디오2
	<input type="radio" name="mRodio1" value="">라디오3
	<br>
	<br>
		<Select name="mSelect" size="2">
		<Option value="">Combo1
		<Option value="" Delected>Combo2
		<Option value="">Combo3
		</Select>
		<br>
		<br>
		<textarea name="mArea" cols="20" rows="5">텍스트 Area</textarea>
		<br>
		<br>
		<input type="button" name="mButtom" value="OK"><br>
	<input type='submit'>
</body>
</html>