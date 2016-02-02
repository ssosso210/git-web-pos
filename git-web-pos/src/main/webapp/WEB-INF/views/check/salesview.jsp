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
<title>매출-지출 상세보기</title>
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

	<div class="main">

		<div class="main-inner">

			<div class="container">

				<div class="row">

					<div class="span12">

						<div class="widget ">

							<div class="widget-header">
								<i class="icon-money"></i>
								<h3>상세 보기</h3>
							</div>
							<!-- /widget-header -->

							<div class="widget-content">



								<div class="tabbable">
									<!-- <ul class="nav nav-tabs">
										<li class="active">
										<a href="#employee"data-toggle="tab">직원 정보</a>
										</li>
										<li><a href="#salary" data-toggle="tab">급여 정보</a>
										</li> 
									</ul> -->

									<br>

									<div class="tab-content">
										<div class="tab-pane active" id="balance">
											<form id="edit-profile" class="form-horizontal">
												<fieldset>

													<div class="control-group">
														<label class="control-label" for="balanceNo">목차</label>
														<div class="controls">
															<input type="text" class="span6 disabled" id="balanceNo"
																value=${ requestScope.balance.balanceNo } disabled>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->

													<div class="control-group">
														<label class="control-label" for="regDate">날짜/시간</label>      <!-- 이거 시간은 왜 안나옴??? -->
														<div class="controls">
															<input type="text" class="span6 disabled" id="regDate"
																value=<fmt:formatDate value="${ requestScope.balance.regDate }" pattern="yyyy-MM-dd HH:mm:ss"/> disabled>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													<div class="control-group">
														<label class="control-label" for="itemCode">구분</label>
														<div class="controls">
															<input type="text" class="span6 disabled" id="itemCode"
																value=${ requestScope.balance.itemCode } disabled>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													<div class="control-group">
														<label class="control-label" for="plusMinus">금액</label>
														<div class="controls">
															<input type="text" class="span6 disabled" id="plusMinus"
																value=${ requestScope.balance.plusMinus } disabled>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													<div class="control-group">
														<label class="control-label" for="description">세부사항</label>
														<div class="controls">
															<input type="text" class="span6 disabled" id="description"
																value=${ requestScope.balance.description } disabled>
														</div>
														<!-- /controls -->
													</div>
													<!-- /control-group -->


													
												
												</fieldset>
											</form>
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
					</div>
				</div>
					
	<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script>

	<script src="/dobbywebpos/resources/jsui//bootstrap.js"></script>
	<script src="/dobbywebpos/resources/jsui//base.js"></script>
	
	
	
	
	
	<%-- <div id="pageContainer">
		
		<c:import url="/WEB-INF/views/include/posheader.jsp" />
		
		<div id="inputcontent">
			<br /><br />
		    <div id="inputmain">
		        <div class="inputsubtitle">상세보기</div>

		        <table>
		            <tr>
		                <th>목차</th>
		                <td>${ balance.balanceNo }</td>
		            </tr>
		            <tr>
		                <th>날짜시간</th>
		                <td><fmt:formatDate value="${ balance.regDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		            </tr>
		            <tr>
		                <th>구분</th>
		                <td>${ balance.itemCode }</td>
		            </tr>		            
		            <tr>
		                <th>금액</th>
		                <td>${ balance.plusMinus }</td>
		            </tr>
		            <tr>
		                <th>세부사항</th>
		                <td>${ balance.description }</td>
		            </tr>		            		            
		        </table>
		        <div class="buttons">
		        	
		        	
		        	<a href="salesedit.action?balanceno=${ balance.balanceNo }">수정</a>&nbsp;
		        	<a href="blahblah.action">삭제</a>&nbsp;
		        	<a href="checksales.action">돌아가기</a>
		        </div>
		    </div>
		</div>   		
		
	</div> --%>

</body>
</html>