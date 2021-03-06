<%@page import="com.dobbypos.model.dto.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dobbypos.model.dao.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<title>직원 리스트</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="/dobbywebpos/resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="/dobbywebpos/resources/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />
<link href="/dobbywebpos/resources/css/font-awesome.css"
	rel="stylesheet">
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	rel="stylesheet">
<link href="/dobbywebpos/resources/css/style.css" rel="stylesheet"
	type="text/css">
<link href="/dobbywebpos/resources/css/pages/signin.css"
	rel="stylesheet" type="text/css">
<link href="/dobbywebpos/resources/css/pages/dashboard.css"
	rel="stylesheet">
<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script>
</head>

<body>
	<c:import url="/WEB-INF/views/include/posheader.jsp" />

	<br />
	<br />
	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
					<div class="widget widget-plain">
				<div class="widget-content">
					<a href="salarylist"
						class="btn btn-large btn-success btn-support-ask">직원 관리</a>
					<a href="stocklist"
						class="btn btn-large btn-success btn-support-ask">재고 관리</a>
				</div> <!-- /widget-content -->
			</div> <!-- /widget -->
					
						<div class="widget widget-table action-table">
							<div class="widget-header">
								<i class="icon-th-list"></i>
								<h3>직원 목록</h3>
							</div>
							<!-- /widget-header -->
							<div class="widget-content">

								<table class="table table-striped table-bordered" border="1"
									align="center" width="600px">
									<thead>
										<tr>
											<th>직원번호</th>
											<th>직원이름</th>
											<th>시급</th>
											<th>직급</th>
											<!-- <th>축적시간</th>
        			<th>급여</th> -->
										</tr>
									</thead>
									<%-- <c:forEach var="member" items="${ member }">
        		<tr style="height:30px">
        			<th>
        				<c:url value="view.action" var="viewUrl">
        					<c:param name="memberid" value="${ member.memberId }" />
        				</c:url>
        				<a href="${ viewUrl }">${ member.memberId }</a>
        			</th>
        			<th>${ member.email }</th>
        			<th>${ member.userType }</th>
        			<th>${ member.active }</th>
        			<th>${ member.regDate }</th>
        		</tr>
 			</c:forEach> --%>

									<c:forEach var="employee" items="${ employees }">
										<tbody>
											<tr style="height: 30px; text-align: center">
												<td style="width: 50px"><c:url value="view.action"
														var="viewUrl">
														<c:param name="employeeNo"
															value="${ employee.employeeNo }" />
													</c:url> <a href="${ viewUrl }">${ employee.employeeNo }</a></td>
												<td style="width: 100px">${ employee.employeeName }</td>
												<td style="width: 50px">${ employee.wage }</td>
												<td style="width: 50px">${ employee.employeeType }</td>
												<%--<th>${ employee.pay } </th>--%>
											</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- /span -->
						</div>
						<!-- /row -->
					</div>
					<!-- /container -->
				</div>
				<!-- /main-inner -->
			</div>
</body>
</html>
