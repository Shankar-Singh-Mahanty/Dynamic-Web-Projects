package com.Assignment;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h2>Welcome to Register Servlet Form by SSM</h2>");
		
		String name = request.getParameter("user_name");
		String pw = request.getParameter("user_password");
		String email = request.getParameter("user_email");
		String gender = request.getParameter("user_gender");
		String cond = request.getParameter("condition");
		
		if(cond != null) {
			if(cond.equals("checked")) {
				out.println("<h3> Name : " + name + "</h3>");
				out.println("<h3> Password : " + pw + "</h3>");
				out.println("<h3> Email : " + email + "</h3>");
				out.println("<h3> Gender : " + gender + "</h3>");
			} else {
				out.println("<h3>You have not accepted terms and conditions</h3>");
			}
		} else {
			out.println("<h3>You have not accepted terms and conditions</h3>");
		}
	}
}
