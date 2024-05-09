<%@page import="kr.co.jhta.web.vo.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.jhta.web.dao.BoardMySQLDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>awsTest.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
	
	<table class="table table-stripe">
		<tr>
			<th>게시물번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
	
	<%
		BoardMySQLDAO dao = new BoardMySQLDAO();
	
		ArrayList<BoardVO> list =  dao.selectAll(0, 20);
		
		for (BoardVO vo : list) {
	%>
		<tr>
			<td><%= vo.getBno() %></td>
			<td><%= vo.getTitle() %></td>
			<td><%= vo.getWriter() %></td>
			<td><%= vo.getHits() %></td>
		</tr>			
	<%
		}
	%>
	</table>
	</div>
</body>
</html>