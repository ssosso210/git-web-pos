<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
	<title>테이블 개수 등록</title>
</head>
<script src="//code.jquery.com/jquery-1.12.0.js"></script>
<script>

//var rt=$("#recentableNo").val();	
//var sc= $("#storecode1").val();	
$(function(){
	$("#plusbutton").on("click", function(event){
		var rt= $("#recentableNo").val();	
		var sc= $("#storeCode1").val();	

			$.ajax({
			 url : "/dobbywebpos/settings/tableadd.action",
             type : "GET",               
             async : true, 
             data:{"sc":sc, "rt":rt},
             //dataType:"json",
			 success:function(data, status, xhr){
				$("#recentableNo").val(data);
			 },
			 error:function(xhr, status, error){
				alert(error.toString());
			}
		});
		//event.preventDefault();
	});
});


</script>
<body>

	<div id="pageContainer">
		<div id="inputcontent">
			<br /><br />
		    <div id="inputmain">
		        <div class="inputsubtitle">테이블 개수</div>
		        <form action="tableregister.action" method="post"><!-- 상대경로표시 -->
		        <table>
		        
		            <tr>
		                <th>현재테이블개수</th>
		                <td>
		                	<div>
		                	<input type="text" id="recentableNo" value="${ recentableNo }" readonly="readonly" />
		                	<input type="button" id="plusbutton" value="+" />
		                	</div>
		                  <!--  <input type="number" name="tableNo" style="width:280px"></input> --> 
		                </td>
		            </tr> 
		              <tr>
		                <th>storeCode(outback001로 테스트함)</th>
		                <td >
		            		  <div>
		                	<input type="text" id="storeCode1" value="${ storeCode1 }" readonly="readonly" />
		                	
		                	</div>
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