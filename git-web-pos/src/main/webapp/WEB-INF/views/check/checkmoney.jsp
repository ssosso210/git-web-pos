<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div style="text-align:left;margin-top:1px;padding:5px">
        	[ ��¥ : ${ total } �� ]
        	[ �����ڵ� : ${ current }  ]
        </div>

	<div id="pageContainer">

		<!-- <c:import url="/WEB-INF/views/include/header.jsp" />
 -->
		<div id="content">
			<br />
			<br />
			<div style='text-align: right'>
				<button>����</button>
				<button>����</button>
				<button>����</button>
			</div>
			<br />
			<br />
			<table border="1" align="center" width="700px">
				<tr style="height: 30px; background-color: orange">
					<td>�ð�</td>
					<td>����</td>
					<td>����ȣ</td>
					<td>����</td>
					<td>�ݾ�</td>
					<td>����</td>
				</tr>
				<c:forEach var="member" items="${ members }">
					<tr style="height: 30px">
						<td><c:url value="view.action" var="viewUrl">
								<c:param name="memberid" value="${ member.memberId }" />
							</c:url> <a href="${ viewUrl }">${ member.memberId }</a></td>
						<td>${ member.email }</td>
						<td>${ member.userType }</td>
						<td>${ member.active }</td>
						<td>${ member.regDate }</td>
						<td>${ member.regDate }</td>
					</tr>
				</c:forEach>
			</table>

		</div>
	</div>

</body>
</html>