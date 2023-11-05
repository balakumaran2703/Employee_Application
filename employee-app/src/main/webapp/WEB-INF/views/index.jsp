<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>

	<link rel="stylesheet" href="./style/style.css">
    <link rel="stylesheet" href="">  
    <link rel="stylesheet" href=""> 
</head>
<body background="./doodle.jpg">
		<section class="nav">
        <div class="nav_div sms"><a class="sms_a" id="sms" href="">Employee App</a></div>

        <div class="nav_div">
            <ol class="nav_ol">
                <li class="nav_ol_list">
                    <a href="./login" class="nav_links"><span class="nav_links_div"> Login</span></a>
                </li>
                <li class="nav_ol_list">
                    <a href="./about" class="nav_links"><span class="nav_links_div">About US</span> </a>
                </li>
                <li class="nav_ol_list">
                    <a href="./contact" class="nav_links"><span class="nav_links_div">Contact US</span></a>
                </li>	
            </ol>
            
        </div>
    </section>
    <div class="area">
   	<h1>This is application developed based on Servlet & JSP.In this Application We can done the CRUD operation for Employee's such as Add, Update, Delete and Search based on (Id,Name,Mobile Number,Designation and Salary).Also It's a User Dependent Application, so Session Operation are done.</h1>
	</div>
</body>
</html>