<%@ page language="java" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

	<a href="orderform.action">주문하기</a><br/>
	<a href="paymentform.action">결제하기</a><br/>
	
	<br/>
	<Button id=addtable type="button" onclick="newTable()">+</Button>
  <div></div>
  <br/><br/>
</body>
</html>