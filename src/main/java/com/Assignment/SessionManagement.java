package com.Assignment;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class SessionManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		String action = request.getParameter("action");

        if ("logout".equals(action)) {
            // Invalidate the session and redirect to a logout page
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();
            }
            response.sendRedirect("logout.jsp");
            return;
        }
        
		HttpSession session = request.getSession();
		session.setAttribute("name-key", "Shankar");

        if ("myProfile".equals(action)) {
            request.getRequestDispatcher("myProfile.jsp").forward(request, response);
        } else if ("aboutUs".equals(action)) {
            request.getRequestDispatcher("aboutUs.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
	}
}
