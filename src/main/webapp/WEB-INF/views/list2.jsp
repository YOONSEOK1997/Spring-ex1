<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix= "fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
   body *{
      font-family: 'Jua';
      font-size: 23px;
      padding: 500px 480px;
      float : 50px;
   }
</style>
</head>
<body>
   <b>현재 시간 : <fmt:formatDate value="${today}" pattern="yyyy년-MM'월'-dd'일'-hh'시'-mm'분'-ss'초'"/></b>
 
 <h2>list 컬렉션의 TestDto 출력하기</h2>
 <table class="table table-bordered" style="width: 400px;">
 <tr>
 	<th>번호</th><th>이름</th><th>핸드폰</th><th>주소</th>
 </tr>
 <c:forEach var ="a" items= "${list}" varStatus="i">
 <tr>
 		<td>${i.count}</td> 
 		<td>${a.name}</td>
 		<td>${a.hp}</td>
 		<td>${a.addr}</td>
 </c:forEach>
 </table>
 <hr>
 <h2>forTokens 연습</h2>
 <c:set var="str" value="red,green,blue,orange,pink,magenta"/>
 ${str}<br>
 <c:forTokens var="s" items="${str}" delims="," varStatus="i">
 	<b style="color:${s}">${i.count} : $s }</b><br>
 	</c:forTokens>
</body>
</html>