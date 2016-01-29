<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<meta charset="utf-8">
<title>Sale Home</title>

<script src="//code.jquery.com/jquery-1.12.0.js"></script>
<script type="text/javascript">
   
   
	function order_pos() { // 주문하기 팝업창
		window.open("../sale/orderhome_test.action", "", "width=600, height=500, left=500, top=200");
	}
	<!-- ------------------------------------------------------------- -->
	
	
</script>

<body>

	<div style="text-align: center; margin-top: 200px;">

	<!-- ------------------------------------------------------------- -->
		<h2>[ 테스트 중 ]</h2><br />
		<input type="button" style="width: 200px; height: 100px; left: 500; top: 300" value="주문하기" onclick="order_pos()">
		<input type="button" style="width: 200px; height: 100px" value="결제하기" onclick="pay_pos()">

	<!-- ------------------------------------------------------------- -->

	</div>
	
</body>
</html>