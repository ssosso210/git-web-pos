<%@page import="com.dobbypos.model.dto.Balance"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dobbypos.model.dao.CheckDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div style="text-align:left;margin-top:1px;padding:5px">
        	[ 날짜 : ${ balance.regData } 일 ]
        	[ 지점코드 : ${ balance.storeCode }  ]
        </div>

	<div id="pageContainer">

		<!-- <c:import url="/WEB-INF/views/include/header.jsp" /> --> 
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
			<table border="1" align="center" width="700px">
        		<tr style="height:30px;background-color:orange">
        			<td>시간</td>
					<td>구분</td>
					<td>고객번호</td>
					<td>고객명</td>
					<td>금액</td>
					<td>내역</td>
        		</tr>        	
        	<c:forEach var="balance" items="${ balances }">
        		<tr style="height:30px">
        			<td>${ balance.regDate }</td>
        			<td>${ balance.regDate }</td>
        			<td>${ balance.regDate }</td>
        			<td>${ balance.regDate }</td>
        			<td>${ balance.regDate }</td>
        		</tr>
        	</c:forEach>
        	</table>

		</div>
	</div>

</body>
</html>