<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.dobbypos.model.dto.Stock"%>
<%@page import="com.dobbypos.model.dto.StockCode"%>
<%@page import="com.dobbypos.model.dao.StockDao"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<title>Stock List(지점)</title>

</head>

<body>


	<br />
	<br />
	<table border="1" align="center" width="700px">
		<tr style="height: 30px; background-color: orange">
			<td>No</td>
			<td>재고번호</td>
			<td>재고이름</td>
			<td>원가</td>
			<td>잔여량</td>
			<td>단위</td>
			<td>확인날짜</td>
		</tr>

		<c:forEach var="stock" items="${ stocks }">
			<tr style="height: 30px">
				<td>${ requestScope.stock.stockNo }</td>
				<td>${ requestScope.stockCode.stockCodeNo }</td>
				<td>${ requestScope.stockCode.stockName }</td>
				<td>${ requestScope.stockCode.price }</td>
				<td>${ requestScope.stock.stockNumber }</td>
				<td>${ requestScope.stockCode.standard }</td>
				<td>${ requestScope.stock.stockRegDate }</td>
			</tr>
		</c:forEach>

	</table>
	
</body>
</html>
