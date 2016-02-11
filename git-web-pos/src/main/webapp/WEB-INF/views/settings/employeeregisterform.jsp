<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.dobbypos.model.dto.Employee"%>
<%@page import="com.dobbypos.model.dao.EmployeeDao"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Account - Bootstrap Admin Template</title>
<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script>

<script src="/dobbywebpos/resources/jsui//bootstrap.js"></script>
<script src="/dobbywebpos/resources/jsui//base.js"></script>

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">

<link href="/dobbywebpos/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/dobbywebpos/resources/css/bootstrap-responsive.min.css"
	rel="stylesheet">

<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	rel="stylesheet">
<link href="/dobbywebpos/resources/css/font-awesome.css"
	rel="stylesheet">

<link href="/dobbywebpos/resources/css/style.css" rel="stylesheet">



<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<body>
<c:import url="/WEB-INF/views/include/posheader.jsp" />
	




	<div class="subnavbar">

		<div class="subnavbar-inner">

			<div class="container"></div>
			<!-- /container -->

		</div>
		<!-- /subnavbar-inner -->

	</div>
	<!-- /subnavbar -->



	<div class="main">

		<div class="main-inner">

			<div class="container">

				<div class="row">

					<div class="span12">

						<div class="widget ">

							<div class="widget-header">
								<i class="icon-user"></i>
								<h3>직원 등록</h3>
							</div>
							<!-- /widget-header -->

							<div class="widget-content">



								<div>

									<br>

									<div class="tab-content">
										<div>
											<form class="form-horizontal" action="employeeregister.action" method="post">
												<fieldset>

													<div class="control-group">
														<label class="control-label" for="username">이름</label>
														<div class="controls">
															<input type="text" class="span6 disabled"
																name="employeeName">

														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													<div class="control-group">
														<label class="control-label" for="firstname">전화번호</label>
														<div class="controls">
															<input type="text" class="span6" name="phoneNo">
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->
													<div class="control-group">
														<label class="control-label" for="lastname">직원 ID
														</label>
														<div class="controls">
															<input type="text" class="span6" name="employeeId">
														</div>
														<!-- /controls -->
													</div>

													<div class="control-group">
														<label class="control-label" for="lastname">비밀번호</label>
														<div class="controls">
															<input type="password" class="span6" name="passwd">
														</div>
														<!-- /controls -->
													</div>
													<div class="control-group">
														<label class="control-label" for="lastname">지점코드</label>
														<div class="controls">
															<input type="text" class="span6" name="storeCode">
														</div>
														<!-- /controls -->
													</div>
													<div class="control-group">
														<label class="control-label" for="lastname">임금</label>
														<div class="controls">
															<input type="number" class="span6" name="wage">
														</div>
														<!-- /controls -->
													</div>
													<div class="control-group">
														<label class="control-label" for="lastname">직원타입(admin/user)</label>
														<div class="controls">
															<input type="text" class="span6" name="employeeType">
														</div>
														<!-- /controls -->
													</div>

													<div class="form-actions">
														<input type="submit" class="btn btn-primary" value="등록" />

													</div>
													<!-- /form-actions -->
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
				</div>
				<!-- /row -->

			</div>
			<!-- /container -->

		</div>
		<!-- /main-inner -->

	</div>
	<!-- /main -->

</body>

</html>
