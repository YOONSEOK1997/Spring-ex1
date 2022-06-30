<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- core 태그 -->
<%@ taglib prefix= "fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
</head>
<body>
<form action="form">
	<b> 이 름 : </b>
	<input type="text" name="name" class="form-control" style="width: 120px;">
	<br>
	<b> 나 이 :</b>
	<input type="text" name="age" class="form-control" style="width: 120px;">
	<br>
	<b>여행하고 싶은 나라 :</b>
	<select name="nara">
		<option value="하와이">하와이</option>
		<option value="독일">독일</option>
		<option value="프랑스">프랑스</option>
		<option value="스페인">스페인</option>
	</select>
	<br>
	<button type="submit">전송</button>
</form>
<c:if test="${!empty param.name}">
이 름  : ${param.name}<br> <!-- param=parameter 변수의 문자열 -->
나이   : ${param.age}<br>
</c:if>
<!-- 나이가 20세 이상이면 파랑색으로 xxx님은 성인입니다.
+20세 미만이면 빨강색으로 xxx님은 미성년자 입니다. -->
<!--  else 는 쓸 수 없다. -->
<c:if test="${param.age>=20}">
	<h2 style="color:blue">${param.name}님은 성인입니다</h2>
</c:if>
<c:if test="${param.age<20}">
	<h2 style="color:red">${param.name}님은 미성년자입니다.</h2>
</c:if>
<c:set var="nara" value="${param.nara}"/>
<h2> 선택한 나라는 ${nara}입니다</h2>
<c:if test="${nara=='하와이'}">
	<h3 style="background-color: orange">하와이는 아름다운 휴양지입니다</h3>
</c:if>
<c:if test="${nara=='독일'}">
	<h3 style="background-color: blue">독일의 기술력은 세계제일 입니다</h3>
</c:if>
<c:if test="${nara=='미국'}">
	<h3 style="background-color: yellow">미국은 강한 나라입니다</h3>
</c:if>
<c:if test="${nara=='스페인'}">
	<h3 style="background-color: green">스페인 축구 잘하는 나라입니다</h3>
</c:if>
<hr>
<c:choose>
	<c:when test="${nara=='미국'}">
	<h1>다음달에 미국 여행 갑니다</h1>
	</c:when>
	<c:when test="${nara=='하와이'}">
	<h1>울라울라 </h1>
	</c:when>
	<c:otherwise>
	<h1>${nara}에 가고싶어요 </h1>
	</c:otherwise>
	</c:choose>
	<hr>
	<c:if test="${nara=='미국' || name=='하와이'}">
		<h1> 선택한 나라는 ${nara}입니다</h1>
		</c:if>
<!--  나이가 20에서 50사이면 50만원 드립니다 -->
<c:if test="${param.age>=20 and param.age<=50 }">
</c:if>
</body>
</html>