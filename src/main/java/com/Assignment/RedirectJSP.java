package com.Assignment;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RedirectJSP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String page1 = request.getParameter("page1");
        String page2 = request.getParameter("page2");
        String page3 = request.getParameter("page3");

        if (!page1.isEmpty()) {
            response.sendRedirect("https://www.google.com/");
        } else if (!page2.isEmpty()) {
            response.sendRedirect("https://www.facebook.com/");
        } else if (!page3.isEmpty()) {
            response.sendRedirect("https://cgu-odisha.ac.in/");
        } else {
        	// Set content type to HTML
            response.setContentType("text/html");
            // Handle the case when all parameters are empty or not present
        	response.getWriter().println("<h2 style='color: red;'>Invalid Input !!!</h2>");
        }
	}

}
