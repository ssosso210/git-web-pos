<%@page import="com.dobbypos.model.dto.Balance"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dobbypos.model.dao.CheckDao"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>매출-지출 현황</title>

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
	
	<link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

</head>

<!-- <script src="//code.jquery.com/jquery-1.12.0.js"></script> -->
<script type="text/javascript">
   
	/* var myWindow;
   
	function choose_period() { 
		myWindow = window.open("../check/chooseperiod.action", "myWindow", "width=600, height=600, left=500, top=100");
	} */
	
	function checkPlusMinus(typeval) {
		$('#typeval').val(typeval);
		
		frm = document.getElementById("edit-profile");
		frm.submit(); 
		
	}
	
	
    $(function() {
       $( "#startday" ).datepicker({
    	   dateFormat:"yy-mm-dd"
       });
       $( "#endday" ).datepicker({
    	   dateFormat:"yy-mm-dd"
        });
    });

	
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
						<div>
							<!-- <input class="btn btn-large" type="button" value="기간 선택" onclick="choose_period()"> -->
							<form id="edit-profile" class="form-horizontla"
								action="/dobbywebpos/check/viewbyperiod.action" method="post">
								
								<input type="hidden" id="typeval" name="typeval" value="all" />
								<p>
									시작일: <input type="text" id="startday" name="startday"value="${startday}"> 
									종료일: <input type="text" id="endday" name="endday" value="${endday}"> 
									<input class="btn" style="margin-bottom: 9px;" type="submit" value="보기" />
									<span style="float: right;">
										<input id="viewplus" class="btn btn-middle" type="button" onclick="javascript:checkPlusMinus('all');" value="[ 모두보기 ]" /> &nbsp;&nbsp;&nbsp;&nbsp;
										<input id="viewplus" class="btn btn-middle" type="button" onclick="javascript:checkPlusMinus('plus');" value="[ 매출보기 ]" /> &nbsp;&nbsp;&nbsp;&nbsp;
										<input id="viewminus" class="btn btn-middle" type="button" onclick="javascript:checkPlusMinus('minus');" value="[ 지출보기 ]" /> &nbsp;&nbsp;&nbsp;&nbsp;
									</span>
								</p>

							</form>
						</div>
						<br/>
						<div class="widget widget-table action-table">
							<div class="widget-header">
								<i class="icon-th-list"></i>
								<h3>매출-지출 내역  </h3>
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
													<%-- </c:url> <a href="${ viewUrl }">${ employee.employeeNo }</a></td> --%>
												</td>
												<td style="width: 70px"><fmt:formatDate value="${ balance.regDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
												<td style="width: 25px">${ balance.itemCode }</td>
												<td style="width: 25px">${ balance.itemname }</td>
												<td style="width: 50px">${ balance.description }</td>
												<td style="width: 50px">${ balance.plusMinus } 원</td>
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
					<!-- /container -->
				</div>
				<!-- /main-inner -->
			</div>
		</div>
		</div>
		
</body>


<%-- <body>
<div style="text-align:left;margin-top:1px;padding:5px">
        	<c:forEach var="balance" begin="0" end="0" items="${ balances }">
        	[ 날짜 : ${ balance.regDate }  ]
        	[ 지점코드 : ${ balance.storeCode }  ]
        	</c:forEach>
        </div>

	<div id="pageContainer">

		<c:import url="/WEB-INF/views/include/posheader.jsp" /> 
		<div id="content">
			<br />
			<br />
			<div style='text-align: right'>
				<button>삽입</button>
				<button>수정</button>
				<button>삭제</button>
			</div>
			<br />
			<br />
			<div class="inputsubtitle">매출/지출 내역</div>
			<table border="1" align="center" width="700px">
        		<tr style="height:30px;background-color:orange">
        			<td>목차</td>
        			<td>시간</td>
					<td>구분</td>
					<td>금액</td>
					<td>세부사항</td>
        		</tr>        	
        	<c:forEach var="balance" items="${ balances }">
        		<tr style="height:30px">
        			
        			<td>
        				<c:url value="salesview.action" var="salesviewUrl">
        					<c:param name="balanceno" value="${ balance.balanceNo }" />
        				</c:url>
        			</td>
        			<td>${ balance.balanceNo }</td>
        			<td>${ balance.regDate }</td>
        			<td>${ balance.itemCode }</td>
        			<td>${ balance.plusMinus }</td>
        			<td>${ balance.description }</td>
        		</tr>
        	</c:forEach>
        	</table>

		</div>
	</div>

</body> --%>
</html>





