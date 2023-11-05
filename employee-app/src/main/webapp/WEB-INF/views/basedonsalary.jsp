<%@page import="java.util.ArrayList"%>
<%@page import="edu.ty.employeeapp.dto.Employee"%>
<%@page import="edu.ty.employeeapp.dao.EmployeeDaoImpl"%>
<%@page import="edu.ty.employeeapp.dao.Employeedao"%>
<%@page import="com.mysql.cj.xdevapi.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Employee</title>
<link rel="stylesheet" href="./style/style.css">
<style>
.tab {
    DISPLAY: flex;
/*     ALIGN-ITEMS: center; */
    JUSTIFY-CONTENT: center;
    border:none;
}
td,th{
height: 45px;
width: 150px;
padding-left: 5px;
}
.table1{
margin-top: 50px}
</style>
</head>
<body background="./doodle.jpg">
		<%
		Employee valid=(Employee)session.getAttribute("emp");
		if(valid!=null){
		%>
		<%!private static ArrayList<Employee> allemployee=null; %>
		<%
		Employeedao dao= new EmployeeDaoImpl();
		allemployee=dao.getAllEmployee();
		double hrange=Double.parseDouble(request.getParameter("highsalary"));
		double lrange=Double.parseDouble(request.getParameter("lowsalary"));
		ArrayList<Employee> salarybetween=new ArrayList<>();
		for(Employee employee:allemployee){
			if(employee.getSalary()<=hrange&&employee.getSalary()>=lrange){
				salarybetween.add(employee);
			}
		}
		if(salarybetween.isEmpty()){
		%>
		<h2>No Employee is Available on this Range</h2>
		<jsp:include page="/salary"></jsp:include>
		<%
		}else{
		%>
	<jsp:include page="/search"></jsp:include>
            <h2>Based on Salary</h2>
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
	<th colspan='2'>Action</th>
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
	<td><a href='./edit?id=<%=employee.getId() %>'>Edit</a></td>
	<td><a href='./delete?id=<%=employee.getId() %>'>Delete</a></td>
	</tr>
	 <%
	}
	%>
	</table>
	</div>
    <%} 
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