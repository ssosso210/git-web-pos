<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<title>재고 신청</title>
</head>
<body>

	<div id="pageContainer">
		<div id="inputcontent">
			<br /> <br />
			<div id="inputmain">
				<div class="inputsubtitle">재고 정보</div>
				<form action="#" method="post">
					<!-- 상대경로표시 -->
					<table>
						<tr>
							<th>날짜</th>
							<td><input type="" name="stockRegDate" style="width: 280px" /></td>
						</tr>
						<tr>
							<th>재고코드</th>
							<td></td>
						</tr>
						<tr>
							<th>재고이름</th>
							<td></td>
						</tr>
						<tr>
							<th>원가</th>
							<td></td>
						</tr>
						<tr>
							<th>수량</th>
							<td><input type="number" name="stockNumber"
								style="width: 280px" /></td>
							<div class="buttons">
								<!-- 확인누르면 합계에 계산된 값 표시-->
								<input type="submit" value="확인" style="height: 25px" />
							</div>

						</tr>
						<tr>
							<th>합계</th>
							<td></td>
							<th></th>
						</tr>

					</table>
				</form>

				<div class="buttons">
					<input type="submit" value="신청" style="height: 25px" />
				</div>

				<div class="buttons">
					<input type="submit" value="취소" style="height: 25px" />
				</div>

			</div>
		</div>

	</div>

</body>
</html>