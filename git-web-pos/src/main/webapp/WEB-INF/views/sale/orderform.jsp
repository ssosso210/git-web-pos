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

	<c:forEach var="menus" items="${ menus }">
	<td>${ menus.foodCode }</td>
	<td>${ menus.foodName }</td>
	<td>${ menus.foodPrice }</td>
	<td>${ menus.regDate }</td>
	<td>${ menus.hqCode }</td><br />
	</c:forEach>

</body>
</html>