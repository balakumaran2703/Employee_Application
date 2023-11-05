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
	<div class="container">
    	<h2>Welcome To EMP </h2>
    	<div class="box form_box">
    	 <form action="sign" method="post" class='login_form'>
    	 	<div class="field">
    	 		<div class="field_label">
    	 			<label for="mail">Email ID</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="email" id="email" name="email" required="required">
    	 		</div>
    	 	</div>
    		<div class="field">
    	 		<div class="field_label">
    	 			<label for="pswd">Password</label>
    	 			<sup>*</sup>
    	 		</div>
    	 		<div class="field_input">
    	 			<input type="password" id="pswd" name="pswd" required="required">
    	 		</div>
    	 	</div>
    	 	<br>
    	 	<div class="field">
    	 		<div class="field_input_submit">
    	 			<input type="submit" value="LOG IN">
    	 		</div>
    	 	</div>
    	  </form>
    	</div>
    </div>
</body>
</html>