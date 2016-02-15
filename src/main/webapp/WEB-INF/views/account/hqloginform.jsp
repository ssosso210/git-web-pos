<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>로그인</title>
	<link rel="Stylesheet" href="/dobbywebpos/resources/styles/default.css" />
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
	
		<c:import url="/WEB-INF/views/include/header.jsp" />
		<div id="container">
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
			
		</div>
	</div>

</body>
</html>