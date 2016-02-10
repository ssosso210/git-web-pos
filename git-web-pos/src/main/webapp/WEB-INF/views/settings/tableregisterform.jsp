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
<script src="//code.jquery.com/jquery-1.12.0.js"></script>
<script>
	//var rt=$("#recentableNo").val();	
	//var sc= $("#storecode1").val();	
	$(function() {
		$("#plusbutton").on("click", function(event) {
			var rt = $("#recentableNo").val();
			var sc = $("#storeCode1").val();

			$.ajax({
				url : "/dobbywebpos/settings/tableadd.action",
				type : "GET",
				async : true,
				data : {
					"sc" : sc,
					"rt" : rt
				},
				//dataType:"json",
				success : function(data, status, xhr) {
					$("#recentableNo").val(data);
				},
				error : function(xhr, status, error) {
					alert(error.toString());
				}
			});
		});
		$("#minusbutton").on("click", function(event) {
			var rt = $("#recentableNo").val();
			var sc = $("#storeCode1").val();
			;//이거 그대로 보내서 db에서 isDeleted=-1해야됨

			$.ajax({

				url : "/dobbywebpos/settings/tableminus.action",
				type : "GET",
				async : true,
				data : {
					"sc" : sc,
					"rt" : rt
				},
				//dataType:"json",
				success : function(data, status, xhr) {
					$("#recentableNo").val(data);
				},
				error : function(xhr, status, error) {
					alert(error.toString());
				}
			});
		});
	});
</script>
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
								<h3>테이블 등록</h3>
							</div>
							<!-- /widget-header -->

							<div class="widget-content">



								<div>

									<br>

									<div class="tab-content">
										<div>
											<form class="form-horizontal" action="tableregister.action" method="post">
												<fieldset>

													<div class="control-group">
														<label class="control-label" for="username">현재테이블개수</label>
														<div class="controls">
															<input type="text" id="recentableNo"
																value="${ recentableNo }" readonly="readonly" /> <input
																type="button" id="plusbutton" value="+" /> <input
																type="button" id="minusbutton" value="-" />

														</div>
														<!-- /controls -->
													</div>
													<div class="control-group">
														<label class="control-label" for="lastname">storeCode</label>
														<div class="controls">
															<input type="text" class="span6" name="regDate"
																id="storeCode1" value="${ storeCode1 }"
																readonly="readonly">
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
