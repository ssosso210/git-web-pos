<%@ page import="com.dobbypos.model.dto.Employee"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script>
	<script src="/dobbywebpos/resources/jsui/base.js"></script>

<style>
.opacity_bg_layer {display:none;position:absolute; top:0; left:0; width:100%; height:100%; background:#000; opacity:.5; filter:alpha(opacity=50); z-index:10;}
.layer_pop_center {position:fixed;background:yellowgreen;padding: 10px;z-index:11;}
</style>
<script type="text/javascript">
function employeeAttendSetting(emName, emNo, attendNo, startWork, endWork) 
{	
	$("#employeeName").val(emName);
	$("#employeeNo").val(emNo);
	$("#attendanceNo").val(attendNo);
	$("#attend-employee-name").text("근태 버튼  : "+emName);
	$("#attendStartWork").val(startWork);
	$("#attendEndWork").val(endWork);
	
	
	//alert($("#startem"+emNo).text()+', ' +$("#employee"+emNo).text() );
}
/**
 * ----------------------------------------------------------------- towork, offwork  start
 */
 /* 불투명 배경 레이어 뛰우기 */
 function opacity_bg_layer() {
   if(!$('.opacity_bg_layer').length) {
     $('<div class="opacity_bg_layer"></div>').appendTo($('body'));
   }
   var oj = $(".opacity_bg_layer");
   // 화면의 가로, 세로 알아내기
   var w = $(document).width();
   var h = $(document).height();
   oj.css({'width':w,'height':h}); // 불투명 배경 레이어 크기 설정
   oj.fadeIn(500); // 불투명 배경 레이어 보이기 속도
 }
  
 /* 레이어 생성
 cls : class
 cont : 내용
 기본 : 숨기기
 */
 function layer_pop_crt(cls, cont) {
   if(!cls) return false;
   if(!$(cls).length) {
 	  htmlstr = "";
 	  htmlstr +='<div class="' + cls + '">' + cont + '</div>';
     //$('<div class="' + cls + '">' + cont + '</div>').appendTo($('body'));
     $(htmlstr).appendTo($('body'));
   }
   return true;
 }
  
 /* 레이어 띄우기
 oj : 레이어 객체
 */
 function layer_pop_center(oj) {
   if(!oj.length) return false;
   oj.layer_pop_center_set();
 }
  
 /* 레이어 팝업 위치 설정 */
 $.fn.layer_pop_center_set = function () {
     //this.css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) + $(window).scrollTop()) + "px");
     //this.css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) + $(window).scrollLeft()) + "px");
     this.css("top", ($(window).height() - $(this).outerHeight())/2);
    this.css("left", ($(window).width() - $(this).outerWidth())/2);
     return this;
 }
  
 /* 레이어 닫기 후 삭제
 oj : 레이어 객체
 */
 function layer_pop_close(oj) {
   if(oj.length) {
     oj.fadeOut(500, function() {
       oj.remove();
     });
   }
   // 불투명 배경 레이어 삭제
   var oj = $('.opacity_bg_layer');
   if(oj.length) {
     oj.fadeOut(500, function() {
      oj.remove();
     });
   }
 }

 var ly;
 var _ly;
 var ly_bg;
 $(document).ready(function() {
 	  ly = 'layer_pop_center';
 	  _ly;
 	  ly_bg = $('.opacity_bg_layer');
 	 /* 
 	 var returnMsgAlert = '<%= request.getAttribute("returnMsg") %>';
 	  */
 	 var returnMsgAlert = '${returnMsg}';
 	 var successMsg = '${successMsg}';
 	  if(returnMsgAlert != ""){
 		  alert(returnMsg);
 	  }else if(successMsg != ""){
 		  alert(successMsg);
 	  }
 	  
 	 
 	  
 });

 
 /**
 * towork, offwork button
 */
function employeeAttend(attendType){ //attendType --> 축근 : towork, 퇴근 : offwork 
	//alert($("#employeeName").val()+"씨 "+ attendType);
	$("#attendType").val(attendType);
	if($("#employeeName").val() == ""){
		alert("직원을 선택하세요 ");
		return ;
	}
	
	if(attendType == "offwork"){
		if(($("#attendanceNo").val() == "") || ($("#attendanceNo").val() == "0") ){
			//출근을 하지 않았으므로 퇴근이 안죔
			alert("화면을 새로고침 하거나 출근을 하지 않았습니다.");
			return ;
		}else if($("#attendStartWork").val() != $("#attendEndWork").val()){  // 퇴근 했음 
			alert("퇴근을 한 상태입니다.");
			return ;
		}
	}else if(attendType == "towork"){
		if(!(($("#attendanceNo").val() == "") || ($("#attendanceNo").val() == "0")) ){
			//출근한 상태이므로 
			alert("출근을 한 상태 입니다.");
			return ;
		}
	}
	
	
	if(!ly_bg.length) opacity_bg_layer(); // 불투명 배경 레이어 띄우기
    var str_html = "<h1>비밀번호 입력</h1>"; // 레이어 팝업 내용
    str_html+= '<input type="password" class="layer_pop_center_txt"></input>';
    str_html+= '<br/><input type="submit" class="layer_pop_center_btn" value="OK"/>';
    str_html+= '<input type="submit" style="width: 50px;" class="layer_pop_center_btn_cancel" value="Cancel"/>';
    if(layer_pop_crt(ly, str_html)) {
      _ly = $('.' + ly); // 레이어 팝업 생성 후 재 선언
      layer_pop_center(_ly);
      _ly.fadeIn(500);
    } else {
      if(ly_bg.length) ly_bg.remove();
    }
 }
function employeeAttendwork(){

	
	if($('#model_input_passwd').val() == ""){
		alert("비밀번호를 입력하지 않았습니다.");
		return;
	}
	
	frm = document.getElementById("attendcheckform");
	frm.submit(); 

}

$(document).on('click', '.opacity_bg_layer', function() { // 불투명 배경 레이어를 클릭하면 닫기
    layer_pop_close(_ly);
}).on('click', '.layer_pop_center', function(e) { // 레이어 팝업 닫기
    //if(_ly.length) layer_pop_close(_ly);
}).on('click', '.layer_pop_center_btn', function(e) { // 팝업창의 버튼 닫기 
	var inputval = $('.layer_pop_center_txt').val();
	$('.layer_pop_center_txt').val("");
    
 
    $('#model_input_passwd').val(inputval);
    employeeAttendwork();

    if(_ly.length) layer_pop_close(_ly);
    
}).on('click', '.layer_pop_center_btn_cancel', function(e) { // 팝업창의 버튼 닫기 
	  
    if(_ly.length) layer_pop_close(_ly);
 	alert("취소되었습니다.");
});


//브라우저 창 크기 변경에 따른 처리
$(window).resize(function() {
var oj = $('.layer_pop_center');
if(oj.length) layer_pop_center(oj); // 레이어 팝업이 실행된 상태에서만 진행
if($('.opacity_bg_layer').length) opacity_bg_layer(); // 불투명 배경 레이어가 실행된 상태에서만 진행
});

/**
 * ----------------------------------------------------------------- towork, offwork start
 */
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
       		<div class="widget widget-plain">
				<div class="widget-content">
					<a href="/dobbywebpos/attendance/list.action" class="btn btn-large btn-success btn-support-ask">날짜별 출근 목록</a>	
					<a href="/dobbywebpos/attendance/employeelist.action" class="btn btn-large btn-success btn-support-ask">직원별 출근 목록</a>	
				</div> <!-- /widget-content -->
			</div> <!-- /widget -->
			
	          <div class="widget">
	            <div class="widget-header"> <i class="icon-bookmark"></i>
	              <h3>근태 현황 [ ${todayStr} ]</h3>
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
			              <a href="javascript:employeeAttendSetting('${ employee.employeeName}',${ employee.employeeNo}, ${ employee.attendanceone.attendanceNo},'${ employee.attendanceone.startWork}', '${ employee.attendanceone.endWork}' );" id="employee${employee.employeeNo}" class="shortcut">
			              	<span class="shortcut-label" >${ employee.employeeName}
			              	<c:choose>
			              		<c:when test="${  employee.attendanceone.attendanceNo == 0}">
			              			<div id="startem${ employee.employeeNo}" >출근 : __________</div>
			              			<div id="endem${ employee.employeeNo}" >퇴근 : __________</div>
			              		</c:when>
			              		<c:otherwise>
			              			<div id="startem${ employee.employeeNo}" >출근 : <fmt:formatDate value="${ employee.attendanceone.startWork}" pattern="HH:mm:ss"/> </div>
			              			<c:choose>
			              				<c:when test="${  employee.attendanceone.startWork == employee.attendanceone.endWork}">
			              					<div id="endem${ employee.employeeNo}" >퇴근 : __________</div>
			              				</c:when>
			              				<c:otherwise>
			              					<div id="endem${ employee.employeeNo}" >퇴근 : <fmt:formatDate value="${ employee.attendanceone.endWork}" pattern="HH:mm:ss"/> </div>
			              				</c:otherwise>
			              			</c:choose>
			              			
			              		</c:otherwise>
			              	</c:choose>
			              		
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
	         
	         </div>
	         <!-- /span -->
	         <div class="span12">
	          <div class="widget">
	            <div class="widget-header"> <i class="icon-bookmark"></i>
	              <h3> <div id="attend-employee-name" > 근태 버튼 :</div></h3>
	            </div>
	            <!-- /widget-header -->
	            <div class="widget-content">
	              <div class="shortcuts"> 
	              <a href="javascript:employeeAttend('towork');" class="shortcut">
	              	<i class="shortcut-icon icon-signin"></i>
	              	<span class="shortcut-label">출근</span> 
	              </a>
	              <a href="javascript:employeeAttend('offwork');" class="shortcut">
	              	<i class="shortcut-icon icon-signout"></i> 
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

<form action="/dobbywebpos/attendance/attendcheck.action" id="attendcheckform" name="attendcheckform" method="post">
	<input type="hidden" id="employeeName" name="employeeName" value=""/>
	<input type="hidden" id="employeeNo" name="employeeNo" value=""/>
	<input type="hidden" id="attendType" name="attendType" value=""/>
	<input type="hidden" id="attendanceNo" name="attendanceNo" value=""/>
	<input type="hidden" id="attendStartWork" name="attendStartWork" value=""/>
	<input type="hidden" id="attendEndWork" name="attendEndWork" value=""/>
	<input type="hidden" id="model_input_passwd" name="model_input_passwd" value=""/>
	</form>


<!-- Placed at the end of the document so the pages load faster --> 

<script src="/dobbywebpos/resources/jsui/excanvas.min.js"></script> 
<script src="/dobbywebpos/resources/jsui/chart.min.js" type="text/javascript"></script> 
<script src="/dobbywebpos/resources/jsui/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="/dobbywebpos/resources/jsui/full-calendar/fullcalendar.min.js"></script>
 
<!-- <script src="js/base.js"></script>  -->
				
</body>
</html>