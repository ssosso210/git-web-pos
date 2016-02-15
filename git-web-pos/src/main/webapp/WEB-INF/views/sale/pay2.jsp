<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>포인트</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="/dobbywebpos/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/dobbywebpos/resources/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	rel="stylesheet">
<link href="/dobbywebpos/resources/css/font-awesome.css"
	rel="stylesheet">
<link href="/dobbywebpos/resources/css/style.css" rel="stylesheet">

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
         alert("가진포인트보다 많습니다 ");
          document.getElementById("pointuse").value=null;
          
          document.getElementById("pointleft").value=null;
      }else {
       document.getElementById("actualpay").value=
       document.getElementById("foodtotalcost").value-document.getElementById("leveldiscount").value
       -document.getElementById("pointuse").value;
       
       //잔여포인트계산->디비로 들어가야 함 
       var pointleft=c_point1-pointuse1
          document.getElementById("pointleft").value=pointleft;
      }
   }
   
    $(document).ready(function(){
       $("#paycard").click(function(){
           $("#case_cashcard").show();
       });
       $("#paycash").click(function(){
           $("#case_cashcard").hide();
       });
   }); 
   
   function finalpay1(){
      var CustomerNo=document.getElementById("CustomerNo").value;
      var dscrate=document.getElementById("discount_rate").value;
      var paycard=$("input[type=radio][name=paycard]:checked").val();
      var pointleft=document.getElementById("pointleft").value;
      location.href="/dobbywebpos/pay/finalpay.action?CustomerNo="+CustomerNo+"&dscrate="
            +dscrate+"&paycard="+paycard+"&pointleft="+pointleft+"&totaltableno="+${totaltableno};
   }
   
   function RemoveAll(){
	   document.getElementById("pointuse").value=null;
   }
   
   function RemoveOne(){
	   var x= document.getElementById("pointuse").value;
	  
		x.remove(0);
	   
   }
   
   
</script>
<body>
	<div id="header">
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="/dobbywebpos/main.action">계산</a>
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


 <br/><br/>
	<form>
   <input  name="paycard" type="radio" id="paycard" value="credit" >카드계산</input>
   <input  name="paycard" type="radio" id="paycash" value="cash">현금계산</input>
   </form>
   
    <div id="case_cashcard" style="display:none">
   <br/>
      카드번호  <input type="number" id="cardno" style="width: 190px" value=<%=((int)(Math.random()*10000000)+1)%>><br/>
      유효기간   <input type="number" id="validmonth" style="width: 80px" value=<%=((int)(Math.random()*13)+1)%>>월&nbsp;
      <input type="text" id="validmonth" style="width: 80px" value=<%=((int)(Math.random()*31)+1)%>>일<br/>
   </div> 
     
   <br /><br/>
   <div>
      <a>[회원정보불러오기]</a>
      <br />
      <a>customerno 입력</a> <input type="number" id="writtenno" />
      <input type="button" id="customerinfo" value="고객정보조회" /> <br />
      <br /> 
      <a>회원정보 :</a> <br />
        <a>고객 번호:</a> <input type="text" id="CustomerNo" style="width: 280px"><br />
        <a> 이름:</a> <input type="text" id="c_name" style="width: 280px"><br />
        <a> 전화번호:</a> <input type="text" id="c_phoneNo" style="width: 280px"><br />
        <a>포인트:</a> <input type="text" id="c_point" style="width: 280px"><br />
        <a>등급:</a> <input type="text" id="c_level" style="width: 280px"><br />
        <a>할인율:</a> <input type="text" id="discount_rate" style="width: 280px">%<br />
        <a>잔여포인트:</a> <input type="text" id="pointleft" style="width: 280px"><br /> 
   </div>
  
   <br/><br/><br/>
  
   <tr>
      <button onclick="javascript:pointnumber(1);" style="width:85px">1</button>
      <button onclick="javascript:pointnumber(2);" style="width:85px">2</button>
      <button onclick="javascript:pointnumber(3);" style="width:85px">3</button><br/>
      <button onclick="javascript:pointnumber(4);" style="width:85px">4</button>
      <button onclick="javascript:pointnumber(5);" style="width:85px">5</button>
      <button onclick="javascript:pointnumber(6);" style="width:85px">6</button><br/>
      <button onclick="javascript:pointnumber(7);" style="width:85px">7</button>
      <button onclick="javascript:pointnumber(8);" style="width:85px">8</button>
      <button onclick="javascript:pointnumber(9);" style="width:85px">9</button><br/>
      <button onclick="javascript:RemoveOne();" style="width:85px">한칸지우기</button>
      <button onclick="javascript:pointnumber(0);" style="width:85px">0</button>
      <button onclick="javascript:RemoveAll();" style="width:85px">모두지우기</button><br/>
   </tr>
   <br/>
   <div>
     <a>[계산]</a>
     <br/>
     <a>금액</a>  <input value=20000 type="number" id="foodtotalcost" style="width: 280px"><br />
     <a> - 등급별 할인금액</a> <input type="number" id="leveldiscount" style="width: 280px"></input><br />
     <a> - 포인트사용 </a> <input type="number" id="pointuse" style="width: 280px" ></input><br/>
     <button onclick="javascript:payresult()">적용</button>
     <br /> 
     <a> = 결제금액 </a> <input type="number" id="actualpay" style="width: 280px"><br />
     <br />
     <button id="finalpay" onclick="javascript:finalpay1()" class="button">최종결제</button> 
 
   </div>




</body>
</html> 