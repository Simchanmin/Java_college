<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UserInfo</title>
</head>
<body>
	
<%
	request.setCharacterEncoding("UTF-8");
	String sName = request.getParameter("nName");
	String sBirY = request.getParameter("nBirY");
	String sBirM = request.getParameter("nBirM");
	String sBirD = request.getParameter("nBirD");
	String sHby1 = request.getParameter("nHby1");
	String sHby2 = request.getParameter("nHby2");
	String sHby3 = request.getParameter("nHby3");
 	String sSex = request.getParameter("nSex");
	String sCmu = request.getParameter("nCmu");
	String sTel1 = request.getParameter("nTel1");
	String sTel2 = request.getParameter("nTel2");
	String sTel3 = request.getParameter("nTel3");
	String sCmt = request.getParameter("nCmt");
	out.println("이름: " + sName + "<br>");
	out.println("생년월일: " + sBirY + "-" + sBirM + "-" + sBirD + "<br>");
	out.println("성별: " + sSex + "<br>");
	out.println("취미1: " + sHby1 + "<br>");
	out.println("취미2: " + sHby2 + "<br>");
	out.println("취미3: " + sHby3 + "<br>");
	out.println("통신사: " + sCmu + "<br>");
	out.println("전화번호: " + sTel1 + "-" + sTel2 + "-" + sTel3 + "<br>");
	out.println("하고싶은 말: " + sCmt + "<br>");
	
%>
<%
	String nYYYY = sBirY.substring(0,3);
	int sYYYY = Integer.parseInt(nYYYY);
	int nAge = 2025 - sYYYY;
	out.println(sName + "의 나이는 " + nAge + "살입니다." + "<br>" );


%>
	
	
</body>
</html>