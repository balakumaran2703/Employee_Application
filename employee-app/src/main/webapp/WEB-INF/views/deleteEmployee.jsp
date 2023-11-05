<%@page import="java.util.ArrayList"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="java.awt.geom.Path2D"%>
<%@page import="com.mysql.cj.xdevapi.Session"%>
<%@page import="edu.ty.employeeapp.dto.Employee"%>
<%@page import="edu.ty.employeeapp.dao.EmployeeDaoImpl"%>
<%@page import="edu.ty.employeeapp.dao.Employeedao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./style/style.css">
</head>
<body background="./doodle.jpg">
		
		<%
		Employee valid=(Employee)session.getAttribute("emp");
		if(valid!=null){
		int id=Integer.parseInt(request.getParameter("id"));
		Employeedao dao= new EmployeeDaoImpl();
    	boolean res=dao.deleteEmployee(id);
    	if(res){
		%>
		<jsp:forward page="/display"></jsp:forward>
		<div class="container">
		<h1>        Employee Details Deleted Successfully!!!</h1>
		</div>
		
	    <%
		}else{
		%>
		<div class="container">
		<h1>Employee Details Can not Deleted </h1>
		</div>
		<jsp:forward page="/display"></jsp:forward>
		<%
		}
		}else{
		%>
		<div class="container">
		<h1>Invalid Access!!!</h1>
		</div>
		<jsp:forward page="/login"></jsp:forward>
		<%
		}
		%>
</body>
</html>