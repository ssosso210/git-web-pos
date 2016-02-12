<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>포인트</title>
<br />
</head>
<script src="//code.jquery.com/jquery-1.12.0.js"></script>
<script>
   $(function() {
      $("#customerinfo").on("click", function(event) {
         var writtenno = $("#writtenno").val();

         $.ajax({
            url : "/dobbywebpos/pay/pay.action",
            type : "GET",
            async : true,
            data : {
               writtenno : writtenno
            },
            success : function(data, status, xhr) {
               eval("customer = " + decodeURIComponent(data));
               $("#CustomerNo").val(customer.customerNo);
               $("#c_name").val(customer.c_name);
               $("#c_phoneNo").val(customer.c_phoneNo);
               $("#c_point").val(customer.c_point);
               $("#c_level").val(customer.c_level);
              
               switch(customer.c_level){
               case ("basic") :
                    $("#discount_rate").val("5");
                       $("#leveldiscount").val( $("#foodtotalcost").val()*(0.05)   );
               break;
               case ("vip") :
                   $("#discount_rate").val("10");
               $("#leveldiscount").val( $("#foodtotalcost").val()*(0.1)   ); 
          
               break;
               case ("vvip") :
                   $("#discount_rate").val("15");
               $("#leveldiscount").val( $("#foodtotalcost").val()*(0.15)   );
               break;
               }
            },
            error : function(xhr, status, error) {
               alert(error.toString());
            }
         });
      });
      
    
      
      
   });
  
   function pointnumber(number){
      document.getElementById("pointuse").value+=number;
   }
   function payresult(){
       //사용할 포인트가 내가 가진 포인트보다 많으면 안됨
       var pointuse1= +document.getElementById("pointuse").value;//숫자로 바꿈
       var c_point1=+document.getElementById("c_point").value;
       
      if(pointuse1> c_point1){
    	  alert("내가 가진포인트보다 많음 ");
          document.getElementById("pointuse").value=null;
      }else {
       document.getElementById("actualpay").value=
       document.getElementById("foodtotalcost").value-document.getElementById("leveldiscount").value
       -document.getElementById("pointuse").value
      }
      
      //잔여포인트계산->디비로 들어가야 함 
      var pointleft=c_point1-pointuse1
    	  document.getElementById("pointleft").value=pointleft;
      
   }
   
   $(document).ready(function(){
	    $("#paycard").click(function(){
	        $("#casecard").show();
	    });
	    $("#paycash").click(function(){
	        $("#casecard").hide();
	    });
	});
   
   function finalpay1(){
	   var CustomerNo=document.getElementById("CustomerNo").value;
	   var dscrate=document.getElementById("discount_rate").value;
	   var paycard=document.getElementById("paycard").value;
	   var pointleft=document.getElementById("pointleft").value;
	   location.href="finalpay.action?CustomerNo"+CustomerNo+"&dscrate"+dscrate+"&paycard"+paycard+"&pointleft"+pointleft;
   }
  
</script>
<body>
계산 화면 <br/><br/>
	<input class="btn1" id="paycard" type="radio"  value="카드결제" >카드계산</input>
	<input class="btn2" id="paycard" type="radio"  value="현금결제">현금계산</input>
	<div id="casecard" style="display:none">
   <br/>
      카드번호  <input type="number" id="cardno" style="width: 190px" value=<%=((int)(Math.random()*10000000))%>><br/>
      유효기간   <input type="number" id="validmonth" style="width: 80px" value=<%=((int)(Math.random()*13))%>>월&nbsp;
      		 <input type="text" id="validmonth" style="width: 80px" value=<%=((int)(Math.random()*31))%>>일<br/>
   </div>
     
   <br /><br/>
   <div>
      [회원정보불러오기]<br />
      customerno 입력 <input type="number" id="writtenno" />
      <input type="button" id="customerinfo" value="고객정보조회" /> <br />
      <br /> 회원정보 : <br />
         고객 번호: <input type="text" id="CustomerNo" style="width: 280px"><br />
         이름: <input type="text" id="c_name" style="width: 280px"><br />
         전화번호: <input type="text" id="c_phoneNo" style="width: 280px"><br />
         포인트: <input type="text" id="c_point" style="width: 280px"><br />
         등급: <input type="text" id="c_level" style="width: 280px"><br />
         할인율: <input type="text" id="discount_rate" style="width: 280px">%<br />
         잔여포인트: <input type="text" id="pointleft" style="width: 280px">%<br /> 
   </div>
  
   <br/><br/><br/>
  
   <tr>
      <button onclick="javascript:pointnumber(1);">1</button>
      <button onclick="javascript:pointnumber(2);">2</button>
      <button onclick="javascript:pointnumber(3);">3</button><br/>
      <button onclick="javascript:pointnumber(4);">4</button>
      <button onclick="javascript:pointnumber(5);">5</button>
      <button onclick="javascript:pointnumber(6);">6</button><br/>
      <button onclick="javascript:pointnumber(7);">7</button>
      <button onclick="javascript:pointnumber(8);">8</button>
      <button onclick="javascript:pointnumber(9);">9</button><br/>
      <button onclick="javascript:pointnumber(0);">#</button>
      <button onclick="javascript:pointnumber(0);">0</button>
      <button onclick="javascript:pointnumber(0);">%</button><br/>
   </tr>
   <br/>
   <div>
      [계산] <br/>
          금액  <input value=20000 type="number" id="foodtotalcost" style="width: 280px"><br />
      - 등급별 할인금액 <input type="number" id="leveldiscount" style="width: 280px"></input><br />
      - 포인트사용  <input type="number" id="pointuse" style="width: 280px" ></input><br/>
      <button onclick="javascript:payresult()">적용</button>
      <br /> <!-- 디비에서 포인트 차감  해야됨, 등급도 조정해야됨 /최종결제때만 하면되나?-->
      = 결제금액  <input type="number" id="actualpay" style="width: 280px"><br />
      <br />
      <a id="finalpay" onclick="javascript:finalpay1()" href="finalpay.action" class="button">최종결제</a>  <!-- 최종결제시  디비에 들어갈때  회원 포인트, 등급 또 조정 -->
 
   </div>




</body>
</html> 