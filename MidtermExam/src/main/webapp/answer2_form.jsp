<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Answer2 Form</title>
<script>
function validateForm() {
    var name = document.forms["myForm"]["name"].value;
    var studentID = document.forms["myForm"]["studentID"].value;
    var nameRegex = /^[가-힣]+$/;
    var idRegex = /^[0-9]+$/;
    if (!nameRegex.test(name)) {
        alert("이름은 한글만 입력해야 합니다!");
        return false;
    }
    if (!idRegex.test(studentID)) {
        alert("학번은 숫자만 입력해야 합니다!");
        return false;
    }
    return true;
} 
</script>
</head>
<body>
<form name="myForm" action="answer2_process.jsp" method="post" onsubmit="return validateForm()">
    이름: <input type="text" name="name"><br>
    학번: <input type="text" name="studentID"><br>
    <input type="submit" value="가입하기">
</form>
</body>
</html>