<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>369</title>
</head>
<body>
	<%
int count = 0; 
for (int i = 1; i <= 100; i++) { 
	count = 0;
	String Num = String.valueOf(i);	
    
    // 첫 번째 자리 검사
    if("3".equals(Num.substring(0,1))||"6".equals(Num.substring(0,1))||"9".equals(Num.substring(0,1))){
    	count++;
    }
    
    // 두 번째 자리 검사 (두 자리 수인 경우만)
    if(Num.length() >= 2){
        if("3".equals(Num.substring(1,2))||"6".equals(Num.substring(1,2))||"9".equals(Num.substring(1,2))){
        	count++;
        }
    }
    
    if(count==2){
    	out.println(Num+" 짝짝<br>");
    }else if(count==1){
    	out.println(Num+" 짝<br>");
    }else{
    	out.println(Num+"<br>");
    }
}
%>
</body>
</html>