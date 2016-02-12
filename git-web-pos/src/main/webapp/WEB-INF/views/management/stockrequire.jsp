<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.dobbypos.model.dto.Employee"%>
<%@page import="com.dobbypos.model.dao.EmployeeDao"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes">
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
<title>직원정보</title>
</head>

<script type="text/javascript">
	$(function() {
		$('.stockrequireinsert').on('change', function(event) {
			$('#selectFollowForm').submit();
		});
	});
</script>

<body>
	<c:import url="/WEB-INF/views/include/posheader.jsp" />
	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div class="widget ">
							<div class="widget-header">
								<i class="icon-user"></i>
								<h3>재고 신청</h3>
							</div>
							<!-- /widget-header -->
							<div class="widget-content">
								<div class="tabbable">
									<ul class="nav nav-tabs">
										<li class="active"><a href="#employee" data-toggle="tab">정보
												입력 </a></li>
									</ul>
									<br>
									<div class="tab-content">
										<div class="tab-pane active" id="stock">

											<fieldset>
												<form id="edit-profile" class="selectFollowForm"
													action="/dobbywebpos/management/stockrequireinsert"
													method="get">
													<div class="control-group">
														<label class="control-label" for="stockCodeNo">재고
															선택</label>
														<div class="controls">
															<select name="stockName" class="stockrequireinsert">
																<c:forEach var="stock" items="${ stocks }">
																	<option>${ stock.stockCode.stockName }</option>
																</c:forEach>
															</select>
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="stockCodeNo">수량</label>
														<div class="controls">
															<input type="text" class="span6 disabled" name="snumber" id="stockCodeNo" value="">
															<!-- <p class="help-block">ex) 2015년 3월 → 201503</p> -->
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													<div class="form-actions">
														<button type="submit" class="btn btn-success">신청</button>
													</div>
												</form>
											</fieldset>

										</div>

										<!-- ------------------------------------------------------------------------------------------------ -->
									</div>
								</div>
							</div>
							<!-- /widget-content -->
						</div>
						<!-- /widget -->
					</div>
					<!-- /span8 -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /main-inner -->
	</div>
	<!-- /main -->
	<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script>

	<script src="/dobbywebpos/resources/jsui//bootstrap.js"></script>
	<script src="/dobbywebpos/resources/jsui//base.js"></script>


</body>
</html>
