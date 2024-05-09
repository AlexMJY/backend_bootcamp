<%@page import="kr.co.jhta.web.vo.DeptVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dept.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<table class="table table-stripe">
			<tr>
				<th>부서번호</th>
				<th>부서명</th>
				<th>지역</th>
			</tr>
			
			<c:forEach var="vo" items="${list}" >
				<tr>
					<td>${ vo.deptno }</td>
					<td>${ vo.dname }</td>
					<td>${ vo.loc }</td>
				</tr>
			</c:forEach>
		</table>
		
		 
		
		<hr />
		
		<table class="table table-stripe">
			<tr>
				<th>부서번호</th>
				<th>부서명</th>
				<th>지역</th>
			</tr>
			
			<%
				Object obj =  request.getAttribute("list");
				ArrayList<DeptVO> list = (ArrayList<DeptVO>) obj;
				for (DeptVO v : list) {
			%>
				<tr>
					<td><%= v.getDeptno() %></td>
					<td><%= v.getDname() %></td>
					<td><%= v.getLoc() %></td>
				</tr>
			<%
				}
			%>
			
		</table>
		
			
	</div>
</body>
</html>