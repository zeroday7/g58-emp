<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertDeptForm</title>
</head>
<body>
	<!-- 메뉴 partial jsp 구성 -->
	<div>
		<jsp:include page="/inc/menu.jsp"></jsp:include>
	</div>
	<h1>부서추가</h1>
	
	<!-- msg 파라메타값이 있으면 출력 -->
	<%
		if(request.getParameter("msg") != null) {
	%>
			<div><%=request.getParameter("msg")%></div>
	<%		
		}
	%>
	
	<form method="post" action="<%=request.getContextPath()%>/dept/insertDeptAction.jsp">
		<table border="1">
			<tr>
				<td>부서번호</td>
				<td><input type="text" name="deptNo"></td>
			</tr>
			<tr>
				<td>부서이름</td>
				<td><input type="text" name="deptName"></td>
			</tr>
		</table>
		<button type="submit">추가</button>
	</form>
</body>
</html>