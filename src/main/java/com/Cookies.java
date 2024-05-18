package com;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class Cookies extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException {
        // Call doPost method for handling both GET and POST requests
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Creating cookies
        Cookie cookie1 = new Cookie("cookie1", "value1");
        Cookie cookie2 = new Cookie("cookie2", "value2");
        
        // Adding cookies to the response
        response.addCookie(cookie1);
        response.addCookie(cookie2);
        
        out.println("<html>");
        out.println("<head><title>Cookies Set</title></head>");
        out.println("<body>");
        out.println("<h2>Cookies Set</h2>");
        out.println("<table border='1'>");
        out.println("<tr><th>Name</th><th>Value</th></tr>");
        
        // Getting all cookies from the request
        Cookie[] cookies = request.getCookies();
        
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                out.println("<tr><td>" + cookie.getName() + "</td><td>" + cookie.getValue() + "</td></tr>");
            }
        } else {
            out.println("<tr><td colspan='2'>No cookies found</td></tr>");
        }
        
        out.println("</table>");
        out.println("</body></html>");
        out.close();
    }
}
