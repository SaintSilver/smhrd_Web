package ex.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex08Cal")
public class ex08Cal extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Double left = Double.parseDouble(request.getParameter("left"));
		String operator = request.getParameter("operator");
		Double right = Double.parseDouble(request.getParameter("right"));
		Double result = 0d;
		
		if(operator.equals("гл")) {
			result = left+right;
		} else if (operator.equals("гн")) {
			result = left-right;
		} else if (operator.equals("б┐")) {
			result = left*right;
		} else if (operator.equals("б└")) {
			result = left/right;
		}
		
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.print("<h3>");
		out.print(left+operator+right+"="+result);
		out.print("<h3>");
	}

}
