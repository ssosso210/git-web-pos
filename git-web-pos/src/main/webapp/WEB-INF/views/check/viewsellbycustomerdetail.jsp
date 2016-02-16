<%@page import="com.dobbypos.model.dto.Balance"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dobbypos.model.dao.CheckDao"%>
<%@page import="com.dobbypos.model.dto.Menu"%>
<%@page import="java.util.List"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>판매 실적</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
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

	<!-- chart  -->
<script src="/dobbywebpos/resources/jsui/amcharts/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/pie.js"></script>
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>



<style type="text/css">
#chartdiv {
	width		: 100%;
	height		: 500px;
	font-size	: 11px;
}					
</style>

<%
List<Menu> menus = (List<Menu>)request.getAttribute("menus");


%>



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
	
/*---------------------------------------- chart  */
	
	var chart = AmCharts.makeChart( "chartdiv", {
  "type": "pie",
  "theme": "light",
  
  "dataProvider": [
  <%
	  for (Menu menu : menus) { 
		  
	  %>
 {
    "country": "<%= menu.getFoodName()%>",
    "litres": <%= menu.getTotalcount()%>
  }, 
  <% 
	  }
  %>
  ],
  "valueField": "litres",
  "titleField": "country",
   "balloon":{
   "fixedPosition":true
  },
  "export": {
    "enabled": true
  }
} );
</script>
</head>
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
								action="/dobbywebpos/check/viewsellbycustomerdetailandperiod.action" method="post">

							<input type="hidden" id="customerNoVal" name="customerNoVal" value="${ customer.customerNo}" />
							<input type="hidden" id="typeval" name="typeval" value="all" />
							<p>
								시작일: <input type="text" id="startday" name="startday" value="${startday}"> 
								종료일: <input type="text" id="endday" name="endday" value="${endday}"> 
								
								<input class="btn" style="margin-bottom: 9px;" type="submit"value="보기" />
								
								<span style="float: right;"> 
								<!-- <input class="btn btn-middle"type="button" value="[메뉴별]" />&nbsp;&nbsp;&nbsp; --> 
								<!-- <a href="viewsellbyperiod.action" class="btn btn-middle">메뉴별</a> --> 
								<a href="checksell.action" class="btn btn-middle">메뉴별</a>&nbsp;&nbsp;&nbsp; 
								<!-- <input class="btn btn-middle" type="button" value="[회원별]" />&nbsp;&nbsp;&nbsp; -->
								<!-- <a href="viewsellbymember.action" class="btn btn-middle">회원별</a> --> 
								<a href="javascript:viewsell('customer');" class="btn btn-middle">회원별</a>&nbsp;&nbsp;&nbsp; 
							</span>
							</p>
							

						</form>
					</div>
					
					
					<div class="widget widget-table action-table">
						<div class="widget-header">
							<i class="icon-th-list"></i>
							<h3>회원 정보</h3>
							
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


								
									<tbody>
										<tr style="height: 30px; text-align: center">
											<td style="width: 50px"><%-- <c:url value="view.action"
													var="viewUrl">
													<c:param name="employeeNo" value="${ menu.employeeNo }" />
												</c:url>  --%>
												<%-- <a href="${ viewUrl }">${ employee.employeeNo }</a> --%>
												${ customer.customerNo}</td>
											<td style="width: 100px">
											${ customer.c_name }</td>
											<td style="width: 100px">${ customer.c_phoneNo }</td>
											<td style="width: 100px">${ customer.c_gender }</td>
											<td style="width: 50px">${ customer.c_age }</td>
											<td style="width: 50px">${ customer.c_point }</td>
											<td style="width: 50px">${ customer.c_level }</td>
											<%--<td>${ employee.pay } </td>--%>
										</tr>
								
								</tbody>
							</table>
						</div>
						<!-- /span -->
					</div>
					<!-- /widget -->
					
					
						<div class="widget widget-table action-table">
						<div class="widget-header">
							<i class="icon-th-list"></i>
							 <h3>${ customer.c_name}님 판매 내역</h3>
							<span style="float: right;">
									<i class="icon-money"></i>
									<h3> 합계매출 : ${sum}원</h3>
								</span>
						</div>
						<!-- /widget-header -->
						<div class="widget-content">

							<table class="table table-striped table-bordered" border="1"
								align="center" width="600px">
								<thead>
									<tr>
										<!-- <td>No</td> -->
										<th>메뉴</th>
										<th>누적판매량</th>
										<th>메뉴당 가격</th>
										<th>누적매출</th>
										
									</tr>
								</thead>


								<c:forEach var="menu" items="${ menus }">
									<tbody>
										<tr style="height: 30px; text-align: center">
											<%-- <td style="width: 50px"><c:url value="view.action"
													var="viewUrl">
													<c:param name="employeeNo" value="${ menu.employeeNo }" />
												</c:url> 
												<a href="${ viewUrl }">${ employee.employeeNo }</a>
												${ menu.foodCode}</td> --%>
											<td style="width: 100px">${ menu.foodName }</td>
											<td style="width: 100px">${ menu.totalcount }</td>
											<td style="width: 50px">${ menu.orderDetailPrice }원</td>
											<td style="width: 50px">${ menu.totalprice }원</td>
											<%--<td>${ employee.pay } </td>--%>
										</tr>
								</c:forEach>
								</tbody>
							</table>
							
							
						</div>
						<!-- /span -->
						<div id="chartdiv"></div>	
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /main-inner -->
		</div>
	</div>
</body>
</html>
