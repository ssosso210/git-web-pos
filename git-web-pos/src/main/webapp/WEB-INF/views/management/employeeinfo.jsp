<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.dobbypos.model.dto.Employee"%>
<%@page import="com.dobbypos.model.dao.EmployeeDao"%>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
	<meta name="apple-mobile-web-app-capable" content="yes">
	<link href="/dobbywebpos/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="/dobbywebpos/resources/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
	<link href="/dobbywebpos/resources/css/font-awesome.css" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
	<link href="/dobbywebpos/resources/css/style.css" rel="stylesheet" type="text/css">
	<link href="/dobbywebpos/resources/css/pages/signin.css" rel="stylesheet" type="text/css">
	<link href="/dobbywebpos/resources/css/pages/dashboard.css" rel="stylesheet">
	<title>직원정보</title>
</head>

<body>
<c:import url="/WEB-INF/views/include/posheader.jsp" />
 <table>
		            <tr>
		                <th>직원번호</th>
		                <td>${ requestScope.employee.employeeNo }</td>
		            </tr>
		            <tr>
		                <th>직원이름</th>
		                <td>${ requestScope.employee.employeeName }</td>
		            </tr>
		             <tr>
		                <th>아이디</th>
		                <td>${ requestScope.employee.employeeId }</td>
		            </tr>		            
		            <tr>
		                <th>비밀번호</th>
		                <td>${ requestScope.employee.passwd }</td>
		            </tr>
		            <tr>
		                <th>전화번호</th>
		                <td>${ requestScope.employee.phoneNo }</td>
		            </tr>
		           
		            <tr>
		                <th>지점번호</th>
		                <td>${ requestScope.employee.storeCode }</td>
		            </tr>
		            <tr>
		                <th>시급</th>
		                <td>${ requestScope.employee.wage }</td>
		            </tr>
		            <tr>
		                <th>직원구분</th>
		                <td>${ requestScope.employee.employeeType }</td>
		            </tr>				            		            
		        </table>
</body>
</html>
