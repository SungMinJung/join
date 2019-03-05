<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page  import="kpu.club.controller.*" %>
<%@ page  import="kpu.club.domain.*" %>
<%@ page  import="kpu.club.persistence.*" %>
<jsp:useBean id="dao" class="kpu.club.persistence.MemberDAO" scope="application"/>
<!-- application은 톰캣 실행시에만 작동됨 종료시 초기화 -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Directory List</title>
<link rel="stylesheet" href="resources/register.css" type="text/css"></link>

</head>
<body>
<div align=center>
<h2>주소록</h2>
<hr>
<!-- <form action="http://localhost:8888/sungmin_reg/MemberServlet?key=join" method="post"> -->
<img src="image/add.jpg" alt="adddirecotry" width="50" height="50"><a href="welcome.html">주소추가(처음으로)</a>
<p>
<table border="1" width="500">
	<tr>
		<td>이름</td>
		<td>전화번호</td>
		<td>성별</td>
		<td>키</td>
		<td>받고싶은 선물</td>
		<td>좋아하는 과일</td>
		<td>남기고 싶은 말</td>
	</tr>
	<%
 		for(MemberVO vo: dao.getAddlist()){
	
 	%>
	<tr>
	<td><%=vo.getUsername() %></td>
	<td><%=vo.getTel() %></td>
	<td><%=vo.getGender() %></td>
	<td><%=vo.getHeight() %></td>
	<td><%= vo.getGift() %></td>
	<td><%= vo.getFruit() %></td>
	<td><%= vo.getWant() %></td>
	</tr>
	<%
 	}
	%>
</table>
</div> 

</body> 
</html> 