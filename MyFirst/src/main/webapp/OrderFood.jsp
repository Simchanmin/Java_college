<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<script type="text/javascript">
		function checkForm(){
			if (document.OrderForm.nMa.value.length == 0 || isNaN(document.OrderForm.nMa.value)){
				alert("값이 없거나 잘못되었습니다");
				document.OrderForm.nMa.select();
				return false; //다시 빠꾸
			}
// 			if (isNaN(document.OrderForm.nMa.value)){
// 				alert("숫자로만 입력 가능");
// 				document.OrderForm.nMa.select();
// 				return false; //다시 빠꾸
// 			}
			
			document.OrderForm.submit();
			
		}
	
	</script>
<body>
	<form action="ResultFood.jsp" name ="OrderForm" method="post">
	
	
	마라탕(9000원)<input type="text" name="nMa"><br>
	
	추가 메뉴<br><input type="checkbox" name = "nMu1" value="bAe">배추(1000원)<br>
	<input type="checkbox" name = "nMu2" value="cOw">소고기(3000원)<br>
	<input type="checkbox" name = "nMu3" value="mAj">마장소스(500원)<br>
	
	맵기 선택 <select name="nHot" size="1">
	<option value="1">안맵게
	<option value="2">보통맵기
	<option value="3">아주맵게
	</select><br>
	꿔바로우 (10,000원)<input type="text" size="1" name="nQu">개<br>
	<input type="radio" name="nRdo" value="1">합계 표시함 <input type="radio" name="nRdo" value="2">합계 표시안함<br>
	<input type="button" name="nBtn" value="선택" onclick="checkForm()">
	</form>
</body>
</html>