<%@page import="kr.co.jhta.web.vo.BoardVO"%>
<%@page import="kr.co.jhta.web.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String b = request.getParameter("bno");
	
	if (b != null) {
		int bno = Integer.parseInt(b);

		BoardDAO dao = new BoardDAO();
		dao.deleteOne(bno);
	}

	response.sendRedirect("list.jsp");
%>