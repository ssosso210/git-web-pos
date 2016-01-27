<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
	<title>테이블 개수 등록</title>
</head>
<body>

	<div id="pageContainer">
		<div id="inputcontent">
			<br /><br />
		    <div id="inputmain">
		        <div class="inputsubtitle">테이블 개수</div>
		        <form action="tableregister.action" method="post"><!-- 상대경로표시 -->
		        <table>
		            <tr>
		                <th>테이블 개수</th>
		                <td>
		                    <input type="number" name="tableNo" style="width:280px" />
		                </td>
		            </tr> 
		              <tr>
		                <th>storeCode</th>
		                <td>
		                    <input type="text" name="storeCode" style="width:280px" />
		                </td>
		            </tr> 
		            <tr>
		                <th>사용중인지 아닌지(0/1)</th>
		                <td>
		                    <input type="number" name="occupied" style="width:280px" />
		                </td>
		            </tr> 
		            
		        </table>
		        <div class="buttons">
		        	<input type="submit" value="등록" style="height:25px" />
		        	
		        </div>
		        </form>
		    </div>
		</div>   	
	
	</div>

</body>
</html>