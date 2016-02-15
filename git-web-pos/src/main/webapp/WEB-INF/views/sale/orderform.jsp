<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<title>주문하기페이지</title>
</head>
<body>

	<h2>주문하기</h2>
	<br />
	<br />
	<br />
	<%-- <div>
			<img style="height: 30" src="/cmoa/resources/photo/${conMem.mPtnm }">
		</div> --%>
	<c:forEach var="menus" items="${ menus }">
		<td><input type="radio">${ menus.foodCode }</td>
		<td>${ menus.foodName }</td>
		<td>${ menus.foodPrice }</td>
		<td>${ menus.regDate }</td>
		<td>${ menus.hqCode }</td>
		<br />
	</c:forEach>

	<br />
	<br />


	<form action="/dobbywebpos/sale/select" method="post">
		<%-- <input type="hidden" class="sSeq" name="sSeq" value="${blogNews.sSeq }"> 
		<input type="hidden" name="memail" value="${blogPro.mEmail }"> --%>
		<a class="buttonDelete" type="submit"><p>주문등록</p></a>
		<input type="submit" value="주문등록" onclick="document.forms[0].submit();" />
	</form>




</body>
</html>