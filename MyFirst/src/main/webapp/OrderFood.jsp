<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkForm() {
		let input = document.OrderForm.nMa.value;

		if (input.length <= 4 || input.length >= 10) {
			alert("입력값은 4자리보다 길고 10자리보다 짧아야 합니다.");
			document.OrderForm.nMa.select();
			return false;
		}

		for (let i = 0; i < input.length; i++) {
			let code = input.charCodeAt(i);

			if (!((code >= 48 && code <= 57) || (code >= 97 && code <= 122))) {
				alert("영문 소문자와 숫자만 입력 가능합니다.");
				document.OrderForm.nMa.select();
				return false;
			}

			if (code === 64 || code === 37 || code === 36) {
				alert("@, %, $ 특수문자는 사용할 수 없습니다.");
				document.OrderForm.nMa.select();
				return false;
			}
		}

		alert("주문 완료!");
		document.OrderForm.submit();
	}
</script>


<body>
	<form action="ResultFood.jsp" name="OrderForm" method="post">
		마라탕 갯수 : 4자리보다 크고 10자리보다 작아야함<br>
		영문 소문자, 숫자만 가능<br>
		기호는 @,%,$ 불가<br>
		마라탕(9000원)<input type="text" name="nMa"><br> 추가 메뉴<br>
		<input type="checkbox" name="nMu1" value="bAe">배추(1000원)<br>
		<input type="checkbox" name="nMu2" value="cOw">소고기(3000원)<br>
		<input type="checkbox" name="nMu3" value="mAj">마장소스(500원)<br>
		맵기 선택 <select name="nHot" size="1">
			<option value="1">안맵게
			<option value="2">보통맵기
			<option value="3">아주맵게
		</select><br> 꿔바로우 (10,000원)<input type="text" size="1" name="nQu">개<br>
		<input type="radio" name="nRdo" value="1">합계 표시함 <input
			type="radio" name="nRdo" value="2">합계 표시안함<br>
		<input type="button" name="nBtn" value="선택" onclick="checkForm()">
		<img src="./img/ok.png" onclick="checkForm()" width="30" height="30">
	</form>
</body>
</html>