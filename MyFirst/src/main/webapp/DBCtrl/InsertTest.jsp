<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String sName = "이승우"; 
	int nAge = 23;
	
	//DB연결 모듈
	Connection MyConn = null;
     String sUrl = "jdbc:mysql://localhost:3306/mydatabase";
     String sUser = "root";
     String sPwd = "cksking123!";
     Class.forName("com.mysql.jdbc.Driver");
     MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
	//판 준비
	Statement MyStmt = null;
	MyStmt = MyConn.createStatement();
	//SQL문 작성
	String sMySql = "insert into tb_temp"; 
	sMySql = sMySql + " (vName, nAge, dRegdate) ";
	sMySql = sMySql + " values ('"+sName+"',"+nAge+",now());";
	out.println(sMySql);
	//실행
	MyStmt.executeUpdate(sMySql);
	out.println("데이터 입력완료<br>");
	//DB연결 해제
	if (MyStmt != null) MyStmt.close();
	if (MyConn != null) MyConn.close();
	out.println("DB연결 해제<br>");
	%>
</body>
</html>