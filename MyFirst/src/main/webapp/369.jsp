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
int No = 0;
for (int i = 1; i <= 100; i++) { 
	count = 0;
    String Num = String.valueOf(i);
    if("3".equals(Num.substring(0,1))||"6".equals(Num.substring(0,1))||"9".equals(Num.substring(0,1))){
    	count++;
    }
    if("3".equals(Num.substring(1))||"6".equals(Num.substring(1))||"9".equals(Num.substring(1))){
    	count++;
    }
    if(count==2){
    	out.println(Num+"짝짝<br>");
    }else if(count==1){
    	out.println(Num+"짝<br>");
    }else{
    	out.println(Num+"<br>");
    }
    
}


//substring valueof equals
			



%>
</body>
</html>