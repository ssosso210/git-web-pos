<%@ page import="com.dobbypos.model.dto.Employee"%>
<%@ page import="com.dobbypos.model.dto.Attendance"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
	<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script> 
	<link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
	<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<style type="text/css">
#datepicker-month {
	width: 60px;
}
#btn_monthpicker {
	background: url('/dobbywebpos/resources/img/monthpicker/datepicker.png');
	border: 0;
	height: 24px;
	overflow: hieen;
	text-indent: 999;
	width: 24px;
}

</style>
<script type="text/javascript">
$(function() {
    $( "#datepicker-month" ).monthpicker({
        dateFormat:"yy-mm",
         Button: false ,
     });
 });
</script>
</head>
<body>

<div id="wrap">

<c:import url="/WEB-INF/views/include/posheader.jsp" />

<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
        <div class="span6">
          <div class="widget" >
		    <div class="widget-content" style="height: 100px;">  
		  	<form id="edit-profile" class="form-horizontal" 
		  		action="/dobbywebpos/attendance/searchemployeelist.action" method="post">
		  		<p>
		  			직원 선택 
		  			<select id="employee_select" class="employee_select" name="employee_select">
		  				<c:forEach var="employee" items="${employees}">
		  					<c:choose>
					           <c:when test="${employee.employeeNo == selectEmployee.employeeNo}">
					           	<option value="${employee.employeeNo}" selected="selected" > ${employee.employeeName}</option>
					           </c:when>
					           <c:otherwise>
					           	<option value="${employee.employeeNo}" > ${employee.employeeName}</option>
					           </c:otherwise>
					        </c:choose>
		  				</c:forEach>
					</select>
		  		</p>
		  		<p>
		  			searchMonth :  
		  			<input type="text" id="datepicker-month" name="datepicker-month" value="${dateMonth}"> 
		  			<input type="button" id="btn_monthpicker" value="" />
		  			<script type="text/javascript" src="/dobbywebpos/resources/jsui/monthpicker/jquery.mtz.monthpicker.js"></script>
					<script>
						/* MonthPicker 옵션 */
						options = {
							pattern: 'yyyy-mm', // Default is 'mm/yyyy' and separator char is not mandatory
							selectedYear: 2014,
							startYear: 2008,
							finalYear: 2018,
							monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
						};
						
						/* MonthPicker Set */
						$('#datepicker-month').monthpicker(options);
						
						/* 버튼 클릭시 MonthPicker Show */
						$('#btn_monthpicker').bind('click', function () {
							$('#datepicker-month').monthpicker('show');
						});
						
						/* MonthPicker 선택 이벤트 */
						/* $('#datepicker-month').monthpicker().bind('monthpicker-click-month', function (e, month) {
							alert("선택하신 월은 : " + month + "월");
						}); */
					</script>
				<span style="float: right;">
		  			<input type="submit" class="btn" value="Search" />
		  			</span>
		  		</p>
		  		
		  		
		  	</form>
		  		
		  
		    </div>  <!-- /widget-content -->
		  </div> <!-- /widget -->	
        </div> <!-- /span6 -->
         
        <div class="span6">
        <!-- /widget -->
          <div class="widget widget-table action-table">
           <!--  <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>   </h3>
            </div> -->
            <!-- /widget-header -->
            <div class="widget-content">
              <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                  	
                    <th> 구분 </th>
                    <th> 날짜 </th>
                    
                  </tr>
                </thead>
                <tbody>
		           <tr> 	
	                    <td> 근무 일수 </td>
	                    <td> ${totalworkday}일 </td> 
		           </tr>
		           <tr> 	
	                    <td> 근무 시간 </td>
	                    <td> ${totalworktime} </td> 
		           </tr>
		           <tr> 	
	                    <td> 총 급여액 </td>
	                    <td> ${workwage} </td> 
		           </tr>
                </tbody>
              </table>
            </div>
            <!-- /widget-content --> 
          </div>
<!-- /widget -->
         
         
        </div>
         <!-- /span6 -->
      
      
	    <div class="span12">
	     
						
	    
	    
	    <!-- /widget -->
          <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3> 근태 목록  </h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                  	<th class="td-actions"> 번호 </th>
                    <th> 직원 이름 </th>
                    <th> 근무일 </th>
                    <th> 출근 시간 </th>
                    <th> 퇴근 시간 </th>
                    <th> 일한 시간 </th>
                    
                  </tr>
                </thead>
                <tbody>
                <c:choose>
		           <c:when test="${ empty attendances}">
		           <tr>
		           		<td colspan="6" style="text-align: center; height: 300px;"> data가 없습니다. </td>
		           		
		           </tr>
		           </c:when>
		           <c:otherwise>
			           	<c:forEach var="attendance" items="${ attendances }">	
		                  <tr>
		                  	<td class="td-actions">${attendance.attendanceNo }</td>
		                    <td> ${selectEmployee.employeeName }</td>
		                    <td> <fmt:formatDate value="${attendance.startWork }" pattern="yyyy-MM-dd"/></td>
		                    <td> <fmt:formatDate value="${attendance.startWork }" pattern="HH:mm"/></td>
		                   <c:choose>
					           <c:when test="${  attendance.startWork == attendance.endWork}">
					           	<td></td>
					           	<td></td>
					           </c:when>
					           <c:otherwise>
					           	<td> <fmt:formatDate value="${attendance.endWork }" pattern="HH:mm"/></td>
					           	<td>${attendance.workTime}</td>
					           </c:otherwise>
					       </c:choose>
		                  </tr>
	                  </c:forEach>
		           </c:otherwise>
		        </c:choose>
			           
                </tbody>
              </table>
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
		
<!-- Placed at the end of the document so the pages load faster --> 

<script src="/dobbywebpos/resources/jsui/excanvas.min.js"></script> 
<script src="/dobbywebpos/resources/jsui/bootstrap.js"></script>

 
<!-- <script src="js/base.js"></script>  -->
			
</body>
</html>