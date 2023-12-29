package com.webt;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateDetails
 */
@WebServlet("/UpdateDetails")
public class UpdateDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateDetails() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String product_id = request.getParameter("productId");
            String product_name = request.getParameter("productName");
            String price = request.getParameter("price");
            String stock_quantity = request.getParameter("stockQuantity");
            String category = request.getParameter("category");
            String manufacturer = request.getParameter("manufacturer");
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "kiet123");
            PreparedStatement ps = con.prepareStatement("UPDATE product_master SET product_name = ?, price = ?, stock_quantity = ?, category = ?, manufacturer = ? WHERE product_id = ?");
            ps.setString(1, product_name);
            ps.setString(2, price);
            ps.setString(3, stock_quantity);
            ps.setString(4, category);
            ps.setString(5, manufacturer);
            ps.setString(6, product_id);
            int count = ps.executeUpdate();
            if (count > 0) {
                response.getWriter().write("Entry updated successfully");
                request.getRequestDispatcher("service.jsp").forward(request, response);
            } else {
                response.getWriter().write("Update failed");
            }
            con.close();
        } catch (Exception e) {
            response.getWriter().write("Error: " + e.getMessage());
        }

	}

}
