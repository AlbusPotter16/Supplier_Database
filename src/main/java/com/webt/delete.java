package com.webt;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteDetails
 */
@WebServlet("/D")
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public delete() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     try {
	         String product_id = request.getParameter("product_id");
	         System.out.println("Servlet received request with product_id: " + product_id);

	         Class.forName("com.mysql.cj.jdbc.Driver");
	         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "kiet123");
	         PreparedStatement ps = con.prepareStatement("DELETE FROM product_master WHERE product_id = ?");
	         ps.setString(1, product_id);
	         int count = ps.executeUpdate();
	         if (count > 0) {
	             response.getWriter().write("Entry deleted successfully");
	         } else {
	             response.getWriter().write("Deletion failed");
	         }
	         con.close();
	     } catch (Exception e) {
	         response.getWriter().write("Error: " + e.getMessage());
	     }
	}

}
