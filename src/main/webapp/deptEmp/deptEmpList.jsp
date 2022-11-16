<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import ="vo.*" %>

<%
	ArrayList<DeptEmp> list = new ArrayList<DeptEmp>();
	/*
	while(rs.next()) {
		DeptEmp de = new DeptEmp();
		de.emp = new Employee();
		de.dept = new Department();
	}
	*/
%>
<%
	// DeptEmp.class가 없다면
	// deptEmpMapList.jsp
	ArrayList<HashMap<String, Object>> mapList = new ArrayList<HashMap<String, Object>>();
	/*
	while(rs.next()) {
		//...
	}
	*/
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>