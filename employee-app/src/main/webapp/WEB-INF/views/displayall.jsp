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
<title>Diaplay all Employee's</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./style/style.css">
</head>
<body background="./doodle.jpg">
		
		<%
		Employee valid=(Employee)session.getAttribute("emp");
		if(valid!=null){
			
		Employeedao dao= new EmployeeDaoImpl();
    	ArrayList<Employee> allemployee=dao.getAllEmployee();
	
		if(valid.getDesignation().equalsIgnoreCase("HR")){
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
	<section class="nav">
        <div class="nav_div sms"><a class="sms_a" id="sms" href="">Employee Application</a></div>

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
	<%
	}
	%>
	<div class="tab">
	<table border= align=center class="table1">
	<tr>
	<th>Employee Id</th>
	<th>Name</th>
	<th>Mobile_Number</th>
	<th>salary</th>
	<th>Date of Joining</th>
	<th>Date of Birth</th>
	<th>Designation</th>
	<th>Email</th>
	<%
	if(valid.getDesignation().equalsIgnoreCase("HR")){
	%>
	<th colspan='2'>Action</th>
	<%
	}
	%>
	</tr>
	<%
	for(Employee employee:allemployee){
	%>
	<tr>
	<td><%=employee.getId() %></td>
	<td><%=employee.getName() %></td>
	<td><%=employee.getMobile_number() %></td>
	<td><%=employee.getSalary() %></td>
	<td><%=employee.getDateofjoinning() %></td>
	<td><%=employee.getDateofbirth() %></td>
	<td><%=employee.getDesignation() %></td>
	<td><%=employee.getEmail() %></td>
	<%
	if(valid.getDesignation().equalsIgnoreCase("HR")){
	%>
	<td><a href='./edit?id=<%=employee.getId() %>'>Edit</a></td>
	<td><a href='./delete?id=<%=employee.getId() %>'>Delete</a></td>
	<%
	}
	%>
	</tr>
	 <%
	}
	%>
	</table>
	</div>
    <%
	}
	else{
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