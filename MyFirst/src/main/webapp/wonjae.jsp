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

int count = 0;

for(int i = 1; i<100; i++) {
	String nNum = Integer.toString(i);
	String nNum1 = nNum.substring(0,1);
	String nNum2 = nNum.substring(1);
	count = 0;
	if(nNum1.equals("3") || nNum1.equals("6") || nNum1.equals("9")) {
		count++;	
	}
	if(nNum2.equals("3") || nNum2.equals("6") || nNum2.equals("9"))
		count++;
		out.print(i+"<br>");
	if (count == 1)
		out.println("짝"+"<br>");
		else if (count == 2)
			out.println("짝짝"+"<br>");
	
	
}





%>
</body>
</html>