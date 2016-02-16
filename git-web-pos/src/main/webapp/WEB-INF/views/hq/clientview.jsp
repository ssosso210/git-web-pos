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
    <link href="/dobbywebpos/resources/css/style.css" rel="stylesheet">
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
            
            
			          
</script>
          

<script type="text/javascript">

$(function() {
		
		$(document).ready(function() {
			$("#editconfirm").hide();
			$(".clientedit").attr("readonly", true);
			//$("#storeregisteraddress").attr("disabled", true);
			$("#address").unbind("click");
			$("#delete").hide();
			$("#cancel2").hide();
		});
	
		$("#edit").on("click", function() {
			$("#address").bind("click");
			$(".clientedit").attr("readonly", false);
			$("#clientName").attr("readonly", true);
			$("#edit").hide();
			$("#delete").show();
			$("#editconfirm").show();
			$("#cancel").hide();
			$("#cancel2").show();
			$("#address").on("click", function(event) {
				var address = $("#address").val();
				address = map();
			});
			$("#cancel2").on("click", function(event) {
				$("#editconfirm").hide();
				$(".clientedit").attr("readonly", true);				
				$("#address").unbind("click");
				$("#delete").hide();
				$("#cancel2").hide();
				$("#cancel").show();
				$("#edit").show();				
			});
		});
			
			$("#storeCode").autocomplete({
				source : function(request, response) {
					$.ajax({
						url : "/dobbywebpos/hq/storecodelist.action",
						type : "GET",
						async : true,
						//dataType : "json",
						data : { storecode : request.term },
						success : function(data) {												
								eval("var list = " + data);
								var r = [];
								$.each(list, function(index, value) {
									r.push({label : value, value : value });							
								});
								response(r);							 							
					       },				       
					    error : function(error) {
					    	console.log(error);
					    }
					});
				}
				
			}); 
			
			
			$("#storeName").autocomplete({
				source : function(request, response) {
					var input = $("#storeName").val();				
					$.ajax({
						url : "/dobbywebpos/hq/storenamelist.action",
						type : "GET",					
						async : true,					
						data : { storename : input },					
						success : function(data) {
								//console.dir(data);							
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
					});
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
			
		
		
			//$("#edit").val("수정확인");
			$("#editconfirm").on("click", function(event) {
				var params = $("#clienteditinfo").serialize();	
				console.dir(params);
				/*
				var temp = "";
				$.each(params, function(index, data) {//each 함수는 배열을 순회하면서 function 호출(반복문의 일종)
					//alert(data.name + "/" + data.value);
					temp += data.name + "/" + data.value + "\r\n";
				});
				alert(temp); */
				$.ajax({
					url : "/dobbywebpos/hq/clientedit.action",
					type : "POST",
					async : true,
					data : params,
					success : function(data, status, xhr) {
						eval("client = " + decodeURIComponent(data));
						alert("정보가 수정되었습니다.");
						$("#clientName").html(client.clientName);
						$("#businessRegistrationNumber").html(client.businessRegistrationNumber);
						$("#managerName").html(clinet.managerName);
						$("#clientPhoneNo").html(client.clientPhoneNo);
						$("#email").html(client.email);
						$("#address").html(client.address);
						
						$(".clientedit").attr("readonly", true);						
						$("#address").unbind("click");
						$("#delete").hide();
						$("#edit").show();
						$("#editconfirm").hide();
						
						
					},
					error : function(xhr, status, data) {
						alert(error)
					}
					/* complete: function(){ //A function to be called when the request finishes (after success and error callbacks are executed) - from jquery docs
						   //do smth if you need
						   document.location.reload(); 
						 } */
					
				}); 
				
			});
			
			$("#delete").on("click", function(event) {
				if (confirm("삭제하시겠습니까?")) {
				var param = $("#clientName").val();
				location.href="/dobbywebpos/hq/clientdelete.action?clientname=" + param;
				
				}
			}); 
			
			
			
			
		});

var address = $("#address").val();
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
         document.getElementById('storeregisteraddress').value = fullRoadAddr;
       

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
      <div id="pageContainer">	
			
		
		<div class="right-side" style="padding-top:25px;text-align:center">
		<div class="widget widget-table action-table">
		<div class="widget-header" style="font-size: 15pt"><spring:message code="hq.clientInfo" /></div>
		<br /><br />
		<div class="widget-content">
				<div class="tab-content">
		        <form id="clienteditinfo" action="clientregister.action" method="post"><!-- 상대경로표시 -->
		        <table class="table table-striped table-bordered" style="margin: 0 auto;border: 1px grey;font-size: 20pt;width: 60%;border-radius: 4px">
		             <tr style="border-radius: 4px">
		                <th style="background-color: #999999;font-size: 20pt;border-radius: 4px"><spring:message code="hq.clientmanagement.name" /></th>
		                <td style="border-radius: 4px">		                    
		                    <input type="text" id="clientName" class="clientedit" name="clientName" value="${ client.clientName }" style="width:450px;font-size: 20pt;float: left;border-radius: 4px" />		                    
		                </td>
		            </tr>
		            <tr>
		                <th style="background-color: #999999;font-size: 20pt"><spring:message code="hq.clientmanagement.number" /></th>
		                <td>
		                    
		                    <input type="text" id="businessRegistrationNumber" class="clientedit" name="businessRegistrationNumber" value="${ client.businessRegistrationNumber }" style="width:450px;font-size: 20pt;float: left;border-radius: 4px" />
		                    <div id="businessnumberchecked" style="font-size: 20pt;width: 0;overflow: visible;float: right;word-break: keep-all"></div>
		                </td>
		            </tr>
		            <tr>
		                <th style="background-color: #999999;font-size: 20pt"><spring:message code="hq.clientmanagement.phoneNo" /></th>
		                <td>
		                	<input type="text" id="clientPhoneNo" class="clientedit" name="clientPhoneNo" value="${ client.clientPhoneNo }" style="width:450px;font-size: 20pt;float: left;border-radius: 4px" />
		                </td>
		            </tr>		           
		            <tr>
		                <th style="background-color: #999999;font-size: 20pt"><spring:message code="hq.clientmanagement.email" /></th>
		                <td>
		                	<input type="text" id="email" class="clientedit" name="email" value="${ client.email }" style="width:450px;font-size: 20pt;float: left;border-radius: 4px"" />
		                </td>
		            </tr>
		            <tr>
		                <th style="background-color: #999999;font-size: 20pt"><spring:message code="hq.clientmanagement.address" /></th>
		                <td>
		                	<input type="search" class="clientedit" id="address" value="${ client.address }" name="address" style="width:450px;font-size: 20pt;float: left;border-radius: 4px" />		                	
		                </td>
		            </tr>		            
		        </table>
		        <div class="buttons">
		        	<input type="button" value="수정" id="edit" style="height:40px;font-size: 20pt;margin-top: 15px;border-radius: 4px" />
		        	<input type="button" value="수정확인" id="editconfirm" style="height:40px;font-size: 20pt;margin-top: 15px;border-radius: 4px" />
		        	<input type="button" value="삭제" id="delete" style="height:40px;font-size: 20pt;margin-top: 15px;border-radius: 4px" />
		        	<input type="button" value="취소" id="cancel2" style="height:40px;font-size: 20pt;margin-top: 15px;border-radius: 4px" />
		        	<input type="button" value="취소" id="cancel" style="height:40px;font-size: 20pt;margin-top: 15px;border-radius: 4px"
		        		onclick="location.href='/dobbywebpos/hq/clientmanagement.action';" />
		        </div>
		        </form>
		    </div>
		    </div>
		    </div>
		    </div>
		    
		
			
	</div>
	



</body>
</html>