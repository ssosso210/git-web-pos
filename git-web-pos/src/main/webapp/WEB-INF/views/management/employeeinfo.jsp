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
										<li class="active"><a href="#employee"
											data-toggle="tab">직원 정보</a></li>
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


													<div class="control-group">
														<label class="control-label" for="passwd">직원 비밀번호</label>
														<div class="controls">
															<input type="text" class="span6 disabled" id="passwd"
																value=${ requestScope.employee.passwd } disabled>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


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
											<form id="edit-profile2" class="form-vertical">
												<fieldset>





													<div class="control-group">
														<label class="control-label">Alerts</label>
														<div class="controls">
															<div class="alert">
																<button type="button" class="close" data-dismiss="alert">&times;</button>
																<strong>Warning!</strong> Best check yo self, you're not
																looking too good.
															</div>


															<div class="alert alert-success">
																<button type="button" class="close" data-dismiss="alert">&times;</button>
																<strong>Warning!</strong> Best check yo self, you're not
																looking too good.
															</div>


															<div class="alert alert-info">
																<button type="button" class="close" data-dismiss="alert">&times;</button>
																<strong>Warning!</strong> Best check yo self, you're not
																looking too good.
															</div>







															<div class="alert alert-block">
																<button type="button" class="close" data-dismiss="alert">&times;</button>
																<h4>Warning!</h4>
																Best check yo self, you're not...
															</div>
														</div>
														<!-- /controls -->





													</div>
													<!-- /control-group -->




													<div class="control-group">
														<label class="control-label">Progress Bar</label>
														<div class="controls">
															<div class="progress">
																<div class="bar" style="width: 60%;"></div>
															</div>


															<div class="progress progress-striped">
																<div class="bar" style="width: 20%;"></div>
															</div>


															<div class="progress progress-striped active">
																<div class="bar" style="width: 40%;"></div>
															</div>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->







													<div class="control-group">
														<label class="control-label">Accordion</label>
														<div class="controls">

															<div class="accordion" id="accordion2">
																<div class="accordion-group">
																	<div class="accordion-heading">
																		<a class="accordion-toggle" data-toggle="collapse"
																			data-parent="#accordion2" href="#collapseOne">
																			Collapsible Group Item #1 </a>
																	</div>
																	<div id="collapseOne"
																		class="accordion-body collapse in">
																		<div class="accordion-inner">It is a long
																			established fact that a reader will be distracted by
																			the readable content of a page when looking at its
																			layout. The point of using Lorem Ipsum is that it has
																			a more-or-less normal distribution of letters, as
																			opposed to using 'Content here, content here', making
																			it look like readable English. Many desktop
																			publishing packages and web page editors now use
																			Lorem Ipsum as their default model text, and a search
																			for 'lorem ipsum' will uncover many web sites still
																			in their infancy. Various versions have evolved over
																			the years, sometimes by accident, sometimes on
																			purpose (injected humour and the like).</div>
																	</div>
																</div>
																<div class="accordion-group">
																	<div class="accordion-heading">
																		<a class="accordion-toggle" data-toggle="collapse"
																			data-parent="#accordion2" href="#collapseTwo">
																			Collapsible Group Item #2 </a>
																	</div>
																	<div id="collapseTwo" class="accordion-body collapse">
																		<div class="accordion-inner">Anim pariatur
																			cliche...</div>
																	</div>
																</div>
															</div>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->






													<div class="control-group">
														<label class="control-label">Progress Bar</label>
														<div class="controls">
															<!-- Button to trigger modal -->
															<a href="#myModal" role="button" class="btn"
																data-toggle="modal">Launch demo modal</a>

															<!-- Modal -->
															<div id="myModal" class="modal hide fade" tabindex="-1"
																role="dialog" aria-labelledby="myModalLabel"
																aria-hidden="true">
																<div class="modal-header">
																	<button type="button" class="close"
																		data-dismiss="modal" aria-hidden="true">×</button>
																	<h3 id="myModalLabel">Thank you for visiting
																		EGrappler.com</h3>
																</div>
																<div class="modal-body">
																	<p>One fine body…</p>
																</div>
																<div class="modal-footer">
																	<button class="btn" data-dismiss="modal"
																		aria-hidden="true">Close</button>
																	<button class="btn btn-primary">Save changes</button>
																</div>
															</div>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->

















													<div class="control-group">
														<label class="control-label">Social Buttons</label>
														<div class="controls">
															<button class="btn btn-facebook-alt">
																<i class="icon-facebook-sign"></i> Facebook
															</button>
															<button class="btn btn-twitter-alt">
																<i class="icon-twitter-sign"></i> Twitter
															</button>
															<button class="btn btn-google-alt">
																<i class="icon-google-plus-sign"></i> Google+
															</button>
															<button class="btn btn-linkedin-alt">
																<i class="icon-linkedin-sign"></i> Linked In
															</button>
															<button class="btn btn-pinterest-alt">
																<i class="icon-pinterest-sign"></i> Pinterest
															</button>
															<button class="btn btn-github-alt">
																<i class="icon-github-sign"></i> Github
															</button>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->

													<br />

													<div class="form-actions">
														<button type="submit" class="btn btn-primary">Save</button>
														<button class="btn">Cancel</button>
														<button class="btn btn-info">Info</button>
														<button class="btn btn-danger">Danger</button>
														<button class="btn btn-warning">Warning</button>
														<button class="btn btn-invert">Invert</button>
														<button class="btn btn-success">Success</button>
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
