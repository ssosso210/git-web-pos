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
	<link	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"	rel="stylesheet">
	<link href="/dobbywebpos/resources/css/style.css" rel="stylesheet" type="text/css">
	<link href="/dobbywebpos/resources/css/pages/signin.css" rel="stylesheet" type="text/css">
	<link href="/dobbywebpos/resources/css/pages/dashboard.css" rel="stylesheet">
<!-- <link rel="Stylesheet" href="/dobbywebpos/resources/styles/default.css" />
<link rel="Stylesheet" href="/dobbywebpos/resources/styles/main.css" /> -->
</head>


<script type="text/javascript">
   
   

	
</script>


<body>

<div id="wrap">

		<c:import url="/WEB-INF/views/include/posheader.jsp" />
<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
	    <div class="span12">
	    <!-- /widget -->
          <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>근태 목록</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                  	<th class="td-actions"> 번호 </th>
                    <th> 직원 이름 </th>
                    <th> 근무일 </th>
                    <th> 출근시간 </th>
                    <th> 퇴근시간 </th>
                    
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="attendance" items="${ attendances }">	
                  <tr>
                  	<td class="td-actions">${attendance.attendanceNo }</td>
                    <td> ${attendance.employeeone.employeeName }</td>
                    <td> <fmt:formatDate value="${attendance.startWork }" pattern="yyyy-MM-dd"/></td>
                    <td> <fmt:formatDate value="${attendance.startWork }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    <%-- <td> <fmt:formatDate value="${attendance.endWork }" pattern="yyyy-MM-dd (a) hh:mm:ss"/></td> --%>
                    <td> <fmt:formatDate value="${attendance.endWork }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    
                  </tr>
                  </c:forEach>
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
<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script> 
<script src="/dobbywebpos/resources/jsui/excanvas.min.js"></script> 
<script src="/dobbywebpos/resources/jsui/chart.min.js" type="text/javascript"></script> 
<script src="/dobbywebpos/resources/jsui/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="/dobbywebpos/resources/jsui/full-calendar/fullcalendar.min.js"></script>
 
<!-- <script src="js/base.js"></script>  -->
			
</body>
</html>