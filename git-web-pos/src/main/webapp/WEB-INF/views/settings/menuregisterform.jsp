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




</head>

<body>
<c:import url="/WEB-INF/views/include/posheader.jsp" />
	<div class="navbar navbar-fixed-top">

		<div class="navbar-inner">

			<div class="container"></div>
			<!-- /container -->

		</div>
		<!-- /navbar-inner -->

	</div>
	<!-- /navbar -->





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
								<h3>메뉴 등록</h3>
							</div>
							<!-- /widget-header -->

							<div class="widget-content">



								<div >
								
									<br>

									<div class="tab-content">
										<div  >
											<form class="form-horizontal"
											 action="menuregister.action" method="post">
												<fieldset>

													<div class="control-group">
														<label class="control-label" for="username">음식코드</label>
														<div class="controls">
															<input type="text" class="span6 disabled" name="foodCode">

														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													<div class="control-group">
														<label class="control-label" for="firstname">음식이름</label>
														<div class="controls">
															<input type="text" class="span6" name="foodName" >
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													<div class="control-group">
														<label class="control-label" for="lastname">음식가격</label>
														<div class="controls">
															<input type="number" class="span6" name="foodPrice">
														</div>
														<!-- /controls -->
													</div>
													<div class="control-group">
														<label class="control-label" for="lastname">등록일자</label>
														<div class="controls">
															<input type="text" class="span6" name="regDate">
														</div>
														<!-- /controls -->
													</div>
													
																							<!-- /control-group -->
													<div class="control-group">
														<label class="control-label" for="email">본사코드</label>
														<div class="controls">
															<input type="text" class="span4"  name="hqCode"  >
														</div>
														<!-- /controls -->
													</div>
													<br />


													<div class="form-actions">
														<input type="submit" class="btn btn-primary" value="등록"/>
													
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
					<!-- /span8 -->




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
