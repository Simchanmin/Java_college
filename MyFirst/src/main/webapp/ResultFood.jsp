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
String sMa = request.getParameter("nMa");
String sMu1 = request.getParameter("nMu1");
String sMu2 = request.getParameter("nMu2");
String sMu3 = request.getParameter("nMu3");
String sHot = request.getParameter("nHot");
String sQu = request.getParameter("nQu");
String sRdo = request.getParameter("nRdo"); 

// 디버깅용 출력
%>
마라탕 :
<%
out.println(sMa);
%>개<br>

추가 메뉴:
<%
boolean hasMenu = false;
if (sMu1 != null && !sMu1.isEmpty()) {
    out.println(sMu1 + " ");
    hasMenu = true;
}
if (sMu2 != null && !sMu2.isEmpty()) {
    out.println(sMu2 + " ");
    hasMenu = true;
}
if (sMu3 != null && !sMu3.isEmpty()) {
    out.println(sMu3 + " ");
    hasMenu = true;
}
if (!hasMenu) {
    out.println("없음");
}
%><br>

맵기 선택:
<%
out.println(sHot+"<br>");
%>

꿔바로우:
<%
out.println(sQu);
%>개<br>

<%
int sum = 0;
if (sMu1 != null && sMu1.equals("bAe")) {
    sum += 1000;
}
if (sMu2 != null && sMu2.equals("cOw")) {
    sum += 3000;
}
if (sMu3 != null && sMu3.equals("mAj")) {
    sum += 500;
}

int dMa = Integer.parseInt(sMa);
int dQu = Integer.parseInt(sQu);

if (sRdo != null && sRdo.equals("1")) {
    out.println("마라탕: " + (9000 * dMa + sum) + "원<br>");
    out.println("꿔바로우: " + (10000 * dQu) + "원<br>");
    out.println("추가 메뉴 가격 합계: " + sum + "원<br>");
} else {
    out.println("맵기 선택이 '1'이 아니거나 선택되지 않았습니다.<br>");
}
%>
</body>
</html>
