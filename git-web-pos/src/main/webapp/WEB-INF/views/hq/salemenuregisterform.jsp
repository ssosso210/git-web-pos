<%@page import="com.dobbypos.model.dto.Client"%>
<%@page import="java.util.List"%>
<%@page import="com.dobbypos.model.dao.HqDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>

<html>
<head>
    <!-- <meta charset="utf-8"> -->
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
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
    <link href="/dobbywebpos/resources/styles/input.css" rel="stylesheet" type="text/css" />
    <link href="/dobbywebpos/resources/styles/input2.css" rel="stylesheet" type="text/css" />
    <link href="/dobbywebpos/resources/styles/default.css" rel="stylesheet" type="text/css" />
	<link href="http://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

          </style>
          <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
          <script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=0b93caf3b7d18b634e4cda80edd41135&libraries=services"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
  <script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
         <!-- jQuery 2.0.2 -->
       <!--  
        <script src="/dobbywebpos/resources/js/jquery.min.js" type="text/javascript"></script> -->

        <!-- jQuery UI 1.10.3 -->
        <!-- <script src="/dobbywebpos/resources/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script> -->
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

$(function() {
	
		$("#clientName").autocomplete({
			source : function(request, response) {
				$.ajax({
					url : "/dobbywebpos/hq/clientnamelist.action",
					type : "GET",
					async : true,
					//dataType : "json",
					data : { clientname : request.term },
					success : function(data) {			
							
							eval("var list = " + data);
							var r = [];
							$.each(list, function(index, value) {
								r.push({label : decodeURIComponent(value), value : decodeURIComponent(value) });							
							});							
							response(r);							 							
				       },				       
				    error : function(error) {
				    	console.log(error);
				    }
				})
			}
			
		}); 
		
		
		$("#businessRegistrationNumber").on("keyup", function(event){
			var businessRegistrationNumber = $("#businessRegistrationNumber").val();
			if (businessRegistrationNumber.length == 0) {
				$("#businessnumberchecked").html("");
				return;
			}
				//alert(businessRegistrationNumber);
				$.ajax({
					url : "/dobbywebpos/hq/clientbusinessnumber.action",
					type : "GET",					
					async : true,					
					data : { businessnumber : businessRegistrationNumber },					
					success : function(data) {
							console.dir(data);							
							if (data == 'unable') {
								$("#businessnumberchecked").html("<div style='width: 0;overflow: visible;color:red'>&nbsp;&nbsp;사용불가<div>");
								//$("#a").append('<div id="businessnumberchecked" style="color:red;width: 0;overflow: visible;float: right;word-break: keep-all">&nbsp;&nbsp;사용불가</div>');
								 //$('input[type="submit"]').attr('disabled','disabled');
								
							} else {
								$("#businessnumberchecked").html("<div>&nbsp;&nbsp;사용가능<div>");
								//$('input[type="submit"]').attr('abled','abled');
							}

				       },				       
				    error : function(error) {
				    	console.log(error);
				    }
				}) 
			});
			
		
				
		 
	$("#address").on("click", function(event) {
		var address = $("#address").val();
		address = map();
	});
	
	
});

var address = $("#storeregisteraddress").val();
function map(streetTarget) {
    var mapper = new daum.Postcode( {
        oncomplete : function(data) {
            
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수
            
            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                extraRoadAddr += data.bname;
            }

            // 건물명이 있고, 공동주택일 경우 추가한다.
            if (data.buildingName !== ''
                    && data.apartment === 'Y') {
                extraRoadAddr += (extraRoadAddr !== '' ? ', '
                        + data.buildingName : data.buildingName);
            }

            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if (extraRoadAddr !== '') {
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if (fullRoadAddr !== '') {
                fullRoadAddr += extraRoadAddr;
            }

            
            //console.dir(fullRoadAddr);
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
         document.getElementById('address').value = fullRoadAddr;
      
        }
    }).open({
        popupName : "주소검색"      
    	
    });
    
     return mapper;
  }   
       
</script>
      </head>
      <body class="skin-black">

      <c:import url="/WEB-INF/views/include/hqHeader.jsp" />
      <!-- <div id="pageContainer">	
			 -->
		
		<div class="right-side" style="padding-top:25px;text-align:center">
		<div class="account-container register">
	
	<div class="content clearfix">
		
		<form action="#" method="post">
		
			<h1>Signup for Free Account</h1>			
			
			<div class="login-fields">
				
				<p>Create your free account:</p>
				
				<div class="field">
					<label for="firstname">First Name:</label>
					<input type="text" id="firstname" name="firstname" value="" placeholder="First Name" class="login" />
				</div> <!-- /field -->
				
				<div class="field">
					<label for="lastname">Last Name:</label>	
					<input type="text" id="lastname" name="lastname" value="" placeholder="Last Name" class="login" />
				</div> <!-- /field -->
				
				
				<div class="field">
					<label for="email">Email Address:</label>
					<input type="text" id="email" name="email" value="" placeholder="Email" class="login"/>
				</div> <!-- /field -->
				
				<div class="field">
					<label for="password">Password:</label>
					<input type="password" id="password" name="password" value="" placeholder="Password" class="login"/>
				</div> <!-- /field -->
				
				<div class="field">
					<label for="confirm_password">Confirm Password:</label>
					<input type="password" id="confirm_password" name="confirm_password" value="" placeholder="Confirm Password" class="login"/>
				</div> <!-- /field -->
				
			</div> <!-- /login-fields -->
			
			<div class="login-actions">
				
				<span class="login-checkbox">
					<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
					<label class="choice" for="Field">Agree with the Terms & Conditions.</label>
				</span>
									
				<button class="button btn btn-primary btn-large">Register</button>
				
			</div> <!-- .actions -->
			
		</form>
		
	</div> <!-- /content -->
	
</div> <!-- /account-container -->
		
			
	</div>
	



</body>
</html>