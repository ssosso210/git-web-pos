<%@ page language="java" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
	<title>Management main(지점)</title>
	<link rel="Stylesheet" href="/spring-mvc-demoweb5/resources/styles/default.css" />
	
</head>

<body>

 <div id="pageContainer">

    	<c:import url="/WEB-INF/views/include/header.jsp" />
        
        <div id="content">
        	<br /><br />
        	<div style='text-align:center'>
        		[&nbsp;<a href="management/managementAdmin">인건비 관리</a>&nbsp;]
        	</div>
        	<div style='text-align:center'>
        		[&nbsp;<a href="stock.action">재고 관리</a>&nbsp;]
        	</div>
        	<br /><br />             	
        </div>
 </div>

</body>
</html>
