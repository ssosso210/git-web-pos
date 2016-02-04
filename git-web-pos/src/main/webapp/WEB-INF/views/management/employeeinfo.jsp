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

<body>
	<%-- <div id="wrap">
		<c:import url="/WEB-INF/views/include/posheader.jsp" />
		<div class="main">
			<div class="main-inner">
				<div class="container">
					<div class="row">
						<div class="span12">
							<div class="widget">
								<div class="widget-header">
									<i class="icon-bookmark"></i>
									<h3>직원 정보</h3>
								</div>
								<!-- /widget-header -->
								<div class="widget-content">
									<div class="shortcuts">
										<table style width="500px">
											<tr>
												<th>직원번호 : </th>
												<td>${ requestScope.employee.employeeNo }</td>
											</tr>
											<tr>
												<th>직원이름 : </th>
												<td>${ requestScope.employee.employeeName }</td>
											</tr>
											<tr>
												<th>아이디 : </th>
												<td>${ requestScope.employee.employeeId }</td>
											</tr>
											<tr>
												<th>비밀번호 : </th>
												<td>${ requestScope.employee.passwd }</td>
											</tr>
											<tr>
												<th>전화번호 : </th>
												<td>${ requestScope.employee.phoneNo }</td>
											</tr>

											<tr>
												<th>지점번호 : </th>
												<td>${ requestScope.employee.storeCode }</td>
											</tr>
											<tr>
												<th>시급 : </th>
												<td>${ requestScope.employee.wage }</td>
											</tr>
											<tr>
												<th>직원구분 : </th>
												<td>${ requestScope.employee.employeeType }</td>
											</tr>
										</table>
									</div>
									<!-- /shortcuts -->
								</div>
								<!-- /widget-content -->
							</div>
						</div>
						<!-- /span -->
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /main-inner -->
		</div>
		<!-- /main -->
	</div> --%>

	<c:import url="/WEB-INF/views/include/posheader.jsp" />

	<div class="main">

		<div class="main-inner">

			<div class="container">

				<div class="row">

					<div class="span12">

						<div class="widget ">

							<div class="widget-header">
								<i class="icon-user"></i>
								<h3>정보 보기</h3>
							</div>
							<!-- /widget-header -->

							<div class="widget-content">



								<div class="tabbable">
									<ul class="nav nav-tabs">
										<li class="active"><a href="#employee" data-toggle="tab">직원
												정보</a></li>
										<li><a href="#salary" data-toggle="tab">급여 정보</a></li>
									</ul>

									<br>

									<div class="tab-content">
										<div class="tab-pane active" id="employee">
											<form id="edit-profile" class="form-horizontal">
												<fieldset>

													<div class="control-group">
														<label class="control-label" for="employeeNo">직원
															코드번호</label>
														<div class="controls">
															<input type="text" class="span6 disabled" id="employeeNo"
																value=${ requestScope.employee.employeeNo } disabled>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->

													<div class="control-group">
														<label class="control-label" for="employeeName">직원
															이름</label>
														<div class="controls">
															<input type="text" class="span6 disabled"
																id="employeeName"
																value=${ requestScope.employee.employeeName } disabled>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													<div class="control-group">
														<label class="control-label" for="employeeId">직원
															아이디</label>
														<div class="controls">
															<input type="text" class="span6 disabled" id="employeeId"
																value=${ requestScope.employee.employeeId } disabled>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													<%-- <div class="control-group">
														<label class="control-label" for="passwd">직원 비밀번호</label>
														<div class="controls">
															<input type="text" class="span6 disabled" id="passwd"
																value=${ requestScope.employee.passwd } disabled>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group --> --%>


													<div class="control-group">
														<label class="control-label" for="phoneNo">직원 전화번호</label>
														<div class="controls">
															<input type="text" class="span6 disabled" id="phoneNo"
																value=${ requestScope.employee.phoneNo } disabled>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													<div class="control-group">
														<label class="control-label" for="wage">직원 시급</label>
														<div class="controls">
															<input type="text" class="span6 disabled" id="wage"
																value=${ requestScope.employee.wage } disabled>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													<div class="control-group">
														<label class="control-label" for="storeCode">직원
															지점번호</label>
														<div class="controls">
															<input type="text" class="span6 disabled" id="storeCode"
																value=${ requestScope.employee.storeCode } disabled>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													<div class="control-group">
														<label class="control-label" for="employeeType">직원
															구분</label>
														<div class="controls">
															<input type="text" class="span6 disabled"
																id="employeeType"
																value=${ requestScope.employee.employeeType } disabled>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->

												</fieldset>
											</form>
										</div>

										<!-- ------------------------------------------------------------------------------------------------ -->

										<div class="tab-pane" id="salary">

											<form id="edit-profile" class="form-horizontal">
												<fieldset>

													<div class="control-group">
														<label class="control-label" for="employeeName">년도
															월</label>
														<div class="controls">
															<input type="text" class="span6 disabled"
																id="employeeName"
																value="은영짱~~~~~~구">
															<p class="help-block">ex) 2015년 3월 → 201503</p>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->

													<form id="edit-profile2" class="form-vertical">
														<fieldset>
															<div class="control-group">
																<label class="control-label" for="employeeType">총 
																	급여</label>
																<div class="controls">
																	<input type="text" class="span6 disabled"
																		id="employeeType"
																		value="급여보기 누르면 여기 급여가 뜰꺼여" disabled>
																		<p class="help-block">(만원)</p>
																</div>
																<!-- /controls -->
															</div>
															<!-- /control-group -->

														</fieldset>
													</form>


													<form id="edit-profile3" class="form-vertical">
														<fieldset>
															<div class="form-actions">
																<button type="submit" class="btn btn-success">급여보기</button>
															</div>
														</fieldset>
													</form>
										</div>


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
