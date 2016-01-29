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
		//각 div마다 고유 id 지정해야되는데 잘 안됨  
		var id = 1;
		var div = document.createElement("div")
		div.setAttribute("id", id)
		div.setAttribute("class", "newDiv") 
		div.style.width = "200px";
		div.style.height = "200px";
		div.textContent = 'table' + id;

		//div.textContent="판매버튼여기에넣어요";//어떻게 넣는지 모름 
		id++;
		document.body.appendChild(div);
	}

	
	function order_pos() { // 주문하기 팝업창
		window.open("../sale/orderform.action", "", "width=600, height=500, left=500, top=200");
	}
	
	

	
	/* Ajax코드- db에 insert함  */
	//var proxy=null;//비동기상태
	var proxy;
	function addTable(){
		if(proxy!=null){return;}
			alert('addTable()호출됨');
			
			var url="addTable.action";
			proxy=getXmlHttpRequest();
			if(proxy!=null){//!proxy
				
				proxy.open("GET", url, true);//To send a request to a server, 
				proxy.onreadystatechange=addTableResult;//XMLHttpRequest 객체는 onreadystatechange 프로퍼티를 이용해서 웹 서버로부터 응답이 도착하면 특정한 JavaScript 함수를 호출한다
				proxy.send(null);
				
			}else{
				alert('asyn object creation failed');//이런말은 일반인들은 모르기때문에 보여주지 않는게 낫다. 디버깅 용 코드를 쓰면 안됨
			}
		}
	function addTableResult(){
		if(proxy.readyState==4){
			if(proxy.status==200){//정상일떄 
				var result=proxy.responseText;
				/* var member=result.split(";");//aaa;bbb;ccc=>[aaa, bbb, ccc]
				document.getElementById("email").value=member[1];
				document.getElementById("usertype").value=member[2];
				document.getElementById("active").value=member[3];
				document.getElementById("regdate").value=member[4];
				 */
				
				alert(result.toString());
			}else{
				alert('오류발생 '+ proxy.status);
			}
			proxy=null;
		}
	}
	
	function getXmlHttpRequest() {
		//브라우저 내장 객체로 제공되는 경우
		if (window.XMLHttpRequest) return new XMLHttpRequest();
		
		//ActiveX 방식으로 제공되는 경우 (IE 하위 버전)
		var versions = [
			"MSXML2.XMLHttp.6.0",
			"MSXML2.XMLHttp.5.0",
			"MSXML2.XMLHttp.4.0",
			"MSXML2.XMLHttp.3.0",
			"MSXML2.XMLHttp",
			"Microsoft.XMLHttp"
		];
		for (var i = 0; i < versions.length; i++) {				
			try {
				temp = new ActiveXObject(versions[i]);
				return temp;
			} catch (e) {}				
		}
		return null;
	
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


	<!-- ------------------------------------------------------------- -->
	[이걸로 테스트중이야]<br />
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




	<a href="orderform.action">주문하기</a><br />
	<a href="paymentform.action">결제하기</a><br/>
	
	
	
	<a>storecode1: ${storeCode1}</a><br /><br />
	<a href="javascript:addTable()" onclick="newTable()" class="button">+</a>
	<!--controller로 넘어가면 화면이 전환되므로 ajax 를 써서 디비와 연결해야함   -->
	<div ></div><br /><br />

</body>
</html>