<%@page import="com.mysql.cj.xdevapi.Session"%>
<%@page import="java.awt.geom.Path2D"%>
<%@page import="edu.ty.employeeapp.dto.Employee"%>
<%@page import="edu.ty.employeeapp.dao.EmployeeDaoImpl"%>
<%@page import="edu.ty.employeeapp.dao.Employeedao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./style/style.css">
</head>
<body  background="./doodle.jpg">
		<% 
		Employeedao dao= new EmployeeDaoImpl();
		String email=request.getParameter("email");
		String password=request.getParameter("pswd");
		Employee emp= dao.loginvalidate(email, password);
		if(emp != null){
			session.setAttribute("emp",emp);
			if(emp.getDesignation().equalsIgnoreCase("HR")){
		%>
	<section class="nav">
        <div class="nav_div sms"><a class="sms_a" id="sms" href="./login">Employee Application</a></div>

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
    <div class="container">
    	<h2>WELCOME <%= emp.getName()%></h2>
    	<h2>HR Login</h2>
    	
    </div>
    <%
		}
    else {
    %>
    <section class="nav">
        <div class="nav_div sms"><a class="sms_a" id="sms" href="./login">Employee Application</a></div>

        <div class="nav_div">
            <ol class="nav_ol">
                <li class="nav_ol_list">
                    <a href="./search" class="nav_links"><span class="nav_links_div">Search Employee</span></a>
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
    <div class="container">
    	<h2>WELCOME <%= emp.getName()%></h2>
    	<h2>EMPLOYEE Login</h2>
    	
    </div>
    <%
    }
	%>
    <% 
	}
    else {
    %>
    <div class="container">
    	<h2>INVALID CREDENTIALS!!!</h2>
    </div>
    <jsp:include page="/login"></jsp:include>
    <%
    }
    %>
    
</body>
</html>