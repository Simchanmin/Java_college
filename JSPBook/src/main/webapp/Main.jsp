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
    // 구구단 2단부터 9단까지 출력
    for(int dan=2; dan<=9; dan++) {
        out.println("<b>" + dan + "단</b><br>");
        for(int i=1; i<=9; i++) {
            out.println(dan + " x " + i + " = " + (dan*i) + "<br>");
        }
        out.println("<br>");
    }
    %>
</body>
</html>