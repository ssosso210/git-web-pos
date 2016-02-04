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
              	<a href="javascript:;" class="shortcut" style="background: #7ddb9c; width:30%; ">
              		<i class="shortcut-icon icon-check" style="font-size:60px;"></i>
              		<span class="shortcut-label" style="font-size:18px" >근태</span> 
              	</a>
              	<a href="javascript:;" class="shortcut" style="background: #ec5948; width:30%; ">
              		<i class="shortcut-icon icon-shopping-cart" style="font-size:60px;"></i>
              		<span class="shortcut-label" style="font-size:18px">판매</span> 
              	</a>
              	<a href="javascript:;" class="shortcut" style="background: #88b9d7; width:30%; ">
              		<i class="shortcut-icon icon-bar-chart" style="font-size:60px;"></i>
              		<span class="shortcut-label" style="font-size:18px">조회</span> 
              	</a>
              	<a href="javascript:;" class="shortcut" style="background: #e4b076; width:30%; ">
              		<i class="shortcut-icon icon-wrench" style="font-size:60px;"></i>
              		<span class="shortcut-label" style="font-size:18px">관리</span> 
              	</a>
              	<a href="javascript:;" class="shortcut" style="background: #c7b7d5; width:30%; ">
              		<i class="shortcut-icon icon-cogs" style="font-size:60px;"></i>
              		<span class="shortcut-label" style="font-size:18px">설정</span> 
              	</a>
              	<a href="javascript:;" class="shortcut" style="background: #7da51c; width:30%; ">
              		<i class="shortcut-icon icon-list-alt" style="font-size:60px;"></i>
              		<span class="shortcut-label" style="font-size:18px">관리자 페이지</span> 
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