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

</head>

<body>
	<c:import url="/WEB-INF/views/include/posheader.jsp" />


	<div>
		<br /> <br />
		<div style='text-align: center'>
			<div class="widget widget-plain">
				<div class="widget-content">
					<a href="employeeregisterform.action"
						class="btn btn-large btn-success btn-support-ask">직원등록</a>
				</div>
				<br />
				<br />
				<div class="widget-content">
					<a href="tableregisterform.action"
						class="btn btn-large btn-success btn-support-ask">테이블등록</a>
				</div>
				<br />
				<br />
				
				<div class="widget-content">
					<a href="customeregisterform.action"
						class="btn btn-large btn-success btn-support-ask">고객등록</a>
				</div>
				<br />
				<br />
				
				<div class="widget-content">
					<a href="menuregisterform.action"
						class="btn btn-large btn-success btn-support-ask">메뉴등록</a>
				</div>
			</div>
			<!-- /widget -->




		</div>

		<br /> <br />
	</div>

</body>
</html>
