<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<meta charset="utf-8">
<title>Sale Home</title>

<script src="//code.jquery.com/jquery-1.12.0.js"></script>
<script type="text/javascript">
   
   
	function ordering_pos() { // 주문하기 팝업창
		window.open("../sale/orderform.action", "", "width=600px, height=700px, left=500, top=100");
	}
	
	
	
</script>

<body>

	<!-- ------------------------------------------------------------- -->
	<!-- <h2>[이걸로 테스트중이야]</h2><br /> -->
	<div style = "border:1px solid; width:500px; height:500px; margin:0 auto">
      
      
      <!-- 선택한 메뉴나올부분 -->
      <table style="float:left; margin: 20px 10px 20px 20px" border='1' cellspacing='1' cellpadding='5'>
         
         <th style = "width:250px; height:250px"></th>
         
      </table>
      
      <!-- 메뉴리스트 뿌려주는데 -->
      <table style="float:right; margin: 10px 10px 0px 0px "  cellspacing='5' cellpadding='1'>
         <!-- <tr>
            <td style="width:100px">메뉴</td>
            <th>메뉴</th>
         </tr> -->
         <%for (int i = 0; i < 10; i++) {%>
         <tr>
            <td><input type="button" name="name" style="width:80px; height:30px"></td>
            <td><input type="button" name="name" style="width:80px; height:30px"></td>
         </tr>
         <%}%>
      </table>
      
      
      <!-- 잡다 -->
      <table style="width:250px; float:left; margin: 20px 0px 20px 20px" cellspacing='5' cellpadding='1'>
         
         <tr>
            <td><input type="button" value="1" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="2" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="3" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="지움" name="name" style="width:60px; height:30px"></td>
         </tr>
         <tr>
            <td><input type="button" value="4" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="5" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="6" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="내나" name="name" style="width:60px; height:30px"></td>
         </tr>
         <tr>
            <td><input type="button" value="7" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="8" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="9" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="돈돈" name="name" style="width:60px; height:30px"></td>
         </tr>
         <tr>
            <td><input type="button" value="0" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="확인" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="취소" name="name" style="width:60px; height:30px"></td>
            <td><input type="button" value="계산" name="name" style="width:60px; height:30px"></td>

         </tr>
         
      </table>
      
      
      <input type="button" value="주문하기" style="margin: 10px 5px 10px 25px; width:80px; height:60px">
      <input type="button" value="계산하기" style="width:80px; height:60px"> 
      
      

   </div>


	<!-- ------------------------------------------------------------- -->



</body>
</html>