<%@page import="com.dobbypos.model.dto.Balance"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dobbypos.model.dao.CheckDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div id="pageContainer">
		
		<c:import url="/WEB-INF/views/include/header.jsp" />
		
		<div id="inputcontent">
			<br /><br />
		    <div id="inputmain">
		        <div class="inputsubtitle">수정하기</div>
				<form:form method="post" modelAttribute="balance">
		        <table>
		            <tr>
		                <th>목차</th>
		                <td>
		                	<form:input type="balance" path="balanceNo"
		                    	cssStyle="width:280px;" readonly="true" />
		                </td>
		            </tr>
		            <tr>
		                <th>날짜시간</th>
		                <td>
		                	<form:input type="datetime"  path="regDate" cssStyle="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>구분</th>
		                <td>
		                	<form:input type="option" path="itemCode" cssStyle="width:280px" />
		                </td>
		            </tr>		            
		            <tr>
		                <th>금액</th>
		                <td>
		                	<form:input type="number" path="plusMinus" cssStyle="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>세부사항</th>
		                <td>
		                	<form:input type="text" path="description" cssStyle="width:280px" />
		                </td>
		            </tr>		            		            
		        </table>
		        <div class="buttons">
		        	<input type="submit" value="수정" style="height:25px" />
		        	<%-- <input type="button" value="취소" style="height:25px"
		        		onclick="location.href='view.action?memberid=${ param.memberid }';" /> --%>
		        	<input type="button" value="취소" style="height:25px"
		        		onclick="location.href='salesview.action?balanceno=${ balance.balanceNo }';" />
		        </div>
		        </form:form>
		    </div>
		</div>   		
		
	</div>

</body>
</html>