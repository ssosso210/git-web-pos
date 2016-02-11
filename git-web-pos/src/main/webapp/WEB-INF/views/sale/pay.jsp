<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>포인트</title><br/>
</head>
<script src="//code.jquery.com/jquery-1.12.0.js"></script>
<script>
$(function(){
	$("#customerinfo").on("click", function(event){
		var writtenno= $("#writtenno").val();	
		
			$.ajax({
			 url : "/dobbywebpos/pay/pay.action",
             type : "GET",               
             async : true, 
             data:{writtenno: writtenno},
			 success:function(data, status, xhr){
				 eval("customer = " + decodeURIComponent(data));
				 $("#CustomerNo").val(customer.customerNo);
				 $("#c_name").val(customer.c_name);
				 $("#c_phoneNo").val(customer.c_phoneNo);
				 $("#c_point").val(customer.c_point);
				 $("#c_level").val(customer.c_level);
			 },
			 error:function(xhr, status, error){
				alert(error.toString());
			}
		});
	});
});
</script>
<body>
	css ㅎㅎ <br/>
	[회원정보불러오기]<br/>
	 customerno 입력
	
	<input type="number"  id="writtenno" /> 
	<input type="button" id="customerinfo" value="고객정보조회" />
	<br/><br/>  	
		                	
	 회원정보		  : <br/>             	
	고객 번호: <input type="text" id="CustomerNo" style="width:280px"><br/>
	이름: <input type="text" id="c_name" style="width:280px"><br/>
	전화번호: <input type="text" id="c_phoneNo" style="width:280px"><br/>
	포인트: <input type="text" id="c_point" style="width:280px"><br/>
	등급: <input type="text" id="c_level" style="width:280px"><br/>
	
	
</body>
</html>