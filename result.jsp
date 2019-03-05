<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <jsp:useBean id="vo" class="kpu.club.domain.MemberVO" scope="page"/>
 <jsp:setProperty name="vo" property="*"/>
 
 <jsp:useBean id="dao" class="kpu.club.persistence.MemberDAO" scope="application"/>
 
<%
dao.add(vo);
 %>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body{
background-image:url("image/cel.jpg");
background-size:auto;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>result page</title>
<link rel="stylesheet" href="resources/register.css" type="text/css"></link>
</head>
<body>
<header>2018 KPU Study Club</header>
<div align="center" class="container">
<p id="sect">
가입을 축하합니다.
</p>
<table>
	<tr>
		<td>이름</td>
		<td><%= vo.getUsername() %></td>
	</tr>
	
	<tr>
		<td>전화번호</td>
		<td><%= vo.getTel() %></td>
	</tr>
	
	<tr>
		<td>성별</td>
		<td><%= vo.getGender() %></td>
	</tr>
	
	<tr>
		<td>키</td>
		<td><%=vo.getHeight() %></td>
	</tr>
	
	<tr>
		<td>받고싶은 선물</td>
		<td><%=vo.getGift() %></td>
	</tr>
	
	<tr>
		<td>좋아하는 과일</td>
		<td><%=vo.getFruit() %></td>
	</tr>
	
	<tr>
		<td>남기고 싶은 말</td>
		<td><%= vo.getWant() %></td>
	</tr>
</table>
<br>
<hr>
 <a href="welcome.html"><img src="image/home.png" width="50" height="50"></a>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="list.jsp"><img src="image/direc.jpg" width="50 height="50"></a>
<br>홈으로&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주소록
</div>
</body>
</html>