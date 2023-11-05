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
		Employeedao dao= new EmployeeDaoImpl();
    	String mobile_number=request.getParameter("mobile_number");
		Employee e=new Employee();
		Employee find=dao.getEmployeemobile(mobile_number);
		if(find!=null){
		%>
		<jsp:include page="/search"></jsp:include>
            <h2>Based on Mobile Number</h2>
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
	</tr>
	<tr>
	<td><%=find.getId() %></td>
	<td><%=find.getName() %></td>
	<td><%=find.getMobile_number() %></td>
	<td><%=find.getSalary() %></td>
	<td><%=find.getDateofjoinning() %></td>
	<td><%=find.getDateofbirth() %></td>
	<td><%=find.getDesignation() %></td>
	<td><%=find.getEmail() %></td>
	</tr>
	</table>
	</div>
    <%
	}
    else{
    	
    %>
    <div class="container">
    	<h2>Invalid Input!!!</h2>
    	<h2>Student Data is Not Present for Mobile Number <%=mobile_number %></h2>
    </div>
    <jsp:include page="/mobile"></jsp:include>
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