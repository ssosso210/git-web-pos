<%@page import="com.dobbypos.model.dto.Balance"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dobbypos.model.dao.CheckDao"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>판매 실적</title>
<meta name="viewport"	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<link href="/dobbywebpos/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="/dobbywebpos/resources/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
	<link href="/dobbywebpos/resources/css/font-awesome.css" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"	rel="stylesheet">
	<link href="/dobbywebpos/resources/css/style.css" rel="stylesheet" type="text/css">
	<link href="/dobbywebpos/resources/css/pages/signin.css" rel="stylesheet" type="text/css">
	<link href="/dobbywebpos/resources/css/pages/dashboard.css" rel="stylesheet">
	<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script> 
	
	<link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

</head>

<script type="text/javascript">
	$(function() {
	    $( "#startday" ).datepicker({
	 	   dateFormat:"yy-mm-dd"
	    });
	    $( "#endday" ).datepicker({
	 	   dateFormat:"yy-mm-dd"
	     });
	 });
	
	function viewsell(typeval) {
		$('#typeval').val(typeval);
		
		frm = document.getElementById("edit-profile");
		frm.submit(); 
		
	}
	
</script>

<body>
	<c:import url="/WEB-INF/views/include/posheader.jsp" />

	<br />
	<br />
	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span12">

						<form id="edit-profile" 
								action="/dobbywebpos/check/viewsellbymember.action" method="post">


							<input type="hidden" id="typeval" name="typeval" value="all" />
							<p>
								시작일: <input type="text" id="startday" name="startday" value="${startday}"> 
								종료일: <input type="text" id="endday" name="endday" value="${endday}"> 
								<input class="btn" style="margin-bottom: 9px;" type="submit"value="보기" />
								
								<span style="float: right;"> 
								<!-- <input class="btn btn-middle"type="button" value="[메뉴별]" />&nbsp;&nbsp;&nbsp; --> 
								<!-- <a href="viewsellbyperiod.action" class="btn btn-middle">메뉴별</a>&nbsp;&nbsp;&nbsp; --> 
								<a href="javascript:viewsell('menu');" class="btn btn-middle">메뉴별</a>&nbsp;&nbsp;&nbsp;
								<!-- <input class="btn btn-middle" type="button" value="[회원별]" />&nbsp;&nbsp;&nbsp; -->
								<a href="viewsellbymember.action" class="btn btn-middle">회원별</a> 
								<!-- <a href="javascript:viewsell('customer');" class="btn btn-middle">회원별</a>&nbsp;&nbsp;&nbsp; -->
							</span>
							</p>
							

						</form>
					</div>

					<div class="widget widget-table action-table">
						<div class="widget-header">
							<i class="icon-th-list"></i>
							<h3>회원별 판매 실적</h3>
							
						</div>
						<!-- /widget-header -->
						<div class="widget-content">

							<table class="table table-striped table-bordered" border="1"
								align="center" width="600px">
								<thead>
									<tr>
										<th>No</th>
										<th>이름</th>
										<th>휴대폰 번호</th>
										<th>나이</th>
										<th>성별</th>
										<th>포인트</th>
										<th>회원등급</th>
									</tr>
								</thead>


								<c:forEach var="customer" items="${ customers }">
								
									<tbody>
										<tr style="height: 30px; text-align: center">
											<td style="width: 50px"><%-- <c:url value="view.action"
													var="viewUrl">
													<c:param name="employeeNo" value="${ menu.employeeNo }" />
												</c:url>  --%>
												<%-- <a href="${ viewUrl }">${ employee.employeeNo }</a> --%>
												${ customer.customerNo}</td>
											<td style="width: 100px">
												<c:url value="/check/viewsellbycustomerdetail.action" var="viewUrl"> 
													<c:param name="customerNo" value="${customer.customerNo }" />
												</c:url>
		                    				<a href="${ viewUrl }">${ customer.c_name }</a></td>
											<td style="width: 100px">${ customer.c_phoneNo }</td>
											<td style="width: 100px">${ customer.c_gender }</td>
											<td style="width: 50px">${ customer.c_age }</td>
											<td style="width: 50px">${ customer.c_point }</td>
											<td style="width: 50px">${ customer.c_level }</td>
											<%--<td>${ employee.pay } </td>--%>
										</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /span -->
					</div>
					<!-- /widget -->
				</div>
				<!-- /container -->
			</div>
			<!-- /main-inner -->
		</div>
	</div>
</body>
</html>

