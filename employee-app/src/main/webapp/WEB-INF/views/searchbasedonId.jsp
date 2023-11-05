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
	%>
	<jsp:include page="/search"></jsp:include>
       <h2>Based on Employee ID</h2>
	<div class="container">
    	<div class="box form_box">
    	 <form action="get" method="get" class='login_form'>
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="eid">Employee ID</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="number" id="eid" name="eid" required="required">
    	 		</div>
    	 	</div>
   			<br>
    	 	<div class="field">
    	 		<div class="field_input_submit">
    	 			<input type="submit" value="Get">
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