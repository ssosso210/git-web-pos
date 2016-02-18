<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<title>관리</title>
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
<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
	    <div class="span12">
       		<div class="widget widget-plain">
				<div class="widget-content">
				<br/>
					<a href="employeeregisterform.action"
						class="btn btn-large btn-success btn-support-ask">직원등록</a>
					<a href="tableregisterform.action"
						class="btn btn-large btn-success btn-support-ask">테이블등록</a>
					<a href="customeregisterform.action"
						class="btn btn-large btn-success btn-support-ask">고객등록</a>
					<!-- <a href="menuregisterform.action"
						class="btn btn-large btn-success btn-support-ask">메뉴등록</a> -->
				</div> <!-- /widget-content -->
			</div> <!-- /widget -->
			
			<div class="widget-header">
								<i class="icon-user"></i>
								<h3>고객 등록</h3>
							</div>
							<!-- /widget-header -->

							<div class="widget-content">
			
			
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
	</div>
	</div>
</div>


</body>
</html>
