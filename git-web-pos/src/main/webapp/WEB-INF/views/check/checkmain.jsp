<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>조회</title>
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
	<script src="/dobbywebpos/resources/jsui/base.js"></script>

</head>

<body>
	<div id="wrap">
<c:import url="/WEB-INF/views/include/posheader.jsp" />
<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
	    <div class="span12">
       		<div class="widget widget-plain">
				<div class="widget-content">
					<a href="checksales.action" class="btn btn-large btn-success btn-support-ask">매출-지출 내역</a>	
					<a href="checksell.action" class="btn btn-large btn-success btn-support-ask">판매 실적</a>	
				</div> <!-- /widget-content -->
			</div> <!-- /widget -->
		</div><!-- /span -->	
			
		<div class="span6">
			<div class="widget widget-table action-table">
						<div class="widget-header">
							<i class="icon-th-list"></i>
							<h3>금일 매출 요약 정보 [ ${todayStr} ]</h3>
								<%-- <span style="float: right;">
									<i class="icon-money"></i>
									<h3> 합계매출 : ${total}원</h3>
								</span> --%>
						</div>
						
						<div class="widget-content">

							<table class="table table-striped table-bordered" border="1" align="center" width="600px">
								<thead>
									<tr>
										<th>내용</th>
										<th>금액</th>
									</tr>
								</thead>


								<%-- <c:forEach var="menu" items="${ menus }"> --%>
									<tbody>
										<tr style="height: 30px; text-align: center">
											<td style="width: 200px">총매출액</td>
											<td >  ${all} 원</td>
											<%-- <td style="width: 100px">${ menu.foodName }</td> --%>
										</tr>
										<tr>
											<td style="width: 200px">할인금액</td>
											<td> ${discountPrice} 원</td>
										</tr>
										<tr>
											<td style="width: 200px">실매출액</td>
											<td> ${total} 원</td>
										</tr>
							<%-- 	</c:forEach> --%>
								</tbody>
							</table>
						</div>
						
					</div>
			</div> <!-- /span -->
				
		<div class="span6">
				<div class="widget widget-table action-table">
						<div class="widget-header">
							<i class="icon-th-list"></i>
							<h3>금일 결제수단 정보 [ ${todayStr} ]</h3>
								<%-- <span style="float: right;">
									<i class="icon-money"></i>
									<h3> 합계매출 : ${total}원</h3>
								</span> --%>
						</div>
						
						<div class="widget-content">

							<table class="table table-striped table-bordered" border="1" align="center" width="600px">
								<thead>
									<tr>
										<th>결제수단</th>
										<th>결제금액</th>
										<th>구성비(%)</th>
									</tr>
								</thead>


								<%-- <c:forEach var="menu" items="${ menus }"> --%>
									<tbody>
										<tr style="height: 30px; text-align: center">
											<td style="width: 100px">현금결제</td>
											<td style="width: 100px">${ cash }원</td>
											<td style="width: 100px">${ menu.foodName }%</td>
										</tr>
										
										<tr style="height: 30px; text-align: center">
											<td style="width: 100px">카드결제</td>
											<td style="width: 100px">${ credit }원</td>
											<td style="width: 100px">${ menu.foodName }%</td>
										
										</tr>
										<tr style="height: 30px; text-align: center">
											<td style="width: 100px">할인</td>
											<td style="width: 100px">${discountPrice}원</td>
											<td style="width: 100px">${ menu.foodName }</td>
										</tr>
								<%-- </c:forEach> --%>
								</tbody>
							</table>
						</div>
						<!-- /span -->
					</div>
					
				</div> <!--  /span -->
			
	  		<%-- <div class="span12">
	        <div class="widget widget-table action-table">
							<div class="widget-header">
								<i class="icon-th-list"></i>
								<h3>금일 매출-지출 내역 [ ${todayStr} ] </h3>
								<span style="float: right;">
									<i class="icon-money"></i>
									<h3> 합계금액 : ${sum}원</h3>
								</span>
								
							</div>
							<!-- /widget-header -->
							<div class="widget-content">

								<table class="table table-striped table-bordered" border="1"
									align="center" width="600px">
									<thead>
										<tr>
											<th>NO</th>
						        			<th>시간</th>
											<th>분류</th>
											<th>구분</th>
											<th>세부사항</th>
											<th>금액</th>
											<!-- <td>축적시간</td>
        										<td>급여</td> -->
										</tr>
									</thead>
	
									<c:forEach var="balance" items="${ balances }">
										<tbody>
											<tr style="height: 30px; text-align: center">
												<td style="width: 20px">
													<c:url value="salesview.action" var="salesviewUrl">
														<c:param name="balanceno" value="${ balance.balanceNo }" />
													</c:url>
													<a href="${ salesviewUrl }">${ balance.balanceNo }</a>
													</c:url> <a href="${ viewUrl }">${ employee.employeeNo }</a></td>
												</td>
												<td style="width: 70px"><fmt:formatDate value="${ balance.regDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
												<td style="width: 25px">${ balance.itemCode }</td>
												<td style="width: 25px">${ balance.itemname }</td>
												<td style="width: 50px">${ balance.description }</td>
												<td style="width: 50px">${ balance.plusMinus }원</td>
												<td>${ employee.pay } </td>
											</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- /span -->
						</div>
					</div> --%>
	          
	         <div class="span12"> 
	        <div class="widget widget-table action-table">
						<div class="widget-header">
							<i class="icon-th-list"></i>
							<h3>금일 메뉴별 판매 실적 [ ${todayStr} ]</h3>
								 <span style="float: right;">
									<i class="icon-money"></i>
									<h3> 합계 실매출 : ${total}원</h3>
								</span> 
						</div>
						
						<!-- /widget-header -->
						<div class="widget-content">

							<table class="table table-striped table-bordered" border="1" align="center" width="600px">
								<thead>
									<tr>
										<th>No</th>
										<th>메뉴</th>
										<th>누적판매량</th>
										<th>메뉴당 가격</th>
										<th>누적 실매출</th>
									</tr>
								</thead>


								<c:forEach var="menu" items="${ menus }">
									<tbody>
										<tr style="height: 30px; text-align: center">
											<td style="width: 50px"><%-- <c:url value="view.action"
													var="viewUrl">
													<c:param name="employeeNo" value="${ menu.employeeNo }" />
												</c:url>  --%>
												<%-- <a href="${ viewUrl }">${ employee.employeeNo }</a> --%>
												${ menu.foodCode}</td>
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
					</div>
					<!-- /row -->
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


</body>
</html>



<%-- <c:import url="/WEB-INF/views/include/posheader.jsp" />
	<!-- <a href="checksales.action">매출/지출현황</a><br/>
	<a href="checksell.action">판매실적</a><br/> -->
	
	<div>
		<br /> <br />
		<div style='text-align: center'>
			<div class="widget widget-plain">
				<div class="widget-content">
					<a href="checksales.action"
						class="btn btn-large btn-success btn-support-ask">매출-지출 내역</a>
				</div>
				<br/><br/>
				<div class="widget-content">
					<a href="checksell.action"
						class="btn btn-large btn-success btn-support-ask">판매 실적</a>
				</div>			
			</div><!-- /widget -->
			



		</div>

		<br /> <br />
	</div> --%>