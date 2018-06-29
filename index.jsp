<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
<h2>*** 메인 화면 ***</h2><br>


<%if(session.getAttribute("memId") == null){%>

	<a href="../member/writeForm.jsp">회원가입</a><br>
	<a href="../member/loginForm.jsp">로그인</a><br />
	<!-- 시작은 pg = 1 부터  -->
	<a href="../board/boardList.jsp?pg=1">목록</a>

<%}else if(session.getAttribute("memId") != null){ %>
	<a href="../member/logout.jsp">로그아웃</a><br/>
	<a href="../board/boardWriteForm.jsp">글쓰기</a><br/>
	<a href="../member/modifyForm.jsp">회원정보수정</a><br/>
	
	<a href="../board/boardList.jsp?pg=1">목록</a>

<%} %>




</body>
</html>