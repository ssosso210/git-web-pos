<%@page import="com.dobbypos.model.dto.Store"%>
<%@page import="java.util.List"%>
<%@page import="com.dobbypos.model.dao.HqDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
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
    <link href="/dobbywebpos/resources/input.css" rel="stylesheet" type="text/css" />
    <link href="/dobbywebpos/resources/input2.css" rel="stylesheet" type="text/css" />
    <link href="/dobbywebpos/resources/default.css" rel="stylesheet" type="text/css" />

          <style type="text/css">

          </style>
        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="/dobbywebpos/resources/js/jquery.min.js" type="text/javascript"></script>

        <!-- jQuery UI 1.10.3 -->
        <script src="/dobbywebpos/resources/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
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
	
	var divList;
	
	$("#storeName").on("keyup", function(event) {
		var input = $("#storeName").val();	
		if (input.length == 0) {
			if (divList && divList.style.display != "none") {
 			   divList.style.display = "none"
 		   }
			return;	
		}
		
		$.ajax({
			url : "/dobbywebpos/hq/storenamelist.action",
			type : "GET",
			async : true,
			//dataType : "json",
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",  
			data : { storename : input },
			success : function(data, status, xhr) {
				console.dir(data);
				showResult(data);
			},
			error : function(xhr, status, error) {
				alert(error);
			}			
		});		
	});
});


     /*   function doAutoComplete() {
    	   var storeName = document.getElementById("storeName");
    	   if (storeName.value.length == 0) {
    		   if (divList && divList.style.display != "none") {
    			   divList.style.display = "none"
    		   }
    		   return;
    	   }
    	   
    	   proxy = getXmlHttpRequest();
    	   
    	   if (proxy == null) {
    		   return;
    	   }
    	   
    	   proxy.open("GET", "storenamelist.action?storname=" + sotreName.value, true);
    	   proxy.onreadystatechange = showSuggestions;
    	   proxy.send(null);
       }     
       
       function showSuggestions(){
    	   if (proxy.readyState == 4) {
    		   if (proxy.status == 200) {
    			   var result = proxy.responseText;
    			   if (result.indexOf("error") != -1) {
    				   return;
    			   }
    			   
    			   showResult(result);
    		   }
    		   proxy = null;
    	   }
       }
        */
       /* var divList; */
       function showResult(data) {
    	   if (document.getElementById("divAutoCom"))
    		   document.body.removeChild(document.getElementById("divAutoCom"));
    	   eval("var nameArray = " + data);
    	   
    	   if (nameArray.length == 0) return;
    	   
    	   divList = document.createElement("div");
    	   divList.id = "divAutoCom";
    	   divList.style.border = "1px black solid";
    	   divList.style.backgroundColor = "white";
    	   divList.style.width = "230px";
    	   divList.style.position = "absolute";
    	   document.body.appendChild(divList);
    	   
    	   var item;
    	   for(var i = 0; i < nameArray.length; i++) {
    		   item = document.createElement("div");
    		   item.style.paddingLeft = "5px";
    		   item.style.paddingTop = item.style.paddingBottom = "2px;"
    		   item.style.width = "97%";
    		   item.innerHTML = nameArray[i];
    		   divList.appendChild(item);
    		   
    		   item.onmousedown = function(oEvent) {
    			   oEvent = oEvnet || window.event;
    			   oSrcElement = oEvent.target || oEvent.srcElement;
    			   document.getElementByid("storeName").value = oSrcElement.innerHTML;
    			   divList.style.display = "none";
    		   };
    		   item.onmouseover = function(oEvent) {
					oEvent = oEvent	|| window.event;
					oSrcElement	= oEvent.target	|| oEvent.srcElement;
					oSrcElement.style.backgroundColor =	"#efefef"; 
				};
				item.onmouseout =	function(oEvent) { 
					oEvent = oEvent	|| window.event;
					oSrcElement	= oEvent.target	|| oEvent.srcElement;
					oSrcElement.style.backgroundColor =	"";	
				};
    	   }
    	   
    	   divList.style.left = getLeft() + "px";
    	   divList.style.top = getTop() + "px";
    	   
    	   var x = 10;
       }
       
       function getTop() {
			var	t =	document.getElementById("storeName");

			var	topPos = 2 + t.offsetHeight; //memberid 의 높이값
			while(t.tagName.toLowerCase() != "body" && 
				  t.tagName.toLowerCase() != "html") {
				topPos += t.offsetTop;//offsetTop : 상위 요소와의 거리
				t = t.offsetParent;	//상위 요소를 현재 요소에 대입
			}
			return topPos;
		}
       
       function getLeft() {
    	   var t = document.getElementById("storeName");
    	   var leftPos = 0;
    	   while(t.tagName.toLowerCase() != "body" && t.tagName.toLowerCase() != "html") {
    		   leftPos += t.offsetLeft;
    		   t = t.offsetParent;
    	   }
    	   return leftPos;
       }
       
       
</script>
      </head>
      <body class="skin-black">

      <c:import url="/WEB-INF/views/include/hqHeader.jsp" />
      <div id="pageContainer">	
			
		
		<div class="right-side" style="padding-top:25px;text-align:center">
		<div class="inputsubtitle"><spring:message code="hq.storeInfo" /></div>
		<br /><br />
		        <form action="register.action" method="post"><!-- 상대경로표시 -->
		        <table style="margin: 0 auto;border: solid;">
		            <tr>
		                <th style="background-color: #999999"><spring:message code="hq.storemanagement.name" /></th>
		                <td>
		                    <input type="text" id="storeName" name="storeName" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th class="thh"><spring:message code="hq.storemanagement.managerName" /></th>
		                <td>
		                	<input type="password" name="passwd" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th class="thh"><spring:message code="hq.storemanagement.phoneNo" /></th>
		                <td>
		                    <input type="password" name="confirm" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th class="thh"><spring:message code="hq.storemanagement.email" /></th>
		                <td>
		                	<input type="text" name="email" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th class="thh"><spring:message code="hq.storemanagement.address" /></th>
		                <td>
		                	<input type="radio" name="userType" value="user" checked="checked">사용자</input>
		                	<input type="radio" name="userType" value="admin">관리자</input>
		                </td>
		            </tr>
		            <tr>
		                <th>활성화여부</th>
		                <td>
		                	<input type="checkbox" name="active" value="true">활성사용자</input>
		                </td>
		            </tr>
		        </table>
		        <div class="buttons">
		        	<input type="submit" value="등록" style="height:25px" />
		        	<input type="button" value="취소" style="height:25px"
		        		onclick="location.href='list.action';" />
		        </div>
		        </form>
		    </div>
			
			
			
	</div>
	



</body>
</html>