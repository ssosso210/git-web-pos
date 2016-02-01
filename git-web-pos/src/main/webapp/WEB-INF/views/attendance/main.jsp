<%@ page import="com.dobbypos.model.dto.Employee"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<title>근태</title>
	<meta name="viewport"	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<link href="/dobbywebpos/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="/dobbywebpos/resources/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
	<link href="/dobbywebpos/resources/css/font-awesome.css" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"	rel="stylesheet">
	<link href="/dobbywebpos/resources/css/style.css" rel="stylesheet" type="text/css">
	<link href="/dobbywebpos/resources/css/pages/signin.css" rel="stylesheet" type="text/css">
	<link href="/dobbywebpos/resources/css/pages/dashboard.css" rel="stylesheet">
</head>

<script type="text/javascript">
function employeeAttendSetting(emName, emNo) 
{	
	$("#employeeName").val(emName);
	$("#employeeNo").val(emNo);
	//alert($("#startem"+emNo).text()+', ' +$("#employee"+emNo).text() );
}

function employeeAttend(attendType){ //attendType --> 축근 : towork, 퇴근 : offwork 
	alert($("#employeeName").val()+"씨 "+ attendType);
	$("#attendType").val(attendType);
	$.ajax({
		url : "/dobbywebpos/attendance/attendcheck.action",
		type : "POST",
		async : true,
		dataType : "json", //응답 데이터의 형식
		data : {attendType : $("#attendType").val(), employeeNo : $("#employeeNo").val() },
		success : function(data) {
			alert(data.date);
			if(data.attendType == 'towork'){
				$("#startem"+data.employeeNo).text(data.buttonVal);
			}
		},
		error : function( error) {
			alert('fail to attend '+ error.toString());
		}
	});
}

</script>
<body>

<div id="wrap">
<c:import url="/WEB-INF/views/include/posheader.jsp" />
<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
	    <div class="span12">
       		<div class="widget widget-plain">
				<div class="widget-content">
					<a href="/dobbywebpos/attendance/list.action" class="btn btn-large btn-success btn-support-ask">출근 목록</a>	
				</div> <!-- /widget-content -->
			</div> <!-- /widget -->
	          <div class="widget">
	            <div class="widget-header"> <i class="icon-bookmark"></i>
	              <h3>직원 목록</h3>
	            </div>
	             <!-- /widget-header -->
			      <div class="widget-content">
			      	 <div class="shortcuts"> 
	            <c:choose>
            		<c:when test="${ empty employees }">
            		직원이 없습니다. 
            		</c:when>
            		<c:otherwise>
			            <c:forEach var="employee" items="${ employees }">	
			              <a href="javascript:employeeAttendSetting('${ employee.employeeName}',${ employee.employeeNo});" id="employee${employee.employeeNo}" class="shortcut">
			              	<span class="shortcut-label" >${ employee.employeeName}
			              		<div id="startem${ employee.employeeNo}" >출근 : _______________</div>
			              		<div id="endem${ employee.employeeNo}" >퇴근 : _______________</div>
			              	</span> 
			              </a>
			            </c:forEach>
	            	</c:otherwise>
            	</c:choose>
            		</div>
			         <!-- /shortcuts --> 
           	    </div>
		        <!-- /widget-content --> 
	          </div>
	          <!-- /widget -->
	          <div class="widget">
	            <div class="widget-header"> <i class="icon-bookmark"></i>
	              <h3>근태 버튼</h3>
	            </div>
	            <!-- /widget-header -->
	            <div class="widget-content">
	              <div class="shortcuts"> 
	              <a href="javascript:employeeAttend('towork');" class="shortcut">
	              	<i class="shortcut-icon icon-list-alt"></i>
	              	<span class="shortcut-label">출근</span> 
	              </a>
	              <a href="javascript:employeeAttend('offwork');" class="shortcut">
	              	<i class="shortcut-icon icon-bookmark"></i>
	              	<span class="shortcut-label">조퇴</span> 
	              </a>
	              <a href="javascript:employeeAttend('offwork');" class="shortcut">
	              	<i class="shortcut-icon icon-signal"></i> 
	              	<span class="shortcut-label">퇴근</span> 
	              </a>
	             </div>
	             <!-- /shortcuts --> 
	            </div>
	            <!-- /widget-content --> 
	          </div>
	          <!-- /widget -->
          </div>
          <!-- /span -->
		</div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /main-inner --> 
</div>
<!-- /main -->
</div>


	<input type="hidden" id="employeeName" name="employeeName" value=""/>
	<input type="hidden" id="employeeNo" name="employeeNo" value=""/>
	<input type="hidden" id="attendType" name="attendType" value=""/>


<!-- Placed at the end of the document so the pages load faster --> 
<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script>
<script src="/dobbywebpos/resources/jsui/excanvas.min.js"></script> 
<script src="/dobbywebpos/resources/jsui/chart.min.js" type="text/javascript"></script> 
<script src="/dobbywebpos/resources/jsui/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="/dobbywebpos/resources/jsui/full-calendar/fullcalendar.min.js"></script>
 
<!-- <script src="js/base.js"></script>  -->
				
</body>
</html>