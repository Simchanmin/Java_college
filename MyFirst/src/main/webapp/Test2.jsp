<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
	String sRsp = request.getParameter("nRsp");
	if(sRsp.equals("1")){
		out.println("가위 선택"+"<br>");
	}
	else if(sRsp.equals("2")){
		out.println("바위 선택"+"<br>");
	}
	else if(sRsp.equals("3")){
		out.println("보 선택"+"<br>");
	}
	
	int nUser = Integer.parseInt(sRsp);
	int nCom = (int)(Math.random()*3) + 1;
	out.println("사용자 = " + nUser);
	out.println("컴퓨터 = " + nCom + "<br>");
	if(nUser - nCom == 0){
		out.println("비김");
	}
	else if(nUser - nCom == -1){
		out.println("com 승");
	}
	else if(nUser - nCom == -2){
		out.println("user 승");
	}
	else if(nUser - nCom == 1){
		out.println("user 승");
	}
	else if(nUser - nCom == 2){
		out.println("com 승");
	}
	
%>
<br>
<br>
<br>
<form action="UserInfo.jsp" method="post" name="test">
	<input type ="text" name="nText"><br>
	<input type ="text" name="nBirY" maxlength="4" size="4"><br>
	남<input type ="radio" name="nSex" value="남">
	여<input type ="radio" name="nSex" value="여"><br>
	<Select name="nCmu" size="1">
		<Option value="KT">KT
		<Option value="LG">LG
		<Option value="SKT">SKT
	</Select>
	
	<input type ="submit" value="전송">


</form>
</body>
</html>