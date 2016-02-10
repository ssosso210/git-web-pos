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

	<div class="navbar navbar-fixed-top">

		<div class="navbar-inner">

			<div class="container">

				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="index.html"> Bootstrap Admin Template </a>

				<div class="nav-collapse">
					<ul class="nav pull-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="icon-cog"></i> Account <b
								class="caret"></b>
						</a>

							<ul class="dropdown-menu">
								<li><a href="javascript:;">Settings</a></li>
								<li><a href="javascript:;">Help</a></li>
							</ul></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="icon-user"></i>
								EGrappler.com <b class="caret"></b>
						</a>

							<ul class="dropdown-menu">
								<li><a href="javascript:;">Profile</a></li>
								<li><a href="javascript:;">Logout</a></li>
							</ul></li>
					</ul>

					<form class="navbar-search pull-right">
						<input type="text" class="search-query" placeholder="Search">
					</form>

				</div>
				<!--/.nav-collapse -->

			</div>
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
								<h3>고객 등록</h3>
							</div>
							<!-- /widget-header -->

							<div class="widget-content">



								<div >
								
									<br>

									<div class="tab-content">
										<div >
											<form  class="form-horizontal" action="customeregister.action" method="post">
												<fieldset>

													<div class="control-group">
														<label class="control-label" for="username">고객이름</label>
														<div class="controls">
															<input type="text" class="span6 disabled" name="c_name" >

														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													<div class="control-group">
														<label class="control-label" for="firstname">전화번호</label>
														<div class="controls">
															<input type="text" class="span6" name="c_phoneNo">
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													<div class="control-group">
														<label class="control-label" for="lastname">나이</label>
														<div class="controls">
															<input type="number" class="span6" name="c_age">
														</div>
														<!-- /controls -->
													</div>
													
													<div class="control-group">
														<label class="control-label">성별</label>


														<div class="controls">
															<label class="radio inline"> <input type="radio"
																name="c_gender" value="male"> 남
															</label> <label class="radio inline"> <input type="radio"
																name="c_gender" value="female"> 여
															</label>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->
													<div class="control-group">
														<label class="control-label" for="email">가게코드</label>
														<div class="controls">
															<input type="text" class="span4"  name="storeCode"value="${storeCode}" >
														</div>
														<!-- /controls -->
													</div>
													<br />


													<div class="form-actions">
														<button type="submit" class="btn btn-primary">등록</button>
														
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








	<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script>

	<script src="/dobbywebpos/resources/jsui//bootstrap.js"></script>
	<script src="/dobbywebpos/resources/jsui//base.js"></script>


</body>

</html>
