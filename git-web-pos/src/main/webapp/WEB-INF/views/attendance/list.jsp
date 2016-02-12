<%@ page import="com.dobbypos.model.dto.Employee"%>
<%@ page import="com.dobbypos.model.dto.Attendance"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
 <!--      <script src="http://code.jquery.com/jquery-1.10.2.js"></script> -->
      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      
<script type="text/javascript">
$(function() {
    $( "#datepicker-start" ).datepicker({
       dateFormat:"yy-mm-dd",
    });
    $( "#datepicker-end" ).datepicker({
        dateFormat:"yy-mm-dd",
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
	    <div class="span12">
	      <div class="widget " >
		   <!-- <div class="widget-content">  -->
		  	<form id="edit-profile" class="form-horizontal" 
		  		action="/dobbywebpos/attendance/searchlist.action" method="post">
		  		<p>
		  			Search Date :  
		  			<input type="text" id="datepicker-start" name="datepicker-start" value="${startdatestr }"> ~ 
		  			<input type="text" id="datepicker-end" name="datepicker-end" value="${enddatestr }">
		  			<input type="submit" class="btn"   value="Search"/>
		  		</p>
		  		
		  		<!-- 
		  		13개씩 뿌려주기 
		  		<fieldset>
										
					<div class="control-group">											
						<label class="control-label" for="username">Year </label>
						<div class="controls">
							<select id="year_select" class="year_select" name="year_select">
							  <option value="2016" selected="selected">2016</option>
							  <option value="2015">2015</option>
							</select>
						</div> /controls				
					</div> /control-group
					
					
					<div class="control-group">											
						<label class="control-label" for="firstname">Month</label>
						<div class="controls">
							<select id="month_select" class="month_select" name="month_select">
							  <option value="01" >01</option>
							  <option value="02" selected="selected">02</option>
							  <option value="03">03</option>
							  <option value="04">04</option>
							  <option value="05">05</option>
							  <option value="06">06</option>
							  <option value="07">07</option>
							  <option value="08">08</option>
							  <option value="09">09</option>
							  <option value="10">10</option>
							  <option value="11">11</option>
							  <option value="12">12</option>
							</select>
							
							
							<input class="btn btn-large" type="submit" value="Search" />
							<a class="btn btn-large" href="#"> Search</a>
						</div> /controls				
					</div> /control-group
					</fieldset> -->
		  	</form>
		  		
		  
		 <!--  </div> --> <!-- /widget-content -->
		</div> <!-- /widget -->	
						
	    
	    
	    <!-- /widget -->
          <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>근태 목록  </h3>
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
		                    <td> 
		                    	<c:url value="/management/view.action" var="viewUrl"> <c:param name="employeeNo" value="${attendance.employeeone.employeeNo }" /></c:url>
		                    	<a href="${ viewUrl }">${attendance.employeeone.employeeName }</a>
		                    </td>
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
<script src="/dobbywebpos/resources/jsui/chart.min.js" type="text/javascript"></script> 
<script src="/dobbywebpos/resources/jsui/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="/dobbywebpos/resources/jsui/full-calendar/fullcalendar.min.js"></script>
 
<!-- <script src="js/base.js"></script>  -->
			
</body>
</html>