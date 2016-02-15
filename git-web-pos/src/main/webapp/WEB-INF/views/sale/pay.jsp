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
<script src="//code.jquery.com/jquery-1.12.0.js"></script>
<script>
	$(function() {
		$("#customerinfo").on(
				"click",
				function(event) {
					var writtenno = $("#writtenno").val();

					$.ajax({
						url : "/dobbywebpos/pay/pay.action",
						type : "GET",
						async : true,
						data : {
							writtenno : writtenno
						},
						success : function(data, status, xhr) {
							eval("customer = " + decodeURIComponent(data));
							$("#CustomerNo").val(customer.customerNo);
							$("#c_name").val(customer.c_name);
							$("#c_phoneNo").val(customer.c_phoneNo);
							$("#c_point").val(customer.c_point);
							$("#c_level").val(customer.c_level);

							switch (customer.c_level) {
							case ("basic"):
								$("#discount_rate").val("5");
								$("#leveldiscount").val(
										$("#foodtotalcost").val() * (0.05));
								break;
							case ("vip"):
								$("#discount_rate").val("10");
								$("#leveldiscount").val(
										$("#foodtotalcost").val() * (0.1));

								break;
							case ("vvip"):
								$("#discount_rate").val("15");
								$("#leveldiscount").val(
										$("#foodtotalcost").val() * (0.15));
								break;
							}
						},
						error : function(xhr, status, error) {
							alert(error.toString());
						}
					});
				});
	});

	function pointnumber(number) {
		document.getElementById("pointuse").value += number;
	}

	function payresult() {
		//사용할 포인트가 내가 가진 포인트보다 많으면 안됨
		var pointuse1 = +document.getElementById("pointuse").value;//숫자로 바꿈
		var c_point1 = +document.getElementById("c_point").value;

		if (pointuse1 > c_point1) {
			alert("가진포인트보다 많습니다 ");
			document.getElementById("pointuse").value = null;

			document.getElementById("pointleft").value = null;
		} else {
			document.getElementById("actualpay").value = document
					.getElementById("foodtotalcost").value
					- document.getElementById("leveldiscount").value
					- document.getElementById("pointuse").value;

			//잔여포인트계산->디비로 들어가야 함 
			var pointleft = c_point1 - pointuse1
			document.getElementById("pointleft").value = pointleft;
		}
		
		return ;
	}

	$(document).ready(function() {
		$("#paycard").click(function() {
			$("#case_cashcard").show();
		});
		$("#paycash").click(function() {
			$("#case_cashcard").hide();
		});
	});

	function finalpay1() {
		var CustomerNo = document.getElementById("CustomerNo").value;
		var dscrate = document.getElementById("discount_rate").value;
		var paycard = $("input[type=radio][name=paycard]:checked").val();
		var pointleft = document.getElementById("pointleft").value;
		var actualpay = document.getElementById("actualpay").value;

		location.href = "/dobbywebpos/pay/finalpay.action?CustomerNo="
				+ CustomerNo + "&dscrate=" + dscrate + "&paycard=" + paycard
				+ "&pointleft=" + pointleft + "&totaltableno=" + ${totaltableno}
		+"&actualpay=" + actualpay;
	}

	function RemoveAll() {
		document.getElementById("pointuse").value = null;
	}

	function RemoveOne() {
		var x = document.getElementById("pointuse").value;

		x.remove(0);

	}
</script>
<body>
	<c:import url="/WEB-INF/views/include/posheader.jsp" />




	<div class="main">

		<div class="main-inner">

			<div class="container">

				<div class="row">

					<div class="span12">

						<div class="widget ">


							<!-- /widget-header -->

							<div class="widget-content">



								<div>

									<br>

									<div class="tab-content">
										<div>
												<form class="form-horizontal" > 
											<fieldset>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>[결제수단]</a>
												<div class="control-group">
													<label class="control-label">결제수단</label>


													<div class="controls">
														<label class="radio inline"> <input name="paycard"
															type="radio" id="paycard" value="credit">카드계산</input>
														</label> <label class="radio inline"> <input
															name="paycard" type="radio" id="paycash" value="cash">현금계산</input>
														</label>
													</div>
													<div id="case_cashcard" style="display: none">
														<label class="radio inline"> <br /> 카드번호 <input
															type="number" id="cardno" style="width: 190px"
															value=<%=((int) (Math.random() * 10000000) + 1)%>><br />
															유효기간 <input type="number" id="validmonth"
															style="width: 80px"
															value=<%=((int) (Math.random() * 13) + 1)%>>월&nbsp;
															<input type="text" id="validmonth" style="width: 80px"
															value=<%=((int) (Math.random() * 31) + 1)%>>일<br />
														</label>
													</div>

													<!-- /controls -->
												</div>

												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>[회원정보불러오기]</a>

												<div class="control-group">
													<label class="control-label">고객 번호 입력</label>
													<div class="controls">
														<input type="number" id="writtenno" style="width: 140px" />
														<input type="button" id="customerinfo" value="고객정보조회" />
														<br />
													</div>
													</label>
												</div>
												<br />



												<div class="control-group">
													<label class="control-label">고객 번호:</label>
													<div class="controls">
														<input type="text" id="CustomerNo" style="width: 280px"><br />
													</div>
													</label>
												</div>
												<div class="control-group">
													<label class="control-label">이름:</label>
													<div class="controls">
														<input type="text" id="c_name" style="width: 280px"><br />
													</div>
													</label>
												</div>
												<div class="control-group">
													<label class="control-label">전화번호:</label>
													<div class="controls">
														<input type="text" id="c_phoneNo" style="width: 280px"><br />
													</div>
													</label>
												</div>
												<div class="control-group">
													<label class="control-label">포인트:</label>
													<div class="controls">
														<input type="text" id="c_point" style="width: 280px"><br />
													</div>
													</label>
												</div>
												<div class="control-group">
													<label class="control-label">등급:</label>
													<div class="controls">
														<input type="text" id="c_level" style="width: 280px"><br />
													</div>
													</label>
												</div>
												<div class="control-group">
													<label class="control-label">할인율:</label>
													<div class="controls">
														<input type="text" id="discount_rate" style="width: 280px">%<br />
													</div>
													</label>
												</div>
												<div class="control-group">
													<label class="control-label">잔여포인트:</label>
													<div class="controls">
														<input type="text" id="pointleft" style="width: 280px"><br />
													</div>
													</label>
												</div>
												<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>[계산]</a>
												<div class="control-group">
													<label class="control-label">금액:</label>
													<div class="controls">
														<input value=20000 type="number" id="foodtotalcost"
															style="width: 280px"><br />
													</div>
													</label>
												</div>
												<div class="control-group">
													<label class="control-label">- 등급별 할인금액</label>
													<div class="controls">
														<input type="number" id="leveldiscount"
															style="width: 280px"></input><br />
													</div>
													</label>
												</div>
												<div class="control-group">
													<label class="control-label"> - 포인트사용</label>
													<div class="controls">
														<input type="number" id="pointuse" style="width: 280px"></input><br />
														<tr>
															<button type="button" onclick="javascript:pointnumber(1);"
																style="width: 85px">1</button>
															<button type="button" onclick="javascript:pointnumber(2);"
																style="width: 85px">2</button>
															<button onclick="javascript:pointnumber(3);"
																style="width: 85px" type="button">3</button>
															<br />
															<button onclick="javascript:pointnumber(4);"
																style="width: 85px" type="button">4</button>
															<button onclick="javascript:pointnumber(5);"
																style="width: 85px" type="button">5</button>
															<button onclick="javascript:pointnumber(6);"
																style="width: 85px" type="button">6</button>
															<br />
															<button onclick="javascript:pointnumber(7);"
																style="width: 85px" type="button">7</button>
															<button onclick="javascript:pointnumber(8);"
																style="width: 85px" type="button">8</button>
															<button onclick="javascript:pointnumber(9);"
																style="width: 85px" type="button">9</button>
															<br />
															<button onclick="javascript:RemoveOne();"
																style="width: 85px" type="button">#</button>
															<button onclick="javascript:pointnumber(0);"
																style="width: 85px" type="button">0</button>
															<button type="button" onclick="javascript:RemoveAll();"
																style="width: 85px">모두지우기</button>
															<br />
														</tr>


													</div>
													</label>
												</div>


												<button type="button" id="applybtn" onclick="javascript:payresult();">적용</button>
												<br />

												<div class="control-group">
													<label class="control-label"> = 결제금액 </label>
													<div class="controls">
														<input type="number" id="actualpay" style="width: 280px"><br />
														<br />
													</div>
													
												</div>
											
												<div class="form-actions">
													<button type="button" id="finalpay" onclick="javascript:finalpay1()" class="btn btn-primary">최종결제</button>
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
