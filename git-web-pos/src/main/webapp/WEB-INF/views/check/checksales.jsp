<%@page import="com.dobbypos.model.dto.Balance"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dobbypos.model.dao.CheckDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<div style="text-align:left;margin-top:1px;padding:5px">
        	<c:forEach var="balance" begin="0" end="0" items="${ balances }">
        	[ 날짜 : ${ balance.regDate }  ]
        	[ 지점코드 : ${ balance.storeCode }  ]
        	</c:forEach>
        </div>

	<div id="pageContainer">

		<c:import url="/WEB-INF/views/include/header.jsp" /> 
		<div id="content">
			<br />
			<br />
			<div style='text-align: right'>
				<button>삽입</button>
				<button>수정</button>
				<button>삭제</button>
			</div>
			<br />
			<br />
			<div class="inputsubtitle">매출/지출 내역</div>
			<table border="1" align="center" width="700px">
        		<tr style="height:30px;background-color:orange">
        			<td>목차</td>
        			<td>시간</td>
					<td>구분</td>
					<td>금액</td>
					<td>세부사항</td>
        		</tr>        	
        	<c:forEach var="balance" items="${ balances }">
        		<tr style="height:30px">
        			
        			<td>
        				<c:url value="salesview.action" var="salesviewUrl">
        					<c:param name="balanceno" value="${ balance.balanceNo }" />
        				</c:url>
        				<a href="${ salesviewUrl }">${ balance.balanceNo }</a>
        			</td>
        			<%-- <td>${ balance.balanceNo }</td> --%>
        			<td>${ balance.regDate }</td>
        			<%-- <td>
        				<c:url value="salesview.action" var="salesviewUrl">
        					<c:param name="ragdate" value="${ balance.regDate }" />
        				</c:url>
        				<a href="${ salesviewUrl }">${ balance.regDate }</a>
        			</td> --%>
        			<td>${ balance.itemCode }</td>
        			<td>${ balance.plusMinus }</td>
        			<td>${ balance.description }</td>
        		</tr>
        	</c:forEach>
        	</table>

		</div>
	</div>

</body>
</html>