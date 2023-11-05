<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="edu.ty.employeeapp.dto.Employee"%>
<%@page import="com.mysql.cj.xdevapi.Session"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Employee emp=(Employee)session.getAttribute("emp");
	if(emp!=null){
		session.removeAttribute("emp");
		session.invalidate();
	%>
	<jsp:forward page="/login"></jsp:forward>
	<%
	}else{
	%>
	<h1>Invalid Access!!!</h1>
	<jsp:forward page="/login"></jsp:forward>
	<%
	}
	%>
</body>
</html>