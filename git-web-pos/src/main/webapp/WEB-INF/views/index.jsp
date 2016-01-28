<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
    <title></title>
    <link rel="Stylesheet" href="/dobbywebpos/resources/styles/default.css" />
	<link rel="Stylesheet" href="/dobbywebpos/resources/styles/main.css" />
	<link rel="Stylesheet" href="/dobbywebpos/resources/styles/input.css" />
</head>
<body>


    <div id="wrap">
	
		<c:import url="/WEB-INF/views/include/header.jsp" />

		<div id="container">
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
		        
		        
		    </div>
		    
		   	<div class="buttons">
			   	<a href="/dobbywebpos/account/hqlogin.action">
			   		본사
			   	</a>
	        	<!-- <input type="button" value="본사" style="height:25px" /> -->
	        </div>
			 



	</div>
    
</body>
</html>