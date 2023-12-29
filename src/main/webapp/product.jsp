<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier Management</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" 
crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>

        .box {
            color: black;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);

            padding: 15px;
            border-radius: 15px;
            width: 32%;
            height: 98%;
            margin-top: 40px;
            margin-bottom: 40px;
        }
        fieldset {
            border: 3px solid dodgerblue;
            border-radius: 15px;
        }
        legend {
            border: 1px solid dodgerblue;
            padding: 10px;
            text-align: center;
            background-color: dodgerblue;
            border-radius: 8px;
        }
        .inputBox {
            position: relative;
        }
        .inputUser {
            background: none;
            border: none;
            border-bottom: 1px solid blue;
            outline: none;
            color: blue;
            font-size: 15px;
            width: 100%;
            letter-spacing: 2px;
        }
        .labelInput {
            position: absolute;
            top: 0px;
            left: 0px;
            pointer-events: none;
            transition: .5s;
        }
        .inputUser:focus ~ .labelInput,
        .inputUser:valid ~ .labelInput {
            top: -20px;
            font-size: 12px;
            color: dodgerblue;
        }
        #data {
            border: none;
            padding: 8px;
            border-radius: 10px;
            outline: none;
            font-size: 15px;
        }
        #submit {
            background-image: linear-gradient(to right, rgb(0, 92, 197), rgb(90, 20, 220));
            width: 100%;
            border: none;
            padding: 15px;
            color: white;
            font-size: 15px;
            cursor: pointer;
            border-radius: 10px;
        }
        #submit:hover {
            background-image: linear-gradient(to right, rgb(0, 80, 172), rgb(80, 19, 195));
        }
    </style>
</head>
<body>
		<jsp:include page="navbar.jsp"></jsp:include>
		<div class="box">
        <form action="submit" method="post">
            <fieldset>
                <legend><b>Add Product Details</b></legend>
                <br>
                <div class="inputBox">
                    <label for="productId">Product ID:</label>
                    <input type="text" name="productId" id="productId" class="inputUser" required>
                </div>
                <br><br>
                <div class="inputBox">
                    <label for="productName">Product Name:</label>
                    <input type="text" name="productName" id="productName" class="inputUser" required>
                </div>
                <br><br>
                <div class="inputBox">
                    <label for="telephone">Price:</label>
                    <input type="tel" name="price" id="telephone" class="inputUser" required>
                </div>
            
                <br><br>
                <div class="inputBox">
                    <label for="stockQuantity">Stock Quantity:</label>
                    <input type="text" name="stockQuantity" id="stockQuantity" class="inputUser" required>
                </div>
                <br><br>
                <div class="inputBox">
                    <label for="category">Category:</label>
                    <input type="text" name="category" id="category" class="inputUser" required>
                </div>
                <br><br>
                <div class="inputBox">
                    <div class="inputBox">
                        <label for="manufacturer">Manufacturer:</label>
                        <input type="text" name="manufacturer" id="manufacturer" class="inputUser" required>
                    </div>
                </div>
                <br><br>
                <input type="submit" name="submit" id="submit">
            </fieldset>
        </form>
    </div>
		
</body>
</html>