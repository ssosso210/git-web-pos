<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
	<title>메뉴등록</title>
</head>
<body>

	<div id="pageContainer">
		<div id="inputcontent">
			<br /><br />
		    <div id="inputmain">
		        <div class="inputsubtitle">메뉴등록정보</div>
		        <form action="menuregister.action" method="post"><!-- 상대경로표시 -->
		        <table>
		             <tr>
		                <th>음식코드(pk)</th>
		                <td>
		                    <input type="text" name="foodCode" style="width:280px" />
		                </td>
		            </tr>
		            <tr>
		                <th>음식이름</th>
		                <td>
		                    <input type="text" name="foodName" style="width:280px" />
		                </td>
		            </tr>
		             <tr>
		                <th>음식가격</th>
		                <td>
		                    <input type="number" name="foodPrice" style="width:280px" />
		                </td>
		            </tr>
		             <tr>
		                <th>등록일자</th>
		                <td>
		                    <input type="text" name="regDate" style="width:280px" />
		                </td>
		            </tr>
		             <tr>
		                <th>본사코드(outback 으로 테스트)</th>
		                <td>
		                    <input type="text" name="hqCode" style="width:280px" />
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