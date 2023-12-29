<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier Management</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" 
crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	   <jsp:include page="navbar.jsp"></jsp:include>
	  <div class="container">
        <div class="form_box">
            <div class="btn_box">
                <div id="btn"></div>
                <button type="button" class="toggle_btn" onclick="login()">Log in</button>
                <button type="button" class="toggle_btn" onclick="register()">Register</button>
            </div>
            <div class="social_icons">
                <a href=""><ion-icon class="icon" name="logo-google"></ion-icon></a>
                <a href=""><ion-icon class="icon" name="logo-facebook"></ion-icon></a>
                <a href=""><ion-icon class="icon" name="logo-twitter"></ion-icon></a>
            </div>
            <form action="login" method="post" id="login" class="input_group">
                <div class="form_div">
                    <input type="text" class="form_input" placeholder=" " name="username">
                    <label for="" class="form_label">User Name</label>
                </div>
                <div class="form_div">
                    <input type="password" class="form_input" placeholder=" " name="pass">
                    <label for="" class="form_label">Password</label>
                </div>
                <br><br>
                <button type="submit" class="submit_btn" >Log in</button>
            </form>
            <form action="register" method="post" id="register" class="input_group" >
                <div class="form_div">
                    <input type="text" class="form_input" placeholder="" name="username">
                    <label for="" class="form_label">User Name</label>
                </div>
                <div class="form_div">
                    <input type="email" class="form_input" placeholder="" name="email">
                    <label for="" class="form_label">Email</label>
                </div>
                <div class="form_div">
                    <input type="password" class="form_input"  placeholder="" name="pass">
                    <label for="" class="form_label">Password</label>
                </div>
              	<br><br>
                <button type="submit" class="submit_btn">Register</button>
            </form>
        </div>
    </div>	
</body>
<script >var log = document.getElementById("login");
var reg = document.getElementById("register");
var btn = document.getElementById("btn");

function register(){
    log.style.left = "-400px";
    reg.style.left = "50px";
    btn.style.left = "110px";
    
}

function login(){
    log.style.left = "50px";
    reg.style.left = "450px";
    btn.style.left = "0";
    
}</script>
</html>