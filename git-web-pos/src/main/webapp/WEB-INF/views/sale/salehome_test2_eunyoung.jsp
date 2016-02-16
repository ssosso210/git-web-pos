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
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
	
	
	
<!-- <script src="//code.jquery.com/jquery-1.12.0.js"></script> -->



<style>

body {
	font-size: 62.5%;
}

label, input {
	display: block;
}

input.text {
	margin-bottom: 12px;
	width: 95%;
	padding: .4em;
}

fieldset {
	padding: 0;
	border: 0;
	margin-top: 25px;
}

h1 {
	font-size: 1.2em;
	margin: .6em 0;
}

div#table-form {
	width: 350px;
	margin: 20px 0;
}

div#table-form table {
	margin: 1em 0;
	border-collapse: collapse;
	width: 100%;
}

div#table-form table td, div#table-form table th {
	border: 1px solid #eee;
	padding: .6em 10px;
	text-align: left;
}

.ui-dialog .ui-state-error {
	padding: .3em;
}

.validateTips {
	border: 1px solid transparent;
	padding: 0.3em;
}
</style>



<script type="text/javascript">

$(function() {
	
	function increaseOrderCount(event){
		
		var foodCodeval = $(this).attr('id').substring(4);
		var td2 = $("#count"+foodCodeval);
		var count = td2.text().trim();
		count = parseInt(count);
		td2.text(count+1);
		var td3 = $("#price"+foodCodeval);
		var price = parseInt(td3.text().trim())/count;
		td3.text((count+1)*parseInt(price));
		
	}
	
	function decreaseOrderCount(event){
		
		var foodCodeval = $(this).attr('id').substring(5);
		var td2 = $("#count"+foodCodeval);
		var count = td2.text().trim();
		
		count = parseInt(count);
		if(count == 1) {
			$(this).parents('tr').remove();
		} else {
			td2.text(count-1);
			var td3 = $("#price"+foodCodeval);
			var price = parseInt(td3.text().trim())/count;
			td3.text((count-1)*parseInt(price));	
		}
	}
	
    var dialog, form,

    dialog = $("#pos-form").dialog({
       autoOpen : false,
       height : 600,
       width : 1000,
       modal : true
       /* buttons : {
          "Test Order" : addUser,
          Cancel : function() {
             dialog.dialog("close");
          }
       },
       close : function() {
          form[0].reset();
          allFields.removeClass("ui-state-error");
       } */
    });

    form = dialog.find("form").on("submit", function(event) {
       event.preventDefault();
       addUser();
    });
    
        
	   $("div[id^=choosetable]").each(function(index,value) {
		   
		   $(this).on("click", function(event) {
			   
			   var totalno = $(this).find('span[id^=totalno]').text().split(':')[1].trim();
			   //var totalno = $("#totalno"+index).text().split(':')[1].trim();
			   
			   $.ajax({								// jquery가 제공하는 헬퍼함수는 $. 으로
					url : "/dobbywebpos/sale/pos_popup.action",
					type : "GET",
					async : true,
					data : { totalno : totalno },
					success : function(data, status, xhr) {
						
						$("#orderMenuList tbody").empty();
						
						eval("var orders = "+data);
						
						if(orders.length > 0) {
							var details = orders[0].orderDetails;
							for(var i = 0; i <details.length; i++) {
								var detail = details[i];
								var tr = $("<tr></tr>");
								var td1 = $("<td></td>").html(detail.foodCode).attr("id","code"+detail.foodCode);
								var td2 = $("<td></td>").html(detail.foodCode).attr("id","name"+detail.foodCode);
								var td3 = $("<td></td>").html(detail.quantity).attr("id","count"+detail.foodCode);
								var td4 = $("<td></td>").html(detail.price).attr("id","price"+detail.foodCode);
								var td5 = $("<td></td>").attr("id","plusminus"+detail.foodCode);
								var plus = $("<input/>").attr({id:"plus"+detail.foodCode, type:'button',value:'추가'});
								var minus = $("<input/>").attr({id:"minus"+detail.foodCode, type:'button', value:'감소'});
								plus.on('click', increaseOrderCount);
								minus.on('click', decreaseOrderCount);
								td5.append([plus,minus]);
								tr.append([td1,td2,td3,td4,td5]);
								$("#orderMenuList").append(tr);
							}
							
							$('#orderbutton').attr('data', orders[0].orderNo);							
						
						} else {
							$('#orderbutton').attr('data', -1);
						}
						
						$('#orderbutton').attr('data2',totalno);
						
						dialog.dialog("open");
						
					},
					error : function(xhr, status, error) {
						alert(error);
					}
				});		 				
			   
			   
		   });

	   });
	   
	   $('input[id^=menu]').on('click', function(event){
			var data = $(this).attr('data').split('/');
			var foodCodeval= data[0];
			var foodnameval= data[1];
			var foodpriceval= data[2];			
			
			var td = $("#code"+foodCodeval);
			if(td.length > 0){
				var td2 = $("#count"+foodCodeval);
				var count = td2.text().trim();
				count = parseInt(count)+1;
				td2.text(count);
				var td3 = $("#price"+foodCodeval);
				td3.text(count*parseInt(foodpriceval));
			}else {
				var tr = $("<tr></tr>");
				var td1 = $("<td></td>").html(foodCodeval).attr("id","code"+foodCodeval);
				var td2 = $("<td></td>").html(foodnameval).attr("id","name"+foodCodeval);
				var td3 = $("<td></td>").html('1').attr("id","count"+foodCodeval);
				var td4 = $("<td></td>").html(foodpriceval).attr("id","price"+foodCodeval);
				var td5 = $("<td></td>").attr("id","plusminus"+foodCodeval);
				var plus = $("<input/>").attr({id:"plus"+foodCodeval,type:'button',value:'추가'});
				var minus = $("<input/>").attr({id:"minus"+foodCodeval,type:'button', value:'감소'});
				plus.on('click', increaseOrderCount);
				minus.on('click', decreaseOrderCount);
				td5.append([plus,minus]);
				tr.append([td1,td2,td3,td4,td5]);
				$("#orderMenuList").append(tr);
			}
		
		});
	   
	   function setOrder(tableNo, order) {
			var d = $('#choosetable' + tableNo).find('span.totalprice');
			var d2 = $('#choosetable' + tableNo).find('span.orderno');
			var details = order.orderDetails;
			var totalPrice = 0;
			for (var i = 0; i < details.length; i++) {
				totalPrice += details[i].price * details[i].quantity;
			}
			d2.html("주문번호: " + order.orderNo);
			d.html("가  격: " + totalPrice);
		}
	   
	   $('#orderbutton').on('click', function(event){

		   var orderNo = $(this).attr('data');
		   var totalTableNo = $(this).attr('data2');
		   
		 //0. 테이블에있는 주문내역데이터 읽기(json배열)
			var order = {
			 storeCode : '${ param.storeCode1 }',
			 totalTableNo : totalTableNo,
			 orderDetails : []
		 	};
		 	
			var names = ['foodCode', 'name', 'quantity', 'price'];
			var trs = $('#orderMenuList tbody tr');
			if (trs.length == 0) {
				//alert('주문 항목이 없습니다.');
			} else {
				trs.each(function(index, data) {
					var order_detail = {foodCode:-1, quantity:-1, price:-1};
					$(this).find('td').each(function(index2, data2) {
						if (index2 != 1 && index2 < 4) {
							order_detail[names[index2]] = data2.innerText.trim();
						}
					});
					order.orderDetails.push(order_detail);					
				});
			}
		   

		   var sUrl = '';
		   if (orderNo < 0) {//insert
			   sUrl = "/dobbywebpos/sale/insertOrder.action";
			   
		   } else {//update
			   sUrl = "/dobbywebpos/sale/updateOrder.action";
		   }
			
		   var order2 = JSON.stringify(order);
			
			//1. db에 데이터저장(신규 또는 수정) - jQuery + ajax
			$.ajax({								// jquery가 제공하는 헬퍼함수는 $. 으로
				url : sUrl,
				
				type : "POST",
				async : true,
				data : { order : order2 },				
				success : function(data, status, xhr) {
					order.orderNo = parseInt(data);
					setOrder($('#orderbutton').attr('data2'), order);
					
					//창닫기
					dialog.dialog('close');
					
				},
				error : function(xhr, status, error) {
					alert(error);
				}
			});
			
		});
	   
	   function pageChange(totalTableNo, totalPrice) {
			location.href='../pay/payform.action?totaltableno=' + totalTableNo + '&price=' + totalPrice  ; 
	   }
	   
	   $('#paymentbutton').on('click', function(event) {
		   var totalTableNo = $('#orderbutton').attr('data2');
		   var totalPrice = 0;
		   $('td[id^=price]').each(function(index, value) {
			   totalPrice += parseInt(value.innerText.trim());
		   })
		   pageChange(totalTableNo, totalPrice);
	   });
	 		

   
 });




   
</script>
<body>
	
	<div id="header">
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="/dobbywebpos/main.action">판 매  </a>
				<div class="nav-collapse">
					<ul class="nav pull-right">
					
	            			
				         <li class="">
								<a href="/dobbywebpos/main.action" class=""> 
									<i class="icon-chevron-left"></i> 취소
								</a>
							</li>
            			
            	
						
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!-- /container -->
		</div>
		<!-- /navbar-inner -->
	</div>
	<!-- /navbar -->			
</div>   

	
		
<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">			
        <div class="span12">
          <div class="widget">
 		<div class="widget-content" style="border:0px;">
              <div class="shortcuts" style="width: 1200px;"> 
		<c:forEach varStatus="status" var="table" items="${st}">

			<div id="choosetable${ table.totalTableNo }" class="shortcut" style="background: #f9f6f1; height:50px; width:15%;cursor: pointer; "> 
				<span id="totalno${ table.totalTableNo }">고유값: ${table.totalTableNo }</span> <br/>
				<c:choose>
				<c:when test="${ empty table.orders }">				
					<span class='orderno'></span><br />
					<span class="totalprice"></span><br/>
				</c:when>
				<c:otherwise>
				<c:forEach var="orders" items="${ table.orders }">
					<span class='orderno' data='${ orders.orderNo }'>주문번호: ${ orders.orderNo }</span><br />
					<c:set var="total" value="0" />
					<c:forEach var="orderDetails" items="${ orders.orderDetails }">
						<c:set var="total" value="${ total + orderDetails.price }" />
					</c:forEach>
				<%-- <span>테이블번호: ${st.getTableNo() }</span><br/> --%>
				<span class="totalprice">가  격: ${ total }</span><br/>
				</c:forEach>
				</c:otherwise>
				</c:choose>
			</div> 

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



	<!-- 자식창 -->
	<div id="pos-form" title="Pos System">
		<!-- 선택한 메뉴나올부분 -->
		<div id="table-form" class="ui-widget"
			style="float: left; width: 550px; height: 500px; margin: 0 auto">

			<table class="ui-widget ui-widget-content"
				style="width: 500px; margin: 20px 20px 0px 20px" id="orderMenuList">
				<thead>
					<tr class="ui-widget-header " style="height: 40px">
						<th style="text-align: center; font-size: 10pt;">No
						</td>
						<th style="text-align: center; font-size: 10pt;">OrderName
						</td>
						<th style="text-align: center; font-size: 10pt;">Volume
						</td>
						<th style="text-align: center; font-size: 10pt;">Price
						</td>
						<th style="text-align: center; font-size: 10pt;">Vigo
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- 메뉴리스트 뿌려주는데 -->
		<div style="float: right; width: 400px; border: 1px solid;   height: 500px; margin: 0 auto">				
			<c:forEach var="menu" items="${ menus }">
            	<input type="button" id="menu${menu.foodCode}"
            		value="${ menu.foodName }" style="width:120px; height:40px; float:left; margin: 10px" data="${ menu.foodCode }/${ menu.foodName }/${ menu.foodPrice }">
			</c:forEach>
			
			
			

		</div>
		<button id="orderbutton" value="주문하기" style="margin: 10px 5px 10px 25px; width:100px; height:60px" ></button>
      	<button id="paymentbutton" value="계산하기" style="width:80px; height:60px">계산하기</button>
		
	</div>

	<!-- 부모창 -->
	<!-- <button id="clicktable">table</button> -->
	<input type="button" value="Table1" id="clicktable"
		style="clear:both; margin: 10px 5px 10px 25px; width: 100px; height: 50px">



</body>

</html>