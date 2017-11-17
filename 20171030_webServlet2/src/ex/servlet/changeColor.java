package ex.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/changeColor")
public class changeColor extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String inputColor = request.getParameter("color");
		System.out.println(inputColor);
		
		/*response.setContentType("text/html;charset=euc-kr");
        PrintWriter out = response.getWriter();
        out.print("접속한 client의 IP"+clientIP);*/

		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.print("<body bgcolor = "+inputColor+">");
		out.print("</body>");
		
	}

}
