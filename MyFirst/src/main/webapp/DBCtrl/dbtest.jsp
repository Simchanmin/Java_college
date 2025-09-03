<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	DB 연결 테스트<br>
	<%
	Connection MyConn = null;
    try {
        String sUrl = "jdbc:mysql://localhost:3306/mydatabase";
        String sUser = "root";
        String sPwd = "cksking123!";

        Class.forName("com.mysql.jdbc.Driver");
        MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
        out.println("데이터베이스 연결 성공<br>");
    }
	catch (SQLException ex){
		out.println("데이터베이스 연결 실패<br>");
		out.println("SQLException: "+ex.getMessage());
	}
	finally{
		if (MyConn != null){
			out.println("데이터베이스 연결을 해제합니다<br>");
			MyConn.close();
		}
	}
	
	
	
	%>
</body>
</html>
