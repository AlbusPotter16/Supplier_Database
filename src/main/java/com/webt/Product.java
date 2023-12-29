package com.webt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Product
 */
@WebServlet("/submit")
public class Product extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Product() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s1 = request.getParameter("productId");
	     String s2 = request.getParameter("productName");
	     String s3 = request.getParameter("price");
	     String s4 = request.getParameter("stockQuantity");
	     String s5 = request.getParameter("category");
	     String s6 = request.getParameter("manufacturer");
	     Database db=new Database();
	     if(db.insertProduct(s1, s2, s3,s4,s5,s6)) {	    	 
	    	 request.getRequestDispatcher("service.jsp").forward(request, response);
	     }
	     else {
	    	 System.out.println("Failed !!");
	}
	}

}
