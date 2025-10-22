<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.io.*" %>
<%
    String savePath = application.getRealPath("/upload");
    int maxSize = 10*1024*1024; 
    MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8");
    String fileName = multi.getFilesystemName("uploadFile");
    File file = new File(savePath + "/" + fileName);
    long fileSize = file.length();
%>
파일명은 <%= fileName %> 이며,<br>
파일 크기는 <%= fileSize %> Bytes 입니다.