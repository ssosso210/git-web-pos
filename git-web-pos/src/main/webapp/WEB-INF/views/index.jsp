<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <title></title>
    <meta name="viewport"	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<link href="/dobbywebpos/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="/dobbywebpos/resources/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
	<link href="/dobbywebpos/resources/css/font-awesome.css" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"	rel="stylesheet">
	<link href="/dobbywebpos/resources/css/style.css" rel="stylesheet" type="text/css">
	<link href="/dobbywebpos/resources/css/pages/signin.css" rel="stylesheet" type="text/css"> 
<!--    <link rel="Stylesheet" href="/dobbywebpos/resources/styles/default.css" />
	 -->
	<link rel="Stylesheet" href="/dobbywebpos/resources/styles/main.css" />
	<link rel="Stylesheet" href="/dobbywebpos/resources/styles/input.css" /> 
</head>
<body>


    <div id="wrap">
	
		<c:import url="/WEB-INF/views/include/posheader.jsp" />

		<%-- <div id="container">
			<div id="mainimg"> 
			<h1>Dobby pos</h1>
			</div>
			
			<br /><br />
		    <div id="inputmain">
		        <div class="inputsubtitle">로그인정보</div>
		        
		        <form action="/dobbywebpos/account/login.action" method="post">
		   
		        <!-- input type="hidden" : 사용자에게 보이지 않지만 서버로 전송되는 입력 요소 -->
		        <input type="hidden" name="returnurl" value='${ empty requestScope.returnurl ? "" : requestScope.returnurl }' />
		        <table>
		            <tr>
		                <th>본사 코드</th>
		                <td>
		                    <input type="text" id="hqCode" name="hqCode" style="width:280px" value="outback"/>
		                </td>
		            </tr>
		            <tr>
		                <th>매장 코드</th>
		                <td>
		               
		                    <input type="text" id="storeCode" name="storeCode" style="width:280px" value="outback001"/>
		                     <input type="hidden" id="storeCode1" name="storeCode1" value="outback001"/> 
		                </td>
		            </tr>
		            <tr>
		                <th>아이디</th>
		                <td>
		                    <input type="text" id="employeeId" name="employeeId" style="width:280px" value="ob001hany"/>
		                </td>
		            </tr>
		            <tr>
		                <th>비밀번호</th>
		                <td>
		                	<input type="password" name="passwd" style="width:280px" value="123" />
		                </td>
		            </tr>
		        </table>
		        <div class="buttons">
		        	<input type="submit" value="로그인" style="height:25px" />
		        	<input type="button" value="취소" style="height:25px" />
		        </div>
		        </form>
		        
		        
		    </div> --%>
		    
		    
		    <div class="account-container">
	
			<div class="content clearfix">
				
				<form action="/dobbywebpos/account/login.action" method="post">
				<!-- input type="hidden" : 사용자에게 보이지 않지만 서버로 전송되는 입력 요소 -->
		        <input type="hidden" name="returnurl" value='${ empty requestScope.returnurl ? "" : requestScope.returnurl }' />
				
					<h1>Dobby pos</h1>		
				
					
					<div class="login-fields">
						
						<p>Please provide your details</p>
						
						<div class="field">
							<!-- <label for="username">Username</label> -->
							<!-- <input type="text" id="username" name="username" value="" placeholder="Username" class="login username-field" /> -->
							본사 코드
							<input type="text" id="hqCode" name="hqCode" value="outback" placeholder="Username" class="login username-field" />
						</div> <!-- /field -->
						
						<div class="field">
							<!-- <label for="username">Username</label> -->
							<!-- <input type="text" id="username" name="username" value="" placeholder="Username" class="login username-field" /> -->
							매장 코드 
							<input type="text" id="storeCode" name="storeCode" value="outback001" placeholder="Username" class="login username-field" />
							<input type="hidden" id="storeCode1" name="storeCode1" value="outback001"/> 
						</div> <!-- /field -->
						
						<div class="field">
							<!-- <label for="username">Username</label> -->
							<!-- <input type="text" id="username" name="username" value="" placeholder="Username" class="login username-field" /> -->
							아이디
							<input type="text" id="employeeId" name="employeeId" value="ob001hany" placeholder="Username" class="login username-field" />
						</div> <!-- /field -->
						
						<div class="field">
							Password
							<input type="password" id="passwd" name="passwd" value="123" placeholder="Password" class="login password-field"/>
						</div> <!-- /password -->
						
					</div> <!-- /login-fields -->
					
					<div class="login-actions">
						
						<!-- <span class="login-checkbox">
							<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
							<label class="choice" for="Field">Keep me signed in</label>
						</span> -->
											
						<button class="button btn btn-success btn-large" type="submit" >Sign In</button>
						
					</div> <!-- .actions -->
					
					
					
				</form>
				
			</div> <!-- /content -->
			
		</div> <!-- /account-container -->
		   
			 
	</div>
		<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script>
	<script src="/dobbywebpos/resources/jsui/bootstrap.js"></script>
	<script src="/dobbywebpos/resources/jsui/signin.js"></script>
	

</body>
</html>