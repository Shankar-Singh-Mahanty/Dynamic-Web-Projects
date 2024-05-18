import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("user_name");
		String email = request.getParameter("user_email");
		String pw = request.getParameter("user_password");
		String cond = request.getParameter("condition");
		
		if(cond != null) {
			if(cond.equals("checked")) {
				if(email.equals("www.ssmahanty@gmail.com") && pw.equals("Shan@758")) {
					out.println("<h2>Welcome " + name + "</h2>");
					out.println("<h3>Entered credentials are verified sucessfully.</h3>");
					out.println("<h3>Login Sucessfull...</h3>");
				} else {
					out.println("<h3>OOPS !!! \n You Entered Credentials are not Matched</h3>");
				}
			} else {
				out.println("<h3>You have not accepted terms and conditions</h3>");
			}
		} else {
			out.println("<h3>You have not accepted terms and conditions</h3>");
		}
	}
}
