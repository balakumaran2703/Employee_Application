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
    	Employee e=dao.getEmployee(id);
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
    <div class="container">
    	<div class="box form_box">
    	 <form action="update" method="get" class='login_form'>                                      
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="eid">Employee ID</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="number" value=<%=e.getId()  %> name="eid" required="required">
    	 		</div>
    	 	</div>
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="mail">Employee Name</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="text" value=<%=e.getName()%> name="name" required="required">
    	 		</div>
    	 	</div>
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="mail">Phone_number</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="number" value=<%=e.getMobile_number()%> name="Phone_number" required="required" >
    	 		</div>
    	 	</div>
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="mail">Salary</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="number" value=<%=e.getSalary()%> name="salary" required="required">
    	 		</div>
    	 	</div>
    	 <%--	 <div class="field">
    	 		<div class="field_label">
    	 			<label for="mail">Date of Joining</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="date" value=<%=e.getDateofjoinning() name="date_of_joinning" required="required">
    	 		</div>
    	 	</div>
    		 <div class="field">
    	 		<div class="field_label">
    	 			<label for="mail">Date of Birth</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="date" value=<%=e.getDateofbirth()%> name="date_of_birth" required="required">
    	 		</div>
    	 	</div> --%>
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="mail">Designation</label>
    	 			<sup>*</sup>
    	 		</div> 
    	 		<div class="field_input">
    	 			<input type="text" value=<%=e.getDesignation()%> name="designation" required="required" >
    	 		</div>
    	 	</div>
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="mail">Email ID</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="email" value=<%=e.getEmail()%> name="email" required="required">
    	 		</div>
    	 	</div>
    		<div class="field">
    	 		<div class="field_label">
    	 			<label for="pswd">Password</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="password" value=<%=e.getPassword()%> name="pswd" required="required">
    	 		</div>
    	 	</div>
    	 	<br>
    	 	<div class="field">
    	 		<div class="field_input_submit">
    	 			<input type="submit" value="UPDATE">
    	 		</div>
    	 	</div>
    	  </form>
    	</div>
    </div>
	
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