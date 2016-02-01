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
   

</script>


<body>
<div id="wrap">
<c:import url="/WEB-INF/views/include/posheader.jsp" />
<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
	       <div class="span12">
	          <div class="widget">
	            <div class="widget-header"> <i class="icon-bookmark"></i>
	              <h3>직원 목록</h3>
	            </div>
	            <!-- /widget-header -->
	            <div class="widget-content">
	              <div class="shortcuts"> 
	              <a href="javascript:;" class="shortcut">
	              	<i class="shortcut-icon icon-list-alt"></i>
	              	<span class="shortcut-label">Apps</span> 
	              </a>
	              <a href="javascript:;" class="shortcut">
	              	<i class="shortcut-icon icon-bookmark"></i>
	              	<span class="shortcut-label">Bookmarks</span> 
	              </a>
	              <a href="javascript:;" class="shortcut">
	              	<i class="shortcut-icon icon-signal"></i> 
	              	<span class="shortcut-label">Reports</span> 
	              </a>
	              <a href="javascript:;" class="shortcut"> 
	              	<i class="shortcut-icon icon-comment"></i>
	              	<span class="shortcut-label">Comments</span> 
	              </a>
	              <a href="javascript:;" class="shortcut">
	              	<i class="shortcut-icon icon-user"></i>
	              	<span class="shortcut-label">Users</span> 
	              </a>
	              <a href="javascript:;" class="shortcut">
	              	<i class="shortcut-icon icon-file"></i>
	              	<span class="shortcut-label">Notes</span> 
	              </a>
	              <a href="javascript:;" class="shortcut">
	              	<i class="shortcut-icon icon-picture"></i> 
	              	<span class="shortcut-label">Photos</span> 
	              </a>
	              <a href="javascript:;" class="shortcut"> 
	              	<i class="shortcut-icon icon-tag"></i>
	              	<span class="shortcut-label">Tags</span> 
	              </a> 
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
	              <a href="javascript:;" class="shortcut">
	              	<i class="shortcut-icon icon-list-alt"></i>
	              	<span class="shortcut-label">Apps</span> 
	              </a>
	              <a href="javascript:;" class="shortcut">
	              	<i class="shortcut-icon icon-bookmark"></i>
	              	<span class="shortcut-label">Bookmarks</span> 
	              </a>
	              <a href="javascript:;" class="shortcut">
	              	<i class="shortcut-icon icon-signal"></i> 
	              	<span class="shortcut-label">Reports</span> 
	              </a>
	              <a href="javascript:;" class="shortcut"> 
	              	<i class="shortcut-icon icon-comment"></i>
	              	<span class="shortcut-label">Comments</span> 
	              </a>
	              <a href="javascript:;" class="shortcut">
	              	<i class="shortcut-icon icon-user"></i>
	              	<span class="shortcut-label">Users</span> 
	              </a>
	              <a href="javascript:;" class="shortcut">
	              	<i class="shortcut-icon icon-file"></i>
	              	<span class="shortcut-label">Notes</span> 
	              </a>
	              <a href="javascript:;" class="shortcut">
	              	<i class="shortcut-icon icon-picture"></i> 
	              	<span class="shortcut-label">Photos</span> 
	              </a>
	              <a href="javascript:;" class="shortcut"> 
	              	<i class="shortcut-icon icon-tag"></i>
	              	<span class="shortcut-label">Tags</span> 
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
		
<!-- Placed at the end of the document so the pages load faster --> 
<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script> 
<script src="/dobbywebpos/resources/jsui/excanvas.min.js"></script> 
<script src="/dobbywebpos/resources/jsui/chart.min.js" type="text/javascript"></script> 
<script src="/dobbywebpos/resources/jsui/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="/dobbywebpos/resources/jsui/full-calendar/fullcalendar.min.js"></script>
 
<script src="js/base.js"></script> 
<script>     

        var lineChartData = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [
				{
				    fillColor: "rgba(220,220,220,0.5)",
				    strokeColor: "rgba(220,220,220,1)",
				    pointColor: "rgba(220,220,220,1)",
				    pointStrokeColor: "#fff",
				    data: [65, 59, 90, 81, 56, 55, 40]
				},
				{
				    fillColor: "rgba(151,187,205,0.5)",
				    strokeColor: "rgba(151,187,205,1)",
				    pointColor: "rgba(151,187,205,1)",
				    pointStrokeColor: "#fff",
				    data: [28, 48, 40, 19, 96, 27, 100]
				}
			]

        }

        var myLine = new Chart(document.getElementById("area-chart").getContext("2d")).Line(lineChartData);


        var barChartData = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [
				{
				    fillColor: "rgba(220,220,220,0.5)",
				    strokeColor: "rgba(220,220,220,1)",
				    data: [65, 59, 90, 81, 56, 55, 40]
				},
				{
				    fillColor: "rgba(151,187,205,0.5)",
				    strokeColor: "rgba(151,187,205,1)",
				    data: [28, 48, 40, 19, 96, 27, 100]
				}
			]

        }    

        $(document).ready(function() {
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();
        var calendar = $('#calendar').fullCalendar({
          header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
          },
          selectable: true,
          selectHelper: true,
          select: function(start, end, allDay) {
            var title = prompt('Event Title:');
            if (title) {
              calendar.fullCalendar('renderEvent',
                {
                  title: title,
                  start: start,
                  end: end,
                  allDay: allDay
                },
                true // make the event "stick"
              );
            }
            calendar.fullCalendar('unselect');
          },
          editable: true,
          events: [
            {
              title: 'All Day Event',
              start: new Date(y, m, 1)
            },
            {
              title: 'Long Event',
              start: new Date(y, m, d+5),
              end: new Date(y, m, d+7)
            },
            {
              id: 999,
              title: 'Repeating Event',
              start: new Date(y, m, d-3, 16, 0),
              allDay: false
            },
            {
              id: 999,
              title: 'Repeating Event',
              start: new Date(y, m, d+4, 16, 0),
              allDay: false
            },
            {
              title: 'Meeting',
              start: new Date(y, m, d, 10, 30),
              allDay: false
            },
            {
              title: 'Lunch',
              start: new Date(y, m, d, 12, 0),
              end: new Date(y, m, d, 14, 0),
              allDay: false
            },
            {
              title: 'Birthday Party',
              start: new Date(y, m, d+1, 19, 0),
              end: new Date(y, m, d+1, 22, 30),
              allDay: false
            },
            {
              title: 'EGrappler.com',
              start: new Date(y, m, 28),
              end: new Date(y, m, 29),
              url: 'http://EGrappler.com/'
            }
          ]
        });
      });
    </script><!-- /Calendar -->					
</body>
</html>