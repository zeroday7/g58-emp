<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import="vo.Department"%>
<%
	// 1)
	request.setCharacterEncoding("utf-8");
	String deptNo = request.getParameter("deptNo");
	String deptName = request.getParameter("deptName");
	if(deptNo == null || deptName == null || deptNo.equals("") || deptName.equals("")) {
		response.sendRedirect(request.getContextPath()+"/dept/insertDeptForm.jsp");
		return;
	}
	Department dept = new Department();
	dept.deptNo = deptNo;
	dept.deptName = deptName;
	
	// 2)
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/employees","root","java1234");
	String sql = "UPDATE departments SET dept_name = ? WHERE dept_no = ?";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1,dept.deptName);
	stmt.setString(2,dept.deptNo);
	int row = stmt.executeUpdate();
	response.sendRedirect(request.getContextPath()+"/dept/deptList.jsp");
	// 3)	
%>
