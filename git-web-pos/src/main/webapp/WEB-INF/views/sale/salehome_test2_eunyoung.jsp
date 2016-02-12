<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>

<html>
<meta charset="utf-8">
<title>Sale Home</title>
    <meta name="viewport"	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
<link href="/dobbywebpos/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="/dobbywebpos/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="/dobbywebpos/resources/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
	<link href="/dobbywebpos/resources/css/font-awesome.css" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"	rel="stylesheet">
	<link href="/dobbywebpos/resources/css/style.css" rel="stylesheet" type="text/css">
	<link href="/dobbywebpos/resources/css/pages/signin.css" rel="stylesheet" type="text/css"> 
	<link href="/dobbywebpos/resources/css/pages/dashboard.css" rel="stylesheet">
	
	<link rel="Stylesheet" href="/dobbywebpos/resources/styles/main.css" />
	<link rel="Stylesheet" href="/dobbywebpos/resources/styles/input.css" /> 
	<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script>
<!-- <script src="//code.jquery.com/jquery-1.12.0.js"></script> -->
<script type="text/javascript">

function setOrder(tableNo, order) {
	//$('#choosetable' + tableNo).find('order-detail').html(order[0].price);
	var d = $('#choosetable' + tableNo).find('span[id=order-detail]');
	d.text(order[0].price);
	alert(order[0].price);
}
  
$(function() {
	   var tNo = $("#totalno").text();
	   $("div[id^=choosetable]").each(function(index,value) {
		   var myWindow;
		   $(this).on("click", function() {
			   //var totalno= $("#totalno"+index).val();
			   var totalno = $("#totalno"+index).text().split(':')[1].trim();
			   myWindow = window.open("/dobbywebpos/sale/orderhome_test?totalno="+totalno, "myWindow", "width=1200, height=550, left=20, top=20, menubar=no, toolbar=no, location=no, status=no, resizable=yes");
		   });
			/* function table_pos() { // 주문하기 팝업창
				var totalno= $("#totalno"+index).val();
				myWindow = window.open("../sale/orderhome_test?totalno="+totalno, "myWindow", "width=1200, height=550, left=20, top=20, menubar=no, toolbar=no, location=no, status=no, resizable=yes");
			}   */
	   });
	   
});
   
</script>
<body>
	
	<c:import url="/WEB-INF/views/include/posheadertitle.jsp" />
	
		
<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">			
        <div class="span12">
          <div class="widget">
 		<div class="widget-content" style="border:0px;">
              <div class="shortcuts" style="width: 1200px;"> 
		<c:forEach begin="0" varStatus="status" end="${recentno}" step="1" var="st" items="${st}">

		
		
			<!-- <a href="#" class="shortcut" style="background: #7ddb9c; width:23%; "> -->
             	

			<div id="choosetable${ status.index }" class="shortcut" style="background: #7ddb9c; width:15%;cursor: pointer; "> 
				<span id="totalno${ status.index }">고유값: ${st.getTotalTableNo() }</span> <br/>
				<span>테이블번호: ${st.getTableNo() }</span><br/>
				<span>매장코드: ${st.getStoreCode() }</span><br/>
				<span id='order-detail'></span>
							
				<!-- <a  style="width: 200px; height: 100px; left: 500; top: 300"  onclick="table_pos()">[주문누르셈]</a>
				
				<a type="button" style="width: 200px; height: 100px; left: 500; top: 300" onclick="pay_pos()"/>판매</a>			 -->
			</div> 
			<!-- </a>  -->
			
			<!-- <br /> -->
		</c:forEach>
		</div>
		</div>
		</div>
          <!-- /widget -->
         </div>
         <!-- /span6 -->
	  </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /main-inner --> 
</div>
<!-- /main -->	

	<!-- </div> -->
</body>
</html>