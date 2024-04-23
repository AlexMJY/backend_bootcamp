<%@page import="vo.DeptVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DeptDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>searchDept.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


</head>
<body>
	<div class="container">
	<form action="">
		<input type="text" name="deptno" id="txt" />
		<input type="submit" value="검색"/>
	</form>
	
	<%
		String deptno = request.getParameter("deptno");
		DeptDAO dao = new DeptDAO();
		ArrayList<DeptVO> list = new ArrayList<DeptVO>();
		
		if (deptno == null) {
			return;
		}
		
		if (deptno == "" || deptno.length() == 0) {
			list = dao.selectAll();
		} else {
			list.add(dao.selectOne(Integer.parseInt(deptno)));
		}
			
		System.out.println(list);
		
		if (list == null) {
			out.println("부서번호가 존재하지 않습니다.");
		}
	%>
	
	<div id="result">
		<table class="table">
			<%
				if (list != null) {
					out.println("<tr>");
					out.println("<th> 부서번호 </th>");
					out.println("<th> 부서명 </th>");
					out.println("<th> 지역명 </th>");
					out.println("</tr>");
					
					for (DeptVO vo : list) {
						out.println("<tr>");
						out.println("<td>" + vo.getDeptno() +"</td>");
						out.println("<td>" + vo.getDname() +"</td>");
						out.println("<td>" + vo.getLoc() + "</td>");
						out.println("</tr>");
					}
				}
			%>		
		</table>
	</div>
</div>
</body>
</html>