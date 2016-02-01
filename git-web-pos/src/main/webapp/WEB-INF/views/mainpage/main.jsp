<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

				<!-- 윤수가 추가 -->
<!-- ------------------------------------------------------ -->
<script src="//code.jquery.com/jquery-1.12.0.js"></script>
<script type="text/javascript">
   
   
	function order_pos() { // 주문하기 팝업창
		window.open("../sale/orderform.action", "", "width=600, height=500, left=500, top=200");
	}
	
</script>

<!-- ------------------------------------------------------ -->


<body>

	<div id="wrap">

		<c:import url="/WEB-INF/views/include/posheader.jsp" />
		<div id="container">
			<!-- <div id="content">
	        	<br /><br /><br /><br /><br />
	        	<h2 style='text-aling:center'>
					Hello dobby web pos Site Main Page !!!
				</h2>
	        </div> -->


	        <div id="content">
			<br />
			<br />
			<br />
			<br />
			<br />
			<%-- <h2 style='text-aling: center'>
				Hello dobby web pos Site Main Page !!!
				<p>근태/판매/조회/관리/설정 어디에 넣죠?몰랑~ 데헷~ ^0^</p>

				<a>근태</a><br /> <br />
				<a href="sale/salehome_test.action">판매--윤수오빠꺼임</a><br /><br /> 
				<a href="check/checkmain.action">조회</a><br /> <br />
				<a href="management/managementhome">관리</a><br /> <br />
				<a href="settings/settinghome.action">설정</a><br /> <br />

				<!-- 윤수 테스트중 -->
					<a href="sale/salehome.action?storeCode1=${storeCode1}">테이블클릭(주문할거야)</a> <br/>
					
				 	<a>storeCode1:${storeCode1}</a>

			</h2> --%>
			</div>
		</div>
	</div>

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