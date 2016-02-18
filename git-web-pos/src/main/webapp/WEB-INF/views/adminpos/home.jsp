<%@ page language="java" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title><spring:message code="hq.title" /></title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta name="description" content="Developed By M Abdur Rokib Promy">
    <meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
    <!-- bootstrap 3.0.2 -->

    <link href="/dobbywebpos/resources/styles/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->

    <link href="/dobbywebpos/resources/styles/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="/dobbywebpos/resources/styles/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="/dobbywebpos/resources/styles/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="/dobbywebpos/resources/styles/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="/dobbywebpos/resources/styles/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- fullCalendar -->
    <link href="/dobbywebpos/resources/styles/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="/dobbywebpos/resources/styles/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- iCheck for checkboxes and radio inputs -->
    <link href="/dobbywebpos/resources/styles/iCheck/all.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <!-- <link href="css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" /> -->
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- Theme style -->
    <link href="/dobbywebpos/resources/styles/style.css" rel="stylesheet" type="text/css" />
    <link href="/dobbywebpos/resources/styles/style2.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
          <![endif]-->

          <style type="text/css">

          </style>
        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="/dobbywebpos/resources/js/jquery.min.js" type="text/javascript"></script>

        <!-- jQuery UI 1.10.3 -->
        <script src="/dobbywebpos/resources/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="/dobbywebpos/resources/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- daterangepicker -->
        <script src="/dobbywebpos/resources/js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>

        <script src="/dobbywebpos/resources/js/plugins/chart.js" type="text/javascript"></script>

        <!-- datepicker
        <script src="js/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>-->
        <!-- Bootstrap WYSIHTML5
        <script src="js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>-->
        <!-- iCheck -->
        <script src="/dobbywebpos/resources/js/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
        <!-- calendar -->
        <script src="/dobbywebpos/resources/js/plugins/fullcalendar/fullcalendar.js" type="text/javascript"></script>

        <!-- Director App -->
        <script src="/dobbywebpos/resources/js/Director/app.js" type="text/javascript"></script>

        <!-- Director dashboard demo (This is only for demo purposes) -->
        <script src="/dobbywebpos/resources/js/Director/dashboard.js" type="text/javascript"></script>

		<script src="/dobbywebpos/resources/js/jquery.number.js"></script>

        <!-- Director for demo purposes -->
        <script type="text/javascript">
            $('input').on('ifChecked', function(event) {
                // var element = $(this).parent().find('input:checkbox:first');
                // element.parent().parent().parent().addClass('highlight');
                $(this).parents('li').addClass("task-done");
                console.log('ok');
            });
            $('input').on('ifUnchecked', function(event) {
                // var element = $(this).parent().find('input:checkbox:first');
                // element.parent().parent().parent().removeClass('highlight');
                $(this).parents('li').removeClass("task-done");
                console.log('not');
            });
            
            
			
          
        </script>
        <script>
            $('#noti-box').slimScroll({
                height: '400px',
                size: '5px',
                BorderRadius: '5px'
            });

            $('input[type="checkbox"].flat-grey, input[type="radio"].flat-grey').iCheck({
                checkboxClass: 'icheckbox_flat-grey',
                radioClass: 'iradio_flat-grey'
            });
</script>
<script type="text/javascript">
    $(function() {
    	
    	var hqCode = '${ hqCode }';
    	if  ( hqCode == 'outback'){
    		var savedFileName = "/dobbywebpos/resources/images/" + hqCode + ".gif";
    		$("#myPhoto").attr("src", savedFileName);
    	}
    	
    	if  ( hqCode == 'ashley'){
    		var savedFileName = "/dobbywebpos/resources/images/" + hqCode + ".jpg";
    		$("#myPhoto").attr("src", savedFileName);
    	}
    	
    	var currentMonthSales = ${ revenue };
    	var lastMonthSales = ${ lastRevenue };
    	var lastMonthSales2 = ${ lastRevenue2 };
    	var lastMonthSales3 = ${ lastRevenue3 };
    	var lastMonthSales4 = ${ lastRevenue4};
    	var lastMonthSales5 = ${ lastRevenue5 };
    	var lastMonthSales6 = ${ lastRevenue6 };
    	var lastMonthSales7 = ${ lastRevenue7 };
    	var lastMonthSales8 = ${ lastRevenue8 };
    	var lastMonthSales9 = ${ lastRevenue9 };
    	var lastMonthSales10 = ${ lastRevenue10 };
    	var lastMonthSales11 = ${ lastRevenue11 };
    	
    	var currentPurchases = ${ currentPurchases };
    	var lastMonthPurchases1 = ${ lastMonthPurchases1 };
    	var lastMonthPurchases2 = ${ lastMonthPurchases2 };
    	var lastMonthPurchases3 = ${ lastMonthPurchases3 };
    	var lastMonthPurchases4 = ${ lastMonthPurchases4 };
    	var lastMonthPurchases5 = ${ lastMonthPurchases5 };
    	var lastMonthPurchases6 = ${ lastMonthPurchases6 };
    	var lastMonthPurchases7 = ${ lastMonthPurchases7 };
    	var lastMonthPurchases8 = ${ lastMonthPurchases8 };
    	var lastMonthPurchases9 = ${ lastMonthPurchases9 };
    	var lastMonthPurchases10 = ${ lastMonthPurchases10 };
    	var lastMonthPurchases11 = ${ lastMonthPurchases11 };
    	
    	var lastYearProfits = ${ lastYearProfits };
    	var lastYearProfitsWithComma = $.number(lastYearProfits) + "원";
    	$("#profits").html(lastYearProfitsWithComma);
    	
    	var totalCustomers = ${ totalCustomers };
    	var totalCustomersWithComma = $.number(totalCustomers) + "명";
    	$("#totalCustomers").html(totalCustomersWithComma);
    	
    	var totalStores = ${ totalStores };
    	var totalStoresWithComma = $.number(totalStores) + "점";
    	$("#totalStores").html(totalStoresWithComma);
    	
    	var d = new Date();
    	var month = d.getMonth() + 1;
    	var nextMonth = null;
    	var lastMonth = null;
    	var lastMonth2 = null;
    	var lastMonth3 = null;
    	var lastMonth4 = null;
    	var lastMonth5 = null;
    	var lastMonth6 = null;
    	var lastMonth7 = null;
    	var lastMonth8 = null;
    	var lastMonth9 = null;
    	var lastMonth10 = null;
    	var lastMonth11 = null;
    	
    	if (month == 0) {
    		lastMonth = 12;
    	} else {
    		lastMonth = month - 1;
    	}
    	lastMonth2 = lastMonth - 1;    	
    	if (lastMonth2 == 0) {
    		lastMonth2 = 12;
    	} 
    	lastMonth3 = lastMonth2 - 1;
    	if (lastMonth3 == 0) {
    		lastMonth3 = 12;
    	} 
    	lastMonth4 = lastMonth3 - 1;
    	if (lastMonth4 == 0) {
    		lastMonth4 = 12;
    	} 
    	lastMonth5 = lastMonth4 - 1;
    	if (lastMonth5 == 0) {
    		lastMonth5 = 12;
    	} 
    	lastMonth6 = lastMonth5 - 1;
    	if (lastMonth6 == 0) {
    		lastMonth6 = 12;
    	} 
    	lastMonth7 = lastMonth6 - 1;
    	if (lastMonth7 == 0) {
    		lastMonth7 = 12;
    	} 
    	lastMonth8 = lastMonth7 - 1;
    	if (lastMonth8 == 0) {
    		lastMonth8 = 12;
    	} 
    	lastMonth9 = lastMonth8 - 1;
    	if (lastMonth9 == 0) {
    		lastMonth9 = 12;
    	} 
    	lastMonth10 = lastMonth9 - 1;
    	if (lastMonth10 == 0) {
    		lastMonth10= 12;
    	} 
    	lastMonth11 = lastMonth10 - 1;
    	if (lastMonth11 == 0) {
    		lastMonth11 = 12;
    	} 
    	
    	if (month == 12) {
    		nextMonth = 1;
    	} else {
    		nextMonth = month + 1;
    	}
    	
    	var nextMonth2 = nextMonth + 1;
    	var nextMonth3 = nextMonth2 + 1;
    	var nextMonth4 = nextMonth3 + 1;
    	var nextMonth5 = nextMonth4 + 1;
    	var nextMonth6 = nextMonth5 + 1;
    	
    	
    	var currentMonth = month + "월";
    	var currentNextMonth = nextMonth + "월"
    	var currentNextMonth2 = nextMonth2 + "월"
    	var currentNextMonth3 = nextMonth3 + "월"
    	var currentNextMonth4 = nextMonth4 + "월"
    	var currentNextMonth5 = nextMonth5 + "월"
    	var currentNextMonth6 = nextMonth6 + "월"
    	
    	var currentLastMonth = lastMonth + "월";
    	var currentLastMonth2 = lastMonth2 + "월";
    	var currentLastMonth3 = lastMonth3 + "월";
    	var currentLastMonth4 = lastMonth4 + "월";
    	var currentLastMonth5 = lastMonth5 + "월";
    	var currentLastMonth6 = lastMonth6 + "월";
    	var currentLastMonth7 = lastMonth7 + "월";
    	var currentLastMonth8 = lastMonth8 + "월";
    	var currentLastMonth9 = lastMonth9 + "월";
    	var currentLastMonth10 = lastMonth10 + "월";
    	var currentLastMonth11 = lastMonth11 + "월";
        //alert(currentMonth);
                "use strict";
                //BAR CHART
                                
                var data = {
                    labels: [currentLastMonth11, currentLastMonth10, currentLastMonth9, currentLastMonth8, currentLastMonth7, currentLastMonth6, currentLastMonth5, currentLastMonth4, currentLastMonth3, currentLastMonth2, currentLastMonth, currentMonth],
                    datasets: [
                        {
                            label: "My First dataset",
                            fillColor: "rgba(220,220,220,0.2)",
                            strokeColor: "red",
                            pointColor: "rgba(220,220,220,1)",
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(220,220,220,1)",                            
                            data: [lastMonthPurchases11, lastMonthPurchases10, lastMonthPurchases9, lastMonthPurchases8, lastMonthPurchases7, lastMonthPurchases6, lastMonthPurchases5, lastMonthPurchases4, lastMonthPurchases3, lastMonthPurchases2, lastMonthPurchases1, currentPurchases]
                        },
                        {
                            label: "My Second dataset",
                            fillColor: "rgba(151,187,205,0.2)",
                            strokeColor: "blue",
                            pointColor: "rgba(151,187,205,1)",
                            pointStrokeColor: "#fff",
                            pointHighlightFill: "#fff",
                            pointHighlightStroke: "rgba(151,187,205,1)",                            
                            data: [lastMonthSales11, lastMonthSales10, lastMonthSales9, lastMonthSales8, lastMonthSales7, lastMonthSales6, lastMonthSales5, lastMonthSales4, lastMonthSales3, lastMonthSales2, lastMonthSales, currentMonthSales]
                        }
                    ]
                };
            new Chart(document.getElementById("linechart").getContext("2d")).Line(data,{
                responsive : true,
                maintainAspectRatio: false,                
            });

            });
            // Chart.defaults.global.responsive = true;
</script>
      </head>
      <body class="skin-black">


                <c:import url="/WEB-INF/views/include/hqHeader.jsp" />
                    <aside class="right-side">

                <!-- Main content -->
                <section class="content">

                    <div class="row" style="margin-bottom:5px;">


                        <div class="col-md-3">
                            <div class="sm-st clearfix">
                                <span class="sm-st-icon st-red"><i class="fa fa-check-square-o"></i></span>
                                <div class="sm-st-info">
                                    <span id="totalCustomers"></span>
                                    <spring:message code="hq.totalCustomer" />
                                </div>
                            </div>
                        </div>
                        <!-- <div class="col-md-3">
                            <div class="sm-st clearfix">
                                <span class="sm-st-icon st-violet"><i class="fa fa-envelope-o"></i></span>
                                <div class="sm-st-info">
                                    <span>2200</span>
                                    Total Messages
                                </div>
                            </div>
                        </div> -->
                        <div class="col-md-3" style="width: 300px">
                            <div class="sm-st clearfix">
                                <span class="sm-st-icon st-blue"><i class="fa fa-dollar"></i></span>
                                <div class="sm-st-info" style="font-size: 15pt">
                                    <span id="profits"></span>
                                    <spring:message code="hq.profit" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3" style="width: 300px">
                            <div class="sm-st clearfix">
                                <span class="sm-st-icon st-green"><i class="fa fa-paperclip"></i></span>
                                <div class="sm-st-info" style="font-size: 15pt">
                                    <span id="totalStores"></span>
                                    총 가맹점 수
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Main row -->
                    <div class="row">

                        <div class="col-md-8">
                            <!--earning graph start-->
                            <section class="panel">
                                <header class="panel-heading">
                                    <spring:message code="hq.graph" />
                                </header>
                                <div class="panel-body">
                                    <canvas id="linechart" width="600" height="330"></canvas>
                                    <div class="legend"><div style="position: absolute; width: 60px; height: 60px; top: 14px; right: 13px; opacity: 0.85; background-color: rgb(255, 255, 255);"> </div>
                                    	<table style="position:absolute;top:14px;right:13px;;font-size:smaller;color:#545454">
                                    		<tbody>
                                    			<tr>
                                    				<td class="legendColorBox">
                                    					<div style="border:1px solid #ccc;padding:1px">
                                    						<div style="width:4px;height:0;border:5px solid rgb(250,88,51);overflow:hidden"></div>
                                    					</div>
                                    				</td>
                                    				<td class="legendLabel">매입액</td>
                                    			</tr>
                                    			<tr>
                                    				<td class="legendColorBox">
                                    					<div style="border:1px solid #ccc;padding:1px">
                                    						<div style="width:4px;height:0;border:5px solid rgb(47,171,233);overflow:hidden"></div>
                                    					</div>
                                    				</td>
                                    				<td class="legendLabel">매출액</td>
                                    			</tr>
                                    		</tbody>
                                    	</table>
                                    </div>
                                </div>
                                        </section>
                                        <!--earning graph end-->

                                    </div>
                                    <div class="col-lg-4">

                                        <!--chat start-->
                                        <section class="panel">
                                            <header class="panel-heading">
                                                <spring:message code="hq.notification" />
                                            </header>
                                                <div class="panel-body" id="noti-box">

                                                    <div class="alert alert-block alert-danger">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>3월!</strong> K-프랜차이즈 중국 연길 진출의 건
                                                    </div>
                                                    <div class="alert alert-success">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>2월 22일 ~ 3월 4일!</strong> 프랜차이즈 아카데미 교육신청 안내
                                                    </div>
                                                    <div class="alert alert-info">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>2016년!</strong> 프랜차이즈 사업 연매출 230억목표
                                                    </div>
                                                    <div class="alert alert-warning">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>Warning!</strong> 레드 오션 생존 전략
                                                    </div>


                                                    <div class="alert alert-block alert-danger">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>NEW!</strong> 2월 신메뉴 출시 !!!
                                                    </div>
                                                    <div class="alert alert-success">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>NOTICE!</strong> 명절 매장 운영 안내
                                                    </div>
                                                    <!-- <div class="alert alert-info">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
                                                    </div>
                                                    <div class="alert alert-warning">
                                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        <strong>Warning!</strong> Best check yo self, you're not looking too good.
                                                    </div>
 -->


                                                </div>
                                        </section>



                      </div>


                  </div>
                     <div class="row">

                        <div class="col-md-8">
                            <section class="panel">
                              <header class="panel-heading">
                                  신규매장 개업 진행상황
                            </header>
                            <div class="panel-body table-responsive">
                                <table class="table table-hover">
                                  <thead>
                                    <tr>
                                      <th>#</th>
                                      <th>Project</th>
                                      <th>Manager</th>
                                      <!-- <th>Client</th> -->
                                      <th>Deadline</th>
                                      <!-- <th>Price</th> -->
                                      <th>Status</th>
                                      <th>Progress</th>
                                  </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>1</td>
                                  <td>강남점</td>
                                  <td>박은영</td>
                                  <!-- <td>Steve</td> -->
                                  <td>2016년 1월 2일</td>
                                  <!-- <td>$1500</td> -->
                                  <td><span class="label label-danger">in progress</span></td>
                                  <td><span class="badge badge-info">50%</span></td>
                              </tr>
                              <tr>
                                  <td>2</td>
                                  <td>역삼점</td>
                                  <td>윤준혁</td>
                                  <!-- <td>Darren</td> -->
                                  <td>2016년 1월 26일</td>
                                  <!-- <td>$1500</td> -->
                                  <td><span class="label label-success">completed</span></td>
                                  <td><span class="badge badge-success">100%</span></td>
                              </tr>
                              <tr>
                                  <td>3</td>
                                  <td>동대문점</td>
                                  <td>심은호</td>
                                  <!-- <td>Nick</td> -->
                                  <td>2016년 2월 3일</td>
                                  <!-- <td>$2000</td> -->
                                  <td><span class="label label-warning">in progress</span></td>
                                  <td><span class="badge badge-warning">75%</span></td>
                              </tr>
                              <tr>
                                  <td>4</td>
                                  <td>서울대점</td>
                                  <td>김윤수</td>
                                  <!-- <td>Rock</td> -->
                                  <td>2016년 2월 1일</td>
                                  <!-- <td>$2000</td> -->
                                  <td><span class="label label-info">in progress</span></td>
                                  <td><span class="badge badge-info">65%</span></td>
                              </tr>
                              <tr>
                                  <td>5</td>
                                  <td>잠원점</td>
                                  <td>남소진</td>
                                  <!-- <td>HHH</td> -->
                                  <td>2016년 2월 10일</td>
                                  <!-- <td>$2000</td> -->
                                  <td><span class="label label-warning">in progress</span></td>
                                  <td><span class="badge badge-danger">95%</span></td>
                              </tr>
                              <tr>
                                  <td>6</td>
                                  <td>수유점</td>
                                  <td>김상훈</td>
                                  <!-- <td>HHH</td> -->
                                  <td>2016년 2월 14일</td>
                                  <!-- <td>$2000</td> -->
                                  <td><span class="label label-info">in progress</span></td>
                                  <td><span class="badge badge-success">95%</span></td>
                              </tr>
                              <!-- <tr>
                                  <td>7</td>
                                  <td>Ghost</td>
                                  <td>XXX</td>
                                  <td>HHH</td>
                                  <td>01/11/2014</td>
                                  <td>$2000</td>
                                  <td><span class="label label-info">in progress</span></td>
                                  <td><span class="badge badge-success">95%</span></td>
                              </tr> -->
                          </tbody>
                      </table>
                  </div>
              </section>


          <!-- </div>end col-6
          <div class="col-md-4">
            <section class="panel">
                <header class="panel-heading">
                    Twitter Feed
                </header>
                <div class="panel-body">
                    <div class="twt-area">
                        <form action="#" method="post">
                            <textarea class="form-control" name="profile-tweet" placeholder="Share something on Twitter.." rows="3"></textarea>

                            <div class="clearfix">
                                <button class="btn btn-sm btn-primary pull-right" type="submit">
                                    <i class="fa fa-twitter"></i>
                                    Tweet
                                </button>
                                <a class="btn btn-link btn-icon fa fa-location-arrow" data-original-title="Add Location" data-placement="bottom" data-toggle="tooltip" href=
                                "#" style="text-decoration:none;" title=""></a>
                                <a class="btn btn-link btn-icon fa fa-camera" data-original-title="Add Photo" data-placement="bottom" data-toggle="tooltip" href="#"
                                style="text-decoration:none;" title=""></a>
                            </div>
                        </form>
                    </div>
                    <ul class="media-list">
                        <li class="media">
                            <a href="#" class="pull-left">
                                <img src="/dobbywebpos/resources/images/26115.jpg" alt="Avatar" class="img-circle" width="64" height="64">
                            </a>
                            <div class="media-body">
                                <span class="text-muted pull-right">
                                    <small><em>30 min ago</em></small>
                                </span>
                                <a href="page_ready_user_profile.php">
                                    <strong>John Doe</strong>
                                </a>
                                <p>
                                    In hac <a href="#">habitasse</a> platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend.
                                    <a href="#" class="text-danger">
                                        <strong>#dev</strong>
                                    </a>
                                </p>
                            </div>
                        </li>
                        <li class="media">
                            <a href="#" class="pull-left">
                                <img src="/dobbywebpos/resources/images/26115.jpg" alt="Avatar" class="img-circle" width="64" height="64">
                            </a>
                            <div class="media-body">
                                <span class="text-muted pull-right">
                                    <small><em>30 min ago</em></small>
                                </span>
                                <a href="page_ready_user_profile.php">
                                    <strong>John Doe</strong>
                                </a>
                                <p>
                                    In hac <a href="#">habitasse</a> platea dictumst. Proin ac nibh rutrum lectus rhoncus eleifend.
                                    <a href="#" class="text-danger">
                                        <strong>#design</strong>
                                    </a>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="panel">
                                <header class="panel-heading">
                                    Teammates
                                </header>

                                <ul class="list-group teammates">
                                    <li class="list-group-item">
                                        <a href=""><img src="/dobbywebpos/resources/images/26115.jpg" width="50" height="50"></a>
                                        <span class="pull-right label label-danger inline m-t-15">Admin</span>
                                        <a href="">Damon Parker</a>
                                    </li>
                                    <li class="list-group-item">
                                        <a href=""><img src="/dobbywebpos/resources/images/26115.jpg"  width="50" height="50"></a>
                                        <span class="pull-right label label-info inline m-t-15">Member</span>
                                        <a href="">Joe Waston</a>
                                    </li>
                                    <li class="list-group-item">
                                        <a href=""><img src="/dobbywebpos/resources/images/26115.jpg"  width="50" height="50"></a>
                                        <span class="pull-right label label-warning inline m-t-15">Editor</span>
                                        <a href="">Jannie Dvis</a>
                                    </li>
                                    <li class="list-group-item">
                                        <a href=""><img src="/dobbywebpos/resources/images/26115.jpg"  width="50" height="50"></a>
                                        <span class="pull-right label label-warning inline m-t-15">Editor</span>
                                        <a href="">Emma Welson</a>
                                    </li>
                                    <li class="list-group-item">
                                        <a href=""><img src="/dobbywebpos/resources/images/26115.jpg"  width="50" height="50"></a>
                                        <span class="pull-right label label-success inline m-t-15">Subscriber</span>
                                        <a href="">Emma Welson</a>
                                    </li>
                                </ul>
                                <div class="panel-footer bg-white">
                                    <span class="pull-right badge badge-info">32</span>
                                    <button class="btn btn-primary btn-addon btn-sm">
                                        <i class="fa fa-plus"></i>
                                        Add Teammate
                                    </button>
                                </div>
                            </div>
                        </div> -->
                        <!-- <div class="col-md-7">
                          <section class="panel tasks-widget">
                              <header class="panel-heading">
                                  Todo list
                            </header>
                            <div class="panel-body">

                              <div class="task-content">

                                  <ul class="task-list">
                                      <li>
                                          <div class="task-checkbox">
                                              <input type="checkbox" class="list-child" value=""  />
                                              <input type="checkbox" class="flat-grey list-child"/>
                                              <input type="checkbox" class="square-grey"/>
                                          </div>
                                          <div class="task-title">
                                              <span class="task-title-sp">Director is Modern Dashboard</span>
                                              <span class="label label-success">2 Days</span>
                                              <div class="pull-right hidden-phone">
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-check"></i></button>
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-pencil"></i></button>
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-times"></i></button>
                                              </div>
                                          </div>
                                      </li>
                                      <li>
                                          <div class="task-checkbox">
                                              <input type="checkbox" class="list-child" value=""  />
                                              <input type="checkbox" class="flat-grey"/>
                                          </div>
                                          <div class="task-title">
                                              <span class="task-title-sp">Fully Responsive & Bootstrap 3.0.2 Compatible</span>
                                              <span class="label label-danger">Done</span>
                                              <div class="pull-right hidden-phone">
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-check"></i></button>
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-pencil"></i></button>
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-times"></i></button>
                                              </div>
                                          </div>
                                      </li>
                                      <li>
                                          <div class="task-checkbox">
                                              <input type="checkbox" class="list-child" value=""  />
                                              <input type="checkbox" class="flat-grey"/>
                                          </div>
                                          <div class="task-title">
                                              <span class="task-title-sp">Latest Design Concept</span>
                                              <span class="label label-warning">Company</span>
                                              <div class="pull-right hidden-phone">
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-check"></i></button>
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-pencil"></i></button>
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-times"></i></button>
                                              </div>
                                          </div>
                                      </li>
                                      <li>
                                          <div class="task-checkbox">
                                              <input type="checkbox" class="list-child" value=""  />
                                              <input type="checkbox" class="flat-grey"/>
                                          </div>
                                          <div class="task-title">
                                              <span class="task-title-sp">Write well documentation for this theme</span>
                                              <span class="label label-primary">3 Days</span>
                                              <div class="pull-right hidden-phone">
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-check"></i></button>
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-pencil"></i></button>
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-times"></i></button>
                                              </div>
                                          </div>
                                      </li>
                                      <li>
                                          <div class="task-checkbox">
                                              <input type="checkbox" class="list-child" value=""  />
                                              <input type="checkbox" class="flat-grey"/>
                                          </div>
                                          <div class="task-title">
                                              <span class="task-title-sp">Don't bother to download this Dashbord</span>
                                              <span class="label label-inverse">Now</span>
                                              <div class="pull-right">
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-check"></i></button>
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-pencil"></i></button>
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-times"></i></button>
                                              </div>
                                          </div>
                                      </li>
                                      <li>
                                          <div class="task-checkbox">
                                              <input type="checkbox" class="list-child" value=""  />
                                              <input type="checkbox" class="flat-grey"/>
                                          </div>
                                          <div class="task-title">
                                              <span class="task-title-sp">Give feedback for the template</span>
                                              <span class="label label-success">2 Days</span>
                                              <div class="pull-right hidden-phone">
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-check"></i></button>
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-pencil"></i></button>
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-times"></i></button>
                                              </div>
                                          </div>
                                      </li>
                                      <li>
                                          <div class="task-checkbox">
                                              <input type="checkbox" class="list-child" value=""  />
                                              <input type="checkbox" class="flat-grey"/>
                                          </div>
                                          <div class="task-title">
                                              <span class="task-title-sp">Tell your friends about this admin template</span>
                                              <span class="label label-danger">Now</span>
                                              <div class="pull-right hidden-phone">
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-check"></i></button>
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-pencil"></i></button>
                                                  <button class="btn btn-default btn-xs"><i class="fa fa-times"></i></button>
                                              </div>
                                          </div>
                                      </li>

                                  </ul>
                              </div>

                              <div class=" add-task-row">
                                  <a class="btn btn-success btn-sm pull-left" href="#">Add New Tasks</a>
                                  <a class="btn btn-default btn-sm pull-right" href="#">See All Tasks</a>
                              </div>
                          </div>
                      </section>
                  </div>
              </div> -->
              <!-- row end -->
                </section><!-- /.content -->
                <div class="footer-main">
                    Copyright &copy Director, 2014
                </div>
            </aside><!-- /.right-side -->

        </div><!-- ./wrapper -->



</body>
</html>