<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>

<html>
<meta charset="utf-8">
<title>Sale Home</title>

<script src="//code.jquery.com/jquery-1.12.0.js"></script>
<script type="text/javascript">
   
   
	function ordering_pos() { // 주문하기 팝업창
		window.open("../sale/orderform.action", "", "width=600px, height=700px, left=500, top=100");
	} 
	
	function closeWin() {
	    myWindow.close();
	}
	
	$(function () {
		/* var i;
		var menuList = $('[class^=menuList]');
		
		var menus = $('[class^=chooseMenu]').length;
		for(i = 0; i < menus; i++) {
			$('.chooseMenu' + i).on('click', function () {
				console.log('나온다');
				
			});
		} */
		
		$("input[id^=menu]").each(function(index,value){
			
			var self = $(this);
			
			/* $(this).on("click", function(event) {
				
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
			});*/
		})
		
		
		
		
	});
	
	function clickbutton(foodCodeval, foodnameval, foodpriceval){
		var tr = $("<tr></tr>");
		var td1 = $("<td></td>").html(foodCodeval);
		var td2 = $("<td></td>").html(foodnameval);
		var td3 = $("<td></td>").html('1');
		var td4 = $("<td></td>").html(foodpriceval);
		tr.append([td1,td2,td3,td4]);
		$("#orderMenuList").append(tr);
		
	}
	
	
	
	
</script>

<body>

	<!-- ------------------------------------------------------------- -->
	<!-- <h2>[이걸로 테스트중이야]</h2><br /> -->
	<div style = "border:1px solid; width:500px; height:500px; margin:0 auto">
      
      
      <!-- 선택한 메뉴나올부분 -->
      <div style="height: 250px; float:left; margin: 20px 10px 20px 30px">
      <table style="width:250px; " border='1' cellspacing='1' cellpadding='5' id="orderMenuList">
         
         <tr style="height: 20px">
	         <td >No</td>
	         <td>주문품목</td>
	         <td>수량</td>
	         <td>금액</td>
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
	            	<input type="button" onclick="javascript:clickbutton('${ menus[stat.index].foodCode }','${ menus[stat.index].foodName }','${ menus[stat.index].foodPrice }' );" id="menu${stat.index}"  value="${ menus[stat.index].foodName }" name="name" style="width:80px; height:30px">
	            </td>
	        </c:when> 
	        <c:otherwise>
	        	<td class="chooseMenu${stat.index}"><input type="button" value="" name="name" style="width:80px; height:30px"></td>
	        </c:otherwise>
        </c:choose>
            <td><input type="button" name="name" style="width:80px; height:30px"></td>
        </tr>
		</c:forEach>


		</table>
      
      
      <!-- 잡다 -->
      <table style="width:250px; float:left; margin: 20px 0px 20px 20px" cellspacing='5' cellpadding='1'>
         
         <tr>
            <td><input type="button" value="1" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="2" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="3" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="현금" name="name" style="width:60px; height:30px"></td>
         </tr>
         <tr>
            <td><input type="button" value="4" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="5" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="6" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="카드" name="name" style="width:60px; height:30px"></td>
         </tr>
         <tr>
            <td><input type="button" value="7" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="8" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="9" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="" name="name" style="width:60px; height:30px"></td>
         </tr>
         <tr>
            <td><input type="button" value="0" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="확인" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="취소" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="" name="name" style="width:60px; height:30px"></td>

         </tr>
         
      </table>
      
      
      <input type="button" value="주문하기" style="margin: 10px 5px 10px 25px; width:80px; height:60px" onclick="closeWin()">
      <input type="button" value="계산하기" style="width:80px; height:60px"> 
      
      

   </div>


	<!-- ------------------------------------------------------------- -->



</body>
</html>