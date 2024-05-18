package com.Assignment;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Dispatcher extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		String cName = request.getParameter("country_name");
		String cPass = request.getParameter("country_password");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		if(cName.equals("India") && cPass.equals("Ind@758")) {
			request.setAttribute("cName-key", "Akhanda Bharat");
			RequestDispatcher rd = request.getRequestDispatcher("/Profile.jsp");
			rd.forward(request, response);
		} else {
			out.println("<h2 style='color: red;'>Country Name and Password not matched !</h2>");
			out.println("<h2 style='color: red;'>Please Re-enter the Credentils.</h2>");
			RequestDispatcher rd = request.getRequestDispatcher("/Index3.html");
			rd.include(request, response);
		}
	}
}
