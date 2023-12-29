<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Supplier Management</title>
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <style>
                #img1 {
            float: left;
            margin-right: 40px;
            width: 350px;
            height: 290px;
            border: 3px solid red;
            border-radius: 4px;
        }

        #img2 {
            float: right;
            margin-left: 10px;
            width: 330px;
            height: 300px;
            border: 3px solid red;
            border-radius: 4px;
        }

        #img3 {
            float: left;
            margin-right: 10px;
            width: 360px;
            height: 330px;
            border: 3px solid red;
            border-radius: 4px;
        }

      

        .social-icons a {
            width: 28px;
            height: 28px;
            display: inline-flex;
            color: #fff;
            background-color: rgba(255, 255, 255, 0.25);
            text-decoration: none;
            align-items: center;
            justify-content: center;
            border-radius: 100px;
        }

        .social-icons a:hover {
            background-color: #fff;

        }

        .navbar-brand {
            font-size: 28px;
            font-weight: 700;
        }

        footer {
            background: #082032;
            background-position: center;

        }

        footer .footer-top {
            padding-top: 40px;
            padding-bottom: 20px;

        }


        footer .navbar-brand {
            color: #fff;
        }

        footer p {
            color: #ADB3B9;
        }

        footer .social-icons a {
            width: 50px;
            height: 50px;
            font-size: 20px;
            margin-left: 4px;
            margin-right: 4px;
        }
    </style>
</head>

<body>
    <jsp:include page="navbar.jsp"></jsp:include>
	<h1 style="text-align: center; margin-top: 50px;">Welcome to Our Supplier Management Platform</h1>
    <h1 style="text-align: center;margin-top: 50px;">About Us</h1><br><br>
    <br>
    <div class="see" style="margin-left: 80px;">
        <img src="./assets/1.jpg" alt="" id="img1" style="margin-right:40px;">
        <div class="con1" style="margin-right: 90px; font-size: 18px;">
            <br>
            <br>
            <p>            </p>
            <h2 class="featurette-heading">It all started with iCoder's Idea. </h2>
            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta feliseuismod
                semper.<br>Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus,
                tellus ac cursus commodo.</p><br><br><br>
        </div>
    </div>
    <!-- two -->
    <div class="see2" style="margin-right: 80px;">
        <br><br><br>
        <img src="./assets/2.jpg" alt="" id="img2" height="200px;" style="margin-left: 40px;">
        <div class="con2" style="margin-left: 90px; font-size: 18px;">
            <br>
            <br>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate quos eius suscipit mollitia sunt
                reiciendis
                non atque reprehenderit. Veritatis iusto pariatur ratione amet ducimus quis sint! Obcaecati quisquam id
                eius!
            </p>
            <h2 class="featurette-heading">It all started with iCoder's Idea.
                   </h2>
            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta feliseuismod
                semper.Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus,
                tellus ac cursus commodo.</p>
        </div><br><br><br><br><br>
    </div>
        <!-- three -->

        <div class="see" style="margin-left: 80px;"><br><br><br>
            <img src="./assets/3.jpg" alt="" id="img3" style="margin-right:40px;">
            <div class="con3" style="margin-right: 90px; font-size: 18px;">
                <br>
                <br>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate quos eius suscipit mollitia sunt<br>
                    reiciendis
                    non atque reprehenderit. Veritatis iusto pariatur ratione amet ducimus quis sint! Obcaecati quisquam id
                    eius!
                </p>
                <h2 class="featurette-heading">It all started with iCoder's Idea. </h2>
                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta feliseuismod
                    semper.<br>Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus,
                    tellus ac cursus commodo.</p><br><br><br><br>
            </div>
        </div>
     <div style="margin-top:10%;">
    <footer style="text-align: center;">
        <p>&copy; 2023 Your Company Name. All rights reserved.</p>
    </footer>
    </div>
</body>
</html>
