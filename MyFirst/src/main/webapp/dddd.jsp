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

	
	        for (int i = 1; i <= 100; i++) { // 1부터 100까지 반복
	            if (containsThreeSixNine(i)) { // 숫자에 3, 6, 9가 포함되었는지 확인
	                System.out.print("짝 ");
	            } else {
	                System.out.print(i + " ");
	            }
	        }
	    }

	    private static boolean containsThreeSixNine(int number) {
	        String numberStr = String.valueOf(number);
	        return numberStr.contains("3") || numberStr.contains("6") || numberStr.contains("9");
	    
	
			



%>
</body>
</html>