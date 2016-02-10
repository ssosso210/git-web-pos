<%@page import="com.dobbypos.model.dto.Store"%>
<%@page import="java.util.List"%>
<%@page import="com.dobbypos.model.dao.HqDao"%>
<%@ page language="java" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title><spring:message code="hq.storeManagementTitle" /></title>
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
	<link href="http://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css" />


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
          <![endif]-->

          <style type="text/css">

			* { margin : 0px; padding : 0px; }
        body { background-color : White/* #525252; */ }
        .item {
            margin : 5px;
            width : 100px; height : 100px;
			border: solid;
            backgrouynd-color : White; border-radius : 10px;
            float : left;
        }

        .big { width : 350px; height : 500px; }
        .normal { width : 210px; height : 210px; }
        .small { width : 100px; height : 100px; }
        
       div[id^=big] {
	position: relative;
	background: #88b7d5;
	border: 4px solid #c2e1f5;
}
div[id^=big]:after, #big:before {
	right: 100%;
	top: 20%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
}

div[id^=big]:after {
	border-color: rgba(136, 183, 213, 0);
	border-right-color: #88b7d5;
	border-width: 30px;
	margin-top: -30px;
}
div[id^=big]:before {
	border-color: rgba(194, 225, 245, 0);
	border-right-color: #c2e1f5;
	border-width: 36px;
	margin-top: -36px;
}

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
	$("div[id^=big]").hide();
	
	$("div[id^=menu]").each(function(index, value) {
		var self = $(this);
		
		$(this).on("mouseover", function(event) {
			
			$("#big"+index).show();
			$("#menu"+index).css({
                'filter': 'blur(10px)',
                '-webkit-filter': 'blur(10px)',
                '-moz-filter': 'blur(10px)',
                '-o-filter': 'blur(10px)',
                '-ms-filter': 'blur(10px)'
            });
			
			
		});
		
		$(this).on("mouseout", function(event) {
			
			$("#big"+index).hide();
			$("#menu"+index).css({
                'filter': 'blur(0px)',
                '-webkit-filter': 'blur(0px)',
                '-moz-filter': 'blur(0px)',
                '-o-filter': 'blur(0px)',
                '-ms-filter': 'blur(0px)',
                'position': 'relative'
            });
			
		});
		
	});
	
});
</script>
      </head>
      <body class="skin-black">

      <c:import url="/WEB-INF/views/include/hqHeader.jsp" />
      
		<!--  <div id="pageContainer">	 -->	
		
		<div class="right-side" style="padding-top:25px;text-align:center">
			
	
	<c:forEach begin="0" varStatus="status" var="menu" items="${ menus }">		
					
    <div id = "masonry_container">
    	
        <div id="menu${ status.index }" class = "item normal" style="display: inline-block;">
        	<img alt="" src="/dobbywebpos/resources/uploadfiles/${ menu.savedFileName }" style="width : 200px; height : 200px;margin-top: 2px;border;display: inline-block;">
        </div>   
                
        <div id="big${ status.index }" class = "item big" style="display: inline-block;position: static;">
        	<img alt="" src="/dobbywebpos/resources/uploadfiles/${ menu.savedFileName }" style="width : 300px; height : 300px;margin-top: 2px;border;display: inline-block;">
        	<div><h2><a>${menu.foodName }</a></h2><h3>${menu.menuGroups }</h3><h3>${menu.foodPrice }</h3></div>
        </div>
        
    </div>
    
    </c:forEach> 
		
		</div>
		


<script src = "http://masonry.desandro.com/masonry.pkgd.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	//alert("${ path }");
	
    $('#masonry_container').masonry({
        itemSelector : '.item',
        columnWidth : 110
    });
});
            
            
            
</script>

</body>
</html>