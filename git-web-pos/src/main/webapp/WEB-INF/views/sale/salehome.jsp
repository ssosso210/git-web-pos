<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<meta charset="utf-8">
<title>Sale Home</title>

<script src="//code.jquery.com/jquery-1.12.0.js"></script>
<script type="text/javascript">
   
   function newTable() {
      var id = 1;
      var div = document.createElement("div")
      div.setAttribute("id",  id)
      div.setAttribute("class", "newDiv")
      div.style.width = "200px";
      div.style.height = "200px";
      
      div.textContent="판매버튼여기에넣어요";//어떻게 넣는지 모름 
      
      document.body.appendChild(div);
      id++;
      
   }
   
   
   
	function order_pos() { // 주문하기 팝업창
		window.open("../sale/orderform.action", "", "width=600, height=500, left=500, top=200");
	}
	<!-- ------------------------------------------------------------- -->
	
	
</script>
<style type="text/css">
.newDiv {
	background-color: white;
	border: 1px solid black;
	padding: 0.5em;
	text-align: center;
	float: left;
}
</style>
<body>

	<!-- ------------------------------------------------------------- -->
	[]이걸로 테스트중이야]<br />
	<table border="1" width="500" height="100">
		<tr>
			<td>1번 테이블</td>
			<td>2번 테이블</td>
		</tr>
		<tr>
			<td>3번 테이블</td>
			<td>4번 테이블</td>
		</tr>
	</table><br />
	<input type="button" value="주문하기" onClick="order_pos()">
	<input type="button" value="결제하기" onClick="pay_pos()">

	<!-- ------------------------------------------------------------- -->





	<br /><br /><br /><br /><br />
	<Button id=addtable type="button" onclick="newTable()">+</Button>&nbsp&nbsp

	<a href="orderform">주문하기</a>&nbsp&nbsp&nbsp
	<a href="paymentform">결제하기</a><br />


	<div id="myid" style="width: 100px; height: 100px;" onclick="myFunction()">
		<img style="width: 100px; height: 100px;" src="/dobbywebpos/resources/image/order.png">
		<br />
		<img style="width: 100px; height: 100px;" src="/dobbywebpos/resources/image/pay.png">
	</div>
	
	<br /><br /><br /><br /><br />
	
	<hr />
	
	<!-- <div id="test_table" style="width: 100px; height: 100px" border="1px solid black"> -->
		
<%-- 		<c:forEach var="menus" items="${ menus }">
		<td>${ menus.foodCode }</td>
		<td>${ menus.foodName }</td>
		<td>${ menus.foodPrice }</td>
		<td>${ menus.regDate }</td>
		<td>${ menus.hqCode }</td><br />
		</c:forEach> --%>
		
		
	<!-- </div> -->
	
	<div>
		<c:forEach var="menus" items="${ menus }">
			${ menus.foodCode }
		</c:forEach>
	</div>
	
	<br /><br /><br /><br /><br />
	
	<div class="btn-group" role="group" aria-label="">
		<button type="button" class= "btn btn-default" style="background-color:#8CBDED; color:navy;" />
			<a href="orderform.action">주문하기</a>
		
		<button type="button" class= "btn btn-default" style="background-color:#8CBDED; color:navy;" />
			<a href="paymentform.action">결제하기</a>
		<br />
		
	</div>

	<div></div>
	<br />
	<br />
</body>
</html>