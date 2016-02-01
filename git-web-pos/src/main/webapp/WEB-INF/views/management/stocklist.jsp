<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.dobbypos.model.dto.Stock"%>
<%@page import="com.dobbypos.model.dto.StockCode"%>
<%@page import="com.dobbypos.model.dao.EmployeeDao"%>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
	<title>Stock List(지점)</title>

</head>

<body>


<br /><br />        	
        	<table border="1" align="center" width="700px">
        		<tr style="height:30px;background-color:orange">
        			<td>No</td>
        			<td>재고번호</td>
        			<td>재고이름</td>
        			<td>원가</td>
        			<td>잔여량</td>
        			<td>확인날짜</td>        			  			
        		</tr>       	
        	<%-- <c:forEach var="stock" items="${ stocks }">
        		<tr style="height:30px">
        			<td>
        				<c:url value="view2.action" var="viewUrl">
        					<c:param name="employeeNo" value="${ employee.employeeNo }" />
        				</c:url>
        			<a href="${ viewUrl }">${ employee.employeeNo }</a>
        			${ stock.stockNo }
        			</td>
        			<td>${ stock.stockName }</td>
        			<td>${ stock.stockPrice }</td>
        			<td>${ stock.stockNumber }</td>
        			<td>${ stock.stockRegDate } </td>
        		</tr>
        	</c:forEach>  --%>
        	
        	<c:forEach var="stock" items="${ stocks }">
        		<tr style="height:30px">
        			<td>${ stock.stockNo }</td>
        			<td>${ stock.stockCodeNo }</td>
        			<td>${ stock.stockName }</td>
        			<td>${ stock.price }</td>
        			<td>${ stock.stockNumber }</td>
        			<td>${ stock.stockRegDate } </td>
        		</tr>
        	</c:forEach>
        	
        	
        	</table>       	


</body>
</html>
