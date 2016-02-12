<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>

<html>
<meta charset="utf-8">
<title>Sale Home</title>

<script src="//code.jquery.com/jquery-1.12.0.js"></script>
<script type="text/javascript">
   
	
	
	
	/* $(function () {
		
		$("input[id^=menu]").each(function(index,value){
			
			var self = $(this);
			
			 $(this).on("click", function(event) {
				
				var param = self.val();
					 alert(param); 
				
				 $.ajax({								// jquery가 제공하는 헬퍼함수는 $. 으로
					url : "/dobbywebpos/sale/select",
					type : "GET",
					async : true,
					data : { foodname : param },
					 success : function(data, status, xhr) {
					
						 alert(data); 
						$("#result").html(data);
						eval("var menus="+data);
						for(var i = 0; i <menus.length; i++) {
							var menu = menus[i];
							var tr = $("<tr></tr>");
							var td1 = $("<td></td>").html(menu.foodCode);
							var td2 = $("<td></td>").html(menu.foodName);
							var td3 = $("<td></td>").html('1');
							var td4 = $("<td></td>").html(menu.foodPrice);
							tr.append([td1,td2,td3,td4]);
							$("#orderMenuList").append(tr);
						}
						
					},
					error : function(xhr, status, error) {
						alert(error);
					}
				});		 					
			});
		}) 
	
	}); */
	
	$(function () {
		
		function closeWin() {
		    myWindow.close();
		}
		
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
		
		$('#orderbutton').on('click', function(event){
			
			//0. 테이블에있는 주문내역데이터 읽기(json배열)
			var order = [];
			var names = ['code', 'name', 'count', 'price'];
			var trs = $('#orderMenuList tr');
			if (trs.length < 2) {
				alert('주문 항목이 없습니다.');
			} else {
				trs.each(function(index, data) {
					if (index > 0) {
					var order_detail = {code:'', name:'', count:'', price:''};
						$(this).find('td').each(function(index2, data2) {
							if (index2 < 4) {
								order_detail[names[index2]] = data2.innerText.trim();
							}
						});
						order.push(order_detail);
					}
				});
			}
			//1. db에 데이터저장(신규 또는 수정) - jQuery + ajax
			
			//2. 데이터를 부모화면에 전달
			opener.window.setOrder('${ param.totalno }', order);
			
			window.close();
			
			
			
		});
		
		
		
	});
	

	
	
	
	
</script>

<body>

	<!-- ------------------------------------------------------------- -->
	<!-- <h2>[이걸로 테스트중이야]</h2><br /> -->
	<div style = "border:1px solid; width:600px; height:500px; margin:0 auto">
      
      
      <!-- 선택한 메뉴나올부분 -->
      <div style="height: 300px; float:left; margin: 20px 10px 20px 30px">
      <table style="width:300px; " border='1' cellspacing='1' cellpadding='5' id="orderMenuList">
         
         <tr style="height: 20px">
	         <td >No</td>
	         <td>주문품목</td>
	         <td>수량</td>
	         <td>금액</td>
	         <td>비고</td>
         </tr>
         
         <%-- <c:forEach var="menuIndex" begin="0" end="7" step="1" varStatus="stat">
         <tr>
			<c:choose>
				<c:when test="${ stat.index < fn:length(menus) }">
		            
		            <td style="height: 15px">      </td>
		            <td style="height: 15px">     </td>
		            <td style="height: 15px">     </td>
		            <td style="height: 15px">     </td>
		        </c:when> 
		        <c:otherwise>
		        	<td style="height: 15px"></td>
		        	<td style="height: 15px"></td>
		        	<td style="height: 15px"></td>
		        	<td style="height: 15px"></td>
		        </c:otherwise>
	        </c:choose>
        </tr>
		</c:forEach> --%>
		
         
      </table>
      </div>
 
      <!-- 메뉴리스트 뿌려주는데 -->
      <table style="float:right; margin: 10px 10px 0px 0px "  cellspacing='5' cellpadding='1'>
         

		<c:forEach begin="0" end="9" step="1" varStatus="stat">
			
		<tr>
		<c:choose>
			<c:when test="${ stat.index < fn:length(menus) }">
	            <td class="chooseMenu${stat.index}">
	            	<input type="button" id="menu${stat.index}" 
	            		value="${ menus[stat.index].foodName }" style="width:100px; height:30px" data="${ menus[stat.index].foodCode }/${ menus[stat.index].foodName }/${ menus[stat.index].foodPrice }">
	         
	            </td>
	        </c:when> 
	        <c:otherwise>
	        	<td class="chooseMenu${stat.index}"><input type="button" value="" name="name" style="width:100px; height:30px"></td>
	        </c:otherwise>
        </c:choose>
            <td><input type="button" name="name" style="width:100px; height:30px"></td>

        </tr>
		</c:forEach>


		</table>
      
      
      <!-- 잡다 -->
      <table style="width:300px; float:left; margin: 20px 0px 20px 20px" cellspacing='5' cellpadding='1'>
         
         <tr>
            <td><input type="button" value="1" name="name" style="width:70px; height:30px"></td>
            <td><input type="button" value="2" name="name" style="width:70px; height:30px"></td>
            <td><input type="button" value="3" name="name" style="width:70px; height:30px"></td>
            <td><input type="button" value="지움" name="name" style="width:70px; height:30px"></td>
         </tr>
         <tr>
            <td><input type="button" value="4" name="name" style="width:70px; height:30px"></td>
            <td><input type="button" value="5" name="name" style="width:70px; height:30px"></td>
            <td><input type="button" value="6" name="name" style="width:70px; height:30px"></td>
            <td><input type="button" value="내나" name="name" style="width:70px; height:30px"></td>
         </tr>
         <tr>
            <td><input type="button" value="7" name="name" style="width:70px; height:30px"></td>
            <td><input type="button" value="8" name="name" style="width:70px; height:30px"></td>
            <td><input type="button" value="9" name="name" style="width:70px; height:30px"></td>
            <td><input type="button" value="돈돈" name="name" style="width:70px; height:30px"></td>
         </tr>
         <tr>
            <td><input type="button" value="0" name="name" style="width:70px; height:30px"></td>
            <td><input type="button" value="확인" name="name" style="width:70px; height:30px"></td>
            <td><input type="button" value="취소" name="name" style="width:70px; height:30px"></td>
            <td><input type="button" value="계산" name="name" style="width:70px; height:30px"></td>
         </tr>
         
      </table>
      
      
      <input type="button" id="orderbutton" value="주문하기" style="margin: 10px 5px 10px 25px; width:100px; height:60px" >
      <input type="button" id="paymentbutton" value="계산하기" style="width:100px; height:60px"> 
      
      

   </div>


	<!-- ------------------------------------------------------------- -->



</body>
</html>