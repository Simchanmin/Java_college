<%-- 아래 소스코드 중 TODO 부분을 교재 내용과 동일하게 작성하여 제출하시오. --%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html >
<head>    
    <link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />
	<title>페이지 오류</title>
</head>
<body>
<div class="container py-4">
    <jsp.include file="menu.jsp"/>
	
    <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
      <h1 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h1>     
      </div>
    </div>

    <div class="row align-items-md-stretch ">
      <div class="col-md-12">
        <div class="h-100 p-5">
       		<p> <%= request.getRequestURL() %></p>
			<p><a href="books.jsp" class="btn btn-secondary"> 도서 목록 &raquo;</a>	
        </div>
      </div>   
 	</div> 
	
	<%@ include file="footer.jsp"%>
   
  </div>
</body>
</html>
  