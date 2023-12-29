package com.webt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public register() {
        super();
       
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s1 = request.getParameter("username");
	     String s2 = request.getParameter("email");
	     String s3 = request.getParameter("pass");
	     Database db=new Database();
	     if(db.insertData(s1, s2, s3)) {	    	 
	    	 request.getRequestDispatcher("registerform.jsp").forward(request, response);
	     }
	     else {
	    	 System.out.println("Failed !!");
	}

}
}