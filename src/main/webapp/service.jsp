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

    
</head>
<body>
		<jsp:include page="navbar.jsp"></jsp:include><br><br><br>
		<div><h1 style="font-family: 'Kaushan Script', cursive; text-align:center;color: black;letter-spacing:2px;">Product Details
		</h1></div>
		<br><br><br>
		
		<div style="font-family: 'Kaushan Script', cursive; text-align:center;color: blue;letter-spacing:2px;"> 
		<h3><a href="product.jsp"  style="color: blue;" >Add More Products</a></h3>
		</div><br><br>
        <center>
       
        <table border="2" >
            <tr>
                <th>Product Id</th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Stock Quantity</th>
                <th>Category</th>
                <th>Manufacturer</th>
                <th>Delete Product</th>
                <th>Update Product</th>
            </tr>

            <%
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver"); // register driver class
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "kiet123");
                PreparedStatement ps = con.prepareStatement("select * from product_master");
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
            %>
            
            <tr>
                <td><%= rs.getString("product_id") %></td>
                <td><%= rs.getString("product_name") %></td>
                <td><%= rs.getString("price") %></td>
                <td><%= rs.getString("stock_quantity") %></td>
                <td><%= rs.getString("category") %></td>
                <td><%= rs.getString("manufacturer") %></td>
                <td><button onclick="deleteEntry('<%= rs.getString("product_id") %>')" class="btn btn-primary" >Delete</button></td>
                <td><button onclick="updateEntry('<%= rs.getString("product_id") %>')" class="btn btn-primary">Update</button></td>
            </tr>
            <%
                } // while loop complete here
            } catch (Exception e) {
                e.printStackTrace(); // Print the stack trace for debugging
            }
            %>
        </table>
    </div>
    </center>
		<script>
		function deleteEntry(product_id) {
            if (confirm("Are you sure you want to delete this entry?")) {
            	console.log("asgfasd");
                var xhr = new XMLHttpRequest();
                xhr.open("GET", "D?product_id=" + product_id, true);
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4) {
                        if (xhr.status == 200) {                            
                            console.log("Entry deleted successfully");
                            location.reload();
                        } else {
                            console.error("Failed to delete entry");
                        }
                    }
                };
                xhr.send();
            }
        }
    function updateEntry(product_id) {
        window.location.href = "UpdateProduct.jsp?product_id=" + product_id;
    }
    </script>
</body>
</html>