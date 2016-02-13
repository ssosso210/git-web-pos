<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <title></title>
    <meta name="viewport"	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<link href="/dobbywebpos/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="/dobbywebpos/resources/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
	<link href="/dobbywebpos/resources/css/font-awesome.css" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"	rel="stylesheet">
	<link href="/dobbywebpos/resources/css/style.css" rel="stylesheet" type="text/css">
	<link href="/dobbywebpos/resources/css/pages/signin.css" rel="stylesheet" type="text/css"> 
	<link href="/dobbywebpos/resources/css/pages/dashboard.css" rel="stylesheet">
	
	<link rel="Stylesheet" href="/dobbywebpos/resources/styles/main.css" />
	<link rel="Stylesheet" href="/dobbywebpos/resources/styles/input.css" /> 
	<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script>
<style type="text/css">
.shortcuts .shortcut{
	 width:30%;
	 height: 150px;
	 padding-top: 50px;
	 margin-bottom: 30px;
}
	

.shortcuts .shortcut .shortcut-icon {
	font-size:60px;
}
.shortcuts .shortcut-label {
	font-size:18px;
	font-weight: bold;
	padding-top: 20px;
}
</style>
</head>
<body>
    <div id="wrap">
		<c:import url="/WEB-INF/views/include/posheader.jsp" />

	<!-- 	<div id="container">
			<div id="mainimg"> 
			<h1>Dobby pos</h1>
			</div>
			
			<br /><br /> -->
<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">			
        <div class="span12">
          <div class="widget">
            <!-- <div class="widget-header"> <i class="icon-bookmark"></i>
              
            </div> -->
            <!-- /widget-header -->
            <div class="widget-content" style="border:0px;">
              <div class="shortcuts"> 
              	<a href="/dobbywebpos/attendance/main.action" class="shortcut" style="background: #7ddb9c; "> 
              		<i class="shortcut-icon icon-check" ></i>
              		<span class="shortcut-label"  >근태</span> 
              	</a>
              	<a href="/dobbywebpos/sale/salehome_test.action?storeCode1=${sessionScope.loginuser.storeCode}" class="shortcut" style="background: #ec5948;  ">
              		<i class="shortcut-icon icon-shopping-cart" ></i>
              		<span class="shortcut-label" >판매</span> 
              	</a>
              	<a href="/dobbywebpos/check/checkmain.action" class="shortcut" style="background: #88b9d7;">
              		<i class="shortcut-icon icon-bar-chart" ></i>
              		<span class="shortcut-label" >조회</span> 
              	</a>
              	<a href="/dobbywebpos/management/managementhome" class="shortcut" style="background: #e4b076; ">
              		<i class="shortcut-icon icon-wrench" ></i>
              		<span class="shortcut-label" >관리</span> 
              	</a>
              	<a href="/dobbywebpos/settings/settinghome.action" class="shortcut" style="background: #c7b7d5;  ">
              		<i class="shortcut-icon icon-cogs" ></i>
              		<span class="shortcut-label" >설정</span> 
              	</a>
              	<!-- <a href="javascript:;" class="shortcut" style="background: #7da51c; "> --> 
              	<a href="/dobbywebpos/account/menulist.action" class="shortcut" style="background: #7da51c; ">
              	<i class="shortcut-icon"></i>
              		<span class="shortcut-label" ></span> 
              		<!-- <i class="shortcut-icon icon-list-alt"></i>
              		<span class="shortcut-label" >관리자 페이지</span>  -->
              	</a>
              </div>
              <!-- /shortcuts --> 
            </div>
            <!-- /widget-content --> 
          </div>
          <!-- /widget -->
         </div>
         <!-- /span6 -->
	  </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /main-inner --> 
</div>
<!-- /main -->	
		   
		    
		   
			 
	</div>
		<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script>
	<script src="/dobbywebpos/resources/jsui/bootstrap.js"></script>
	<script src="/dobbywebpos/resources/jsui/signin.js"></script>
	

</body>
</html>