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
<title>Register Page</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./style/style.css">
</head>
<body background="./doodle.jpg">
		
		<%
		Employee valid=(Employee)session.getAttribute("emp");
		if(valid!=null){
		Employeedao dao= new EmployeeDaoImpl();
    	int id= Integer.parseInt(request.getParameter("eid"));
		String name=request.getParameter("name");
		String phone_number=request.getParameter("phone_number");
		double sal=Double.parseDouble(request.getParameter("salary"));
		LocalDate doj=LocalDate.parse(request.getParameter("date_of_joinning"));
		LocalDate dob=LocalDate.parse(request.getParameter("date_of_birth"));
		String designation=request.getParameter("designation");
		String email=request.getParameter("email");
		//String password=name.substring(0, 3)+"@"+id+"_"+phone_number.substring(phone_number.length()-4);
		String password=request.getParameter("pswd");
		
		Employee emp=new Employee();
		emp.setId(id);
		emp.setName(name);
		emp.setMobile_number(phone_number);
		emp.setSalary(sal);
		emp.setDateofjoinning(doj);
		emp.setDateofbirth(dob); 
		emp.setDesignation(designation);
		emp.setEmail(email);
		emp.setPassword(password);
		boolean issaved=dao.addEmployee(emp);
		if(issaved){
		%>
		<jsp:include page="/hrpage"></jsp:include>
	<div class="container">
    	<h2>Employee Details Added!!!!!!</h2>
    </div>
    <%
	}
    else{
    	
    %>
    <div class="container">
    	<h2>Invalid Input!!!</h2>
    </div>
    <jsp:include page="/register"></jsp:include>
   <%
    }
    %>
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