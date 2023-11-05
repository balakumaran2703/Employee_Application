<%@page import="edu.ty.employeeapp.dto.Employee"%>
<%@page import="com.mysql.cj.xdevapi.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Human Resource Page</title>
<link rel="stylesheet" href="./style/style.css">
</head>
<body background="./doodle.jpg">
	<%
	Employee valid=(Employee)session.getAttribute("emp");
	if(valid!=null){
	%>
	<section class="nav">
        <div class="nav_div sms"><a class="sms_a" id="sms" href="">Employee Application</a></div>

        <div class="nav_div">
            <ol class="nav_ol">
                <li class="nav_ol_list">
                    <a href="./search" class="nav_links"><span class="nav_links_div">Search Employee</span></a>
                </li>
                <li class="nav_ol_list">
                    <a href="./register" class="nav_links"><span class="nav_links_div">Add new Employee</span></a>
                </li>
                <li class="nav_ol_list">
                    <a href="./display" class="nav_links"><span class="nav_links_div">Display all Employees</span> </a>
                </li>
                <li class="nav_ol_list">
                    <a href="./logout" class="nav_links"><span class="nav_links_div">Logout</span></a>
                </li>
            </ol>
        </div>
    </section>
	
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