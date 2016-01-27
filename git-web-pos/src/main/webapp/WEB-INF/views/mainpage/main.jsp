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
	        <!-- <div id="content">
	        	<br /><br /><br /><br /><br />
	        	<h2 style='text-aling:center'>
					Hello dobby web pos Site Main Page !!!
				</h2>
	        </div> -->
	        <div id="content">
			<br />
			<br />
			<br />
			<br />
			<br />
			<h2 style='text-aling: center'>
				Hello dobby web pos Site Main Page !!!
				<p>근태/판매/조회/관리/설정 어디에 넣죠?몰랑~ 데헷~ ^0^</p>
				<a>근태</a><br /> 
				<a>판매</a><br /> 
				<a href="check/checkmain.action">조회</a><br /> 
				<a href="management/managementhome.action">관리</a><br /> 
				<a href="settings/settinghome.action">설정</a><br /> 

				<!-- 윤수 테스트중 -->
				<a href="sale/salehome.action">테이블클릭(주문할거야)</a><br />

			</h2>
		</div>
        </div>
    </div>
    
    
</body>
</html>