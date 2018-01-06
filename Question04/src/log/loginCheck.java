package log;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginCheck")
public class loginCheck extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = "smart";
		String pw = "1234";
		
		if(id.equals(request.getParameter("id")) && 
		   pw.equals(request.getParameter("pw"))) {
			
			HttpSession session = request.getSession();
			session.setAttribute("id",id); 
			response.sendRedirect("main.jsp");
			
		} else {
			response.sendRedirect("loginForm.html");
		}
			
	}

}
