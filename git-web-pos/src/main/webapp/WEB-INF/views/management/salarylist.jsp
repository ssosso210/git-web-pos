<%@page import="com.dobbypos.model.dto.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dobbypos.model.dao.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
	<title>Salary List</title>
	
</head>

<body>

<br /><br />        	
        	<table border="1" align="center" width="700px">
        		<tr style="height:30px;background-color:orange">
        			<td>직원번호</td>
        			<td>직원이름</td>
        			<td>시급</td>
        			<!-- <td>축적시간</td>
        			<td>급여</td> -->       			
        		</tr>        	
<%-- <c:forEach var="member" items="${ member }">
        		<tr style="height:30px">
        			<td>
        				<c:url value="view.action" var="viewUrl">
        					<c:param name="memberid" value="${ member.memberId }" />
        				</c:url>
        				<a href="${ viewUrl }">${ member.memberId }</a>
        			</td>
        			<td>${ member.email }</td>
        			<td>${ member.userType }</td>
        			<td>${ member.active }</td>
        			<td>${ member.regDate }</td>
        		</tr>
 			</c:forEach> --%>
        	
        	<c:forEach var="employee" items="${ employees }">
        		<tr style="height:30px">
        			<td>
        				<c:url value="view.action" var="viewUrl">
        					<c:param name="employeeNo" value="${ employee.employeeNo }" />
        				</c:url>
        			<a href="${ viewUrl }">${ employee.employeeNo }</a>
        			</td>
        			<td>${ employee.employeeName }</td>
        			<td>${ employee.wage }</td>
        			<%--<td> ${ employee.workHours } </td>
        			<td>${ employee.pay } </td>--%>
        		</tr>
        	</c:forEach>
        	</table>       	

</body>
</html>
