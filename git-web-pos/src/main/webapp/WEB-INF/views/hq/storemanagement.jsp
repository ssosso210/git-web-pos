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
            
            
			/* $(function() {
            	
            	$("#store").on("click", function(event) {
            		$("#management").load("data2.html");
            		
            	});
            	
            }); */
            
            
            
</script>
<script type="text/javascript">
           // Chart.defaults.global.responsive = true;
            
            
            
</script>
      </head>
      <body class="skin-black">

      <c:import url="/WEB-INF/views/include/hqHeader.jsp" />
      <div id="pageContainer">	
			
		
		<div class="right-side" style="padding-top:25px;text-align:center">
			<c:url var="writeform" value="/hq/storeregisterform.action" />
			[ <a href="${ writeform }"><spring:message code="hq.storemanagement.join" /></a> ]
			<br /><br />

			<table border="1" style="width:1000px" align="center">
				<tr style="background-color:#999999;height:30px">
					<th style="width:40px;text-align:center"><spring:message code="hq.storemanagement.code" /></th>
					<th style="width:70px;text-align:center"><spring:message code="hq.storemanagement.name" /></th>
					<th style="width:50px;text-align:center"><spring:message code="hq.storemanagement.managerName" /></th>
					<th style="width:70px;text-align:center"><spring:message code="hq.storemanagement.phoneNo" /></th>
					<th style="width:70px;text-align:center"><spring:message code="hq.storemanagement.email" /></th>
					<th style="width:150px;text-align:center"><spring:message code="hq.storemanagement.address" /></th>
				</tr>
				
				<c:forEach var="store" items="${ stores }">
				<tr style="height:30px">
					<td>${ store.storeCode }</td>
					<td style="text-align:left;padding-left:10px">
						<c:url var="view" value="view.action">
							<c:param name="storename" value="${ store.storeName }" />
						</c:url>
						<a href='${ view }'>${ store.storeName }</a>
					</td>
					<td>${ store.managerName }</td>
					<td>${ store.phoneNo }</td>
					<td>${ store.email }</td>
					<td>${ store.address }</td>					
				</tr>
				</c:forEach>
				
			</table>
			<br /><br /><br /><br />
		
		</div>
		
	</div>



</body>
</html>