<%@page import="com.dobbypos.model.dto.Balance"%>
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

	<div id="pageContainer">
		
		<c:import url="/WEB-INF/views/include/header.jsp" />
		
		<div id="inputcontent">
			<br /><br />
		    <div id="inputmain">
		        <div class="inputsubtitle">상세보기</div>

		        <table>
		            <tr>
		                <th>목차</th>
		                <td>${ balance.balanceNo }</td>
		            </tr>
		            <tr>
		                <th>날짜시간</th>
		                <td>${ balance.regDate }</td>
		            </tr>
		            <tr>
		                <th>구분</th>
		                <td>${ balance.itemCode }</td>
		            </tr>		            
		            <tr>
		                <th>금액</th>
		                <td>${ balance.plusMinus }</td>
		            </tr>
		            <tr>
		                <th>세부사항</th>
		                <td>${ balance.description }</td>
		            </tr>		            		            
		        </table>
		        <div class="buttons">
		        	
		        	
		        	<a href="salesedit.action?balanceno=${ balance.balanceNo }">수정</a>&nbsp;
		        	<a href="blahblah.action">삭제</a>&nbsp;
		        	<a href="checksales.action">돌아가기</a>
		        </div>
		    </div>
		</div>   		
		
	</div>

</body>
</html>