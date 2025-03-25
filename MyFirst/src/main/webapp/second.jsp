<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>second</title>
</head>
<body>
	
	<br>
	<%
/*for(int j=2; j<10; j++){	
	for(int i=2; i<10; i++){		
		out.println(j+ "*" +i+ "=" +j*i+ "<br>");	
	}
	out.println(j + "단 끝<br>");
}*/
	int nAllsum = 0;
	int nNosum = 0;
	int j = 1;
	while(j<10){
		for(int i=1; i<10; i++){
			if(j%2 == 0)
				break;
			out.println(j+ "*" +i+ "=" +j*i+ "<br>");	
			nNosum = nNosum + (j*i);
			nAllsum = nAllsum+nNosum;
			}
			if(j%2 == 1){
				out.println(j + "단 끝 합:"+nNosum+"<br>");
			};
				
			nNosum = 0;
		j = j+1;	
	};
	out.println("구구단 끝"+nAllsum);
	
%>




</body>
</html>