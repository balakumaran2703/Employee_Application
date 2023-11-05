<%@page import="edu.ty.employeeapp.dto.Employee"%>
<%@page import="com.mysql.cj.xdevapi.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Employee</title>
<link rel="stylesheet" href="./style/style.css">
</head>
<body background="./doodle.jpg">
	<%
	Employee valid=(Employee)session.getAttribute("emp");
	if(valid!=null){
	if(valid.getDesignation().equalsIgnoreCase("HR")){
	%>
	<jsp:include page="/hrpage"></jsp:include>
      <%
	}else{
	%>
	<jsp:include page="/emppage"></jsp:include>
	<%
	}
	%>
            <ol class="nav_ol">
                <li class="nav_ol_list">
                    <a href="./id" class="nav_links"><span class="nav_links_div">Based on ID</span></a>
                </li>
                <li class="nav_ol_list">
                    <a href="./name" class="nav_links"><span class="nav_links_div">Based on Name</span></a>
                </li>
                <li class="nav_ol_list">
                    <a href="./mobile" class="nav_links"><span class="nav_links_div">Based on Mobile number</span></a>
                </li>
                <li class="nav_ol_list">
                    <a href="./job" class="nav_links"><span class="nav_links_div">Based on Designation</span> </a>
                </li>
                <li class="nav_ol_list">
                    <a href="./salary" class="nav_links"><span class="nav_links_div">Based on Salary</span></a>
                </li>
            </ol>
      <%
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