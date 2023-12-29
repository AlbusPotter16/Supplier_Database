package com.webt;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public LoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String s1 = request.getParameter("username");
	     String s2 = request.getParameter("pass");
	     Database db=new Database();
	     if(db.selectData(s1, s2)) {
	    	 request.getRequestDispatcher("registerS.jsp").forward(request, response);
	     }
	     else {
	    	  out.println("Incorrect Username or Password !!!");
	}
	}

}
