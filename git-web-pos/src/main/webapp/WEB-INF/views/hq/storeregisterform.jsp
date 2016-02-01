<%@page import="com.dobbypos.model.dto.Store"%>
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
            
            
			/* $(function() {
            	
            	$("#store").on("click", function(event) {
            		$("#management").load("data2.html");
            		
            	});
            	
            }); */
            
            
            
</script>
            
            
            



<script type="text/javascript">

$(function() {
		
 /* $("#storeName").on("keyup", function(event) {
		var input = $("#storeName").val();	
		if (input.length == 0) {
			if (divList && divList.style.display != "none") {
 			   divList.style.display = "none"
 		   }
			return;	 
		} */
		
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
				})
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
							
/* 							response(
									
							
		                            $.map(data, function(item) {
		                                return {
		                                    label: item.data,
		                                    value: item.data
		                                }
		                            })
		                        ); */
				       },				       
				    error : function(error) {
				    	console.log(error);
				    }
				})
			}
			
		}); 
		
		 /* $.ajax({
			url : "/dobbywebpos/hq/storenamelist.action",
			type : "GET",
			async : true,
			//dataType : "json",
			contentType: "application/json; charset=utf-8",  
			data : { storename : input },
			success : function(data, status, xhr) {
				console.dir(data);
				data
				showResult(data);
				
			    
			},
			error : function(xhr, status, error) {
				alert(error);
			}			
		});		 */
		 
	$("#storeregisteraddress").on("click", function(event) {
		var address = $("#storeregisteraddress").val();
		address = map();
	});
	
	
});

var address = $("#storeregisteraddress").val();
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
         //document.getElementById('storeregisteraddress').value = fullRoadAddr;
         $("#storeregisteraddress").html("fullRoadAddr");
            
        /*     //new 1. 조회된 주소를 이용해서 좌표 요청 (Geocoder) 
        var geocoder = new daum.maps.services.Geocoder();
        geocoder.addr2coord(fullRoadAddr, function(status, result) {

         // 정상적으로 검색이 완료됐으면 
          if (status === daum.maps.services.Status.OK) {

             var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
          //응답된 좌표로 지도 이동                     
           
              
             // 출발지와 (경유지 또는 목적지) 출발지-경유지, 출발지-목적지
            /*  if (locations[0] != null && (locations[1] != null || locations[2] != null)) {                        
                
                var temp = [];
                temp[0] = locations[0];         // temp[0]은 출발지
                if (locations[1] != null) {      // 경유지가 null이 아니면
                   temp[1] = locations[1];      // temp[1]은 경유지 
                   if (locations[2] != null) {    // 목적지가 null이 아니면 
                      temp[2] = locations[2];      // temp[2]는 목적지
                   }
                } else {                  // 그밖에는 temp[1]은 목적지             
                   temp[1] = locations[2];
                }
                                        
                
             } 
             
            
            } 
                 
        }); */

        }
    }).open({
        popupName : "주소검색"      
    	
    });
    
     return mapper;
  }


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
    	   var leftPos = 2;
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
		                <th style="background-color: #999999"><spring:message code="hq.storemanagement.code" /></th>
		                <td>		                    
		                    <input type="text" id="storeCode" name="storeCode" style="width:280px" />		                    
		                </td>
		            </tr>
		            <tr>
		                <th style="background-color: #999999"><spring:message code="hq.storemanagement.name" /></th>
		                <td>
		                    
		                    <input type="text" id="storeName" name="storeName" style="width:280px" />
		                    
		                </td>
		            </tr>
		            <tr>
		                <th class="thh"><spring:message code="hq.storemanagement.managerName" /></th>
		                <td>
		                	<input type="text" name="managerName" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th class="thh"><spring:message code="hq.storemanagement.phoneNo" /></th>
		                <td>
		                    <input type="text" name="phoneNo" style="width:280px" />
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
		                	<input type="search" id="storeregisteraddress" name="address" style="width:280px" />		                	
		                </td>
		            </tr>		            
		        </table>
		        <div class="buttons">
		        	<input type="submit" value="등록" style="height:25px" />
		        	<input type="button" value="취소" style="height:25px"
		        		onclick="location.href='/dobbywebpos/hq/storemanagement.action';" />
		        </div>
		        </form>
		    </div>
		
			
	</div>
	



</body>
</html>