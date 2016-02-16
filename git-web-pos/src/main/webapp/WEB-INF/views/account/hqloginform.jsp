<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>로그인</title>
	<meta name="viewport"	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<link href="/dobbywebpos/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="/dobbywebpos/resources/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
	<link href="/dobbywebpos/resources/css/font-awesome.css" rel="stylesheet">
	<link	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"	rel="stylesheet">
	<link href="/dobbywebpos/resources/css/style.css" rel="stylesheet" type="text/css">
	<link href="/dobbywebpos/resources/css/pages/signin.css" rel="stylesheet" type="text/css">
<!--    <link rel="Stylesheet" href="/dobbywebpos/resources/styles/default.css" />
	 -->
	 <link rel="Stylesheet" href="/dobbywebpos/resources/styles/main.css" />
	<link rel="Stylesheet" href="/dobbywebpos/resources/styles/input.css" />
<script type="text/javascript">
		window.onload = function() {
			
			var failedLoginId = '${ requestScope.loginid }';
			
			if (failedLoginId) { 
				alert('로그인 실패');
				document.getElementById("hqCode").value = failedLoginId;
			}
			
		}
	</script>
</head>
<body>	
	<div id="wrap">
		<div id="header">
			<div class="navbar navbar-fixed-top">
				<div class="navbar-inner" style="background:#39435C !important;">
					<div class="container">
						<a class="btn btn-navbar" data-toggle="collapse"
							data-target=".nav-collapse"> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
						</a> <a class="brand" href="index.html">
						<img src="/dobbywebpos/resources/img/icon/icon-pos.png" style="height:18px ;" />
						 Dobby web pos </a>
						<div class="nav-collapse">
							<ul class="nav pull-right">
								<!-- <li class=""><a href="signup.html" class=""> Don't have an account? </a></li> -->
								<li class="">
									<a href="/dobbywebpos/" class=""> 
										<i class="icon-chevron-left"></i> go to pospage
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
		
		
		
		<div class="account-container">
	
			<div class="content clearfix">
				
				<form action="/dobbywebpos/account/hqlogin.action" method="post">
				<!-- input type="hidden" : 사용자에게 보이지 않지만 서버로 전송되는 입력 요소 -->
		        <input type="hidden" name="returnurl" value='${ empty requestScope.returnurl ? "" : requestScope.returnurl }' />
				
					<h1>Dobby pos Headquarter</h1>		
				
					
					<div class="login-fields">
						
						<p>Please provide your details</p>
						
		
						
						<div class="field">
							<!-- <label for="username">Username</label> -->
							<!-- <input type="text" id="username" name="username" value="" placeholder="Username" class="login username-field" /> -->
							아이디
							<input type="text" id="hqId" name="hqId" value="" placeholder="Username" class="login username-field" />
						</div> <!-- /field -->
						
						<div class="field">
							Password
							<input type="password" id="hqpasswd" name="hqpasswd" value="" placeholder="Password" class="login password-field"/>
						</div> <!-- /password -->
						
					</div> <!-- /login-fields -->
					
					<div class="login-actions">
						
						<!-- <span class="login-checkbox">
							<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
							<label class="choice" for="Field">Keep me signed in</label>
						</span> -->
						<span class="login-checkbox">
							<label class="choice" for="Field" style="color : red;">${ empty failMessage ? "" : failMessage}</label>
						</span>
											
						<button class="button btn btn-success btn-large" type="submit" >Sign In</button>
						
					</div> <!-- .actions -->
					
					
					
				</form>
				
			</div> <!-- /content -->
			
		</div> <!-- /account-container -->
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

		<%-- <div id="container">
			<div id="mainimg"> 
			<h1>Dobby hq pos</h1>
			</div>
			<br /><br />
		    <div id="inputmain">
		        <div class="inputsubtitle">본사 로그인</div>
		        
		        <form action="/dobbywebpos/account/hqlogin.action" method="post">
		        
		        <!-- input type="hidden" : 사용자에게 보이지 않지만 서버로 전송되는 입력 요소 -->
		        <input type="hidden" name="returnurl" value='${ empty requestScope.returnurl ? "" : requestScope.returnurl }' />
		        <table>
		            <tr>
		                <th>아이디</th>
		                <td>
		                    <input type="text" id="hqId" name="hqId" style="width:280px" value="superadmin"/>
		                </td>
		            </tr>
		            <tr>
		                <th>비밀번호</th>
		                <td>
		                	<input type="password" name="hqpasswd" style="width:280px" value="123" />
		                </td>
		            </tr>
		        </table>
		        <div class="buttons">
		        	<input type="submit" value="로그인" style="height:25px" />
		        	<input type="button" value="취소" style="height:25px" />
		        </div>
		        </form>
		        
		    </div>
			
		</div> --%>
		
	</div>
	<script src="/dobbywebpos/resources/jsui/jquery-1.7.2.min.js"></script>
	<script src="/dobbywebpos/resources/jsui/bootstrap.js"></script>
	<script src="/dobbywebpos/resources/jsui/signin.js"></script>

</body>
</html>