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
<title>재고 신청 목록</title>

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
								<h3>신청 목록</h3>
							</div>
							<!-- /widget-header -->
							<div class="widget-content">

								<table class="table table-striped table-bordered" border="1"
									align="center" width="600px">
									<thead>
										<tr>
											<th>No</th>
											<th>재고 이름</th>
											<th>신청 수량</th>
											<th>구입비</th>
											<th>신청 날짜</th>											
										</tr>
									</thead>
									<tbody>
										<c:forEach var="stock" items="${ stocks }">

											<tr style="height: 30px; text-align: center">
												<td style="width: 50px">${ stock.stockNo }</td>											
												<td>${ stock.stockCode.stockName }</td>
												<td>${ stock.stockNumber }</td>
												<td>${ stock.stockPrice }</td>
												<td style="width: 170px">${ stock.stockRegDate }</td>
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
