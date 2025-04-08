<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- get방식 : 주소에 데이터를 추가하여 서버로 전송, 실제 데이터가 보임  -->
	<a href="https://www.google.com/search?
			 q=%EB%8C%80%EB%A6%BC%EB%8C%80%ED%95%99%EA%B5%90&oq=%EB%8C%80%EB%A6%BC%EB%8C%80%ED%95%99%EA%B5%90+&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQRRhBMgYIAhBFGD0yBggDEEUYPdIBCDMwNTdqMGo3qAIIsAIB&sourceid=chrome&ie=UTF-8">주소</a>
	<br>

	<!-- post방식 : 입력된 값이 보이지 않음 -->
	<!-- 	1. form tag로 묶음, action = "받을 주소" -->
	<!-- 	2. form tag 안의 객체의 name 속성을 지정 -->
    <!-- 	3. submit을 이용하여 action 페이지로 보냄, 화면도 이동 -->

	<form action="Logincheck.jsp" method="post">
		ID<input type="text" name="mId" value=""><br> 
		PWD<input type="password" name="mPwd" value=""><br> 
		   <input type="submit" name="mBtn" value="OK"><br>
		  <input type="reset" name="mRst" value="RESET"><br>
	</form>

</body>
</html>