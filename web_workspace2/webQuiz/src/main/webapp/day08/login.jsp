<%@page import="kr.co.jhta.web.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
<script type="text/javascript">
	window.onload = function() {
		let btn = document.getElementById("btn1");
		btn.onclick = function() {
			
			let frm = document.frm;
			console.log("id : " + frm[0].value);
			console.log("pw : " + frm[1].value);

			if (frm[0].value == '') {
				alert("id를 입력하세요");
				frm[0].focus();
				return ;
			}
			if (frm[1].value == '') {
				alert("pw를 입력하세요");
				frm[1].focus();
				return ;
			}
			frm.action="loginOk.jsp";
			frm.method="get";
			frm.submit();
		}
	}
</script>

</head>
<body>
	<form action="loginOk.jsp" name="frm" >
	
		<%
			Object obj = session.getAttribute("vo");
				
				if (obj != null) {
					MemberDTO vo = (MemberDTO) obj;
					out.println("<h3><a href='logout.jsp'>" + vo.getName() + "</a>님 환영합니다. </h3>");
				} else {
			%>
	
	
		<!-- table>(tr>th+td)*2 -->
		<table>
			<tr>
				<th>ID</th>
				<td> <input type="text" name="id" id="id" /> </td>
			</tr>
			<tr>
				<th>PW</th>
				<td> <input type="password" name="pwd" id="pwd" /> </td>
			</tr>
			
			<tr>
				<td colspan="2">
					<input type="button" value="로그인"  id="btn1" />
					<a href="register.jsp"><input type="button" value="회원가입"  id="btn2" /></a>
				</td>
			</tr>
		</table>
	</form>
	
	<%
			}
	
	%>
</body>
</html>