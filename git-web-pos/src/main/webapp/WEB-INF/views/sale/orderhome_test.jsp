<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<meta charset="utf-8">
<title>Sale Home</title>

<script src="//code.jquery.com/jquery-1.12.0.js"></script>
<script type="text/javascript">
   
   
	function ordering_pos() { // 주문하기 팝업창
		window.open("../sale/orderform.action", "", "width=600, height=500, left=500, top=200");
	}
	<!-- ------------------------------------------------------------- -->
	
	
</script>

<body>

	<!-- ------------------------------------------------------------- -->
	<h2>[이걸로 테스트중이야]</h2><br />
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
	<input type="button" value="주문하기" onClick="ordering_pos()">
	<input type="button" value="주문취소" onClick="pay_pos()">

	<!-- ------------------------------------------------------------- -->



</body>
</html>