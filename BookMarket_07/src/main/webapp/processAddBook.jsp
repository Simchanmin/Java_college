<%-- 소스코드 중 TODO 부분을 강의슬라이드의 내용으로 대체하여 구현할 것 --%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servelet.*"%>
<%@ page import="com.oreilly.servelt.multipart.*"%>
<%@ page import="java.util.*"%>
<%
request.setCharacterEncoding("UTF-8");

String filename = "";

// 이 부분의 경로는 실제 workspace의 경로를 찾아 직접 수정해야 함
String realFolder = "C:\\Users\\simcm\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\BookMarket\\resources\\images";
int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb
String encType = "utf-8"; //인코딩 타입

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

String bookId = multi.getParameter("bookId");
String name = multi.getParameter("name");
String unitPrice = multi.getParameter("unitPrice");
String author = multi.getParameter("author");
String publisher = multi.getParameter("publisher");
String releaseDate = multi.getParameter("releaseDate");
String description = multi.getParameter("description");
String category = multi.getParameter("category");
String unitsInStock = multi.getParameter("unitsInStock");
String condition = multi.getParameter("condition");

// 파일명 추출 (input type="file"의 name 속성에 맞게 수정)
filename = multi.getFilesystemName("BookImage");

Enumeration files = multi.getFileNames();
String fname = (String) files.nextElement();
String fileName = multi.getFilesystemName(fname);

int price;

if (unitPrice.isEmpty())
	price = 0;
else
	price = Integer.valueOf(unitPrice);

long stock;

if (unitsInStock.isEmpty())
	stock = 0;
else
	stock = Long.valueOf(unitsInStock);

BookRepository dao = BookRepository.getInstance();

Book newBook = new Book();
newBook.setBookId(bookId);
newBook.setName(name);
newBook.setUnitPrice(price);
newBook.setAuthor(author);
newBook.setPublisher(publisher);
newBook.setReleaseDate(releaseDate);
newBook.setDescription(description);
newBook.setCategory(category);
newBook.setUnitsInStock(stock);
newBook.setCondition(condition);
newBook.setFilename(filename);

dao.addBook(newBook);

response.sendRedirect("books.jsp");
%>