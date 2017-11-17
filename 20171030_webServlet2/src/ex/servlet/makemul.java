package ex.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/makemul")
public class makemul extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String color = request.getParameter("color");
		int startDan = Integer.parseInt(request.getParameter("startDan"));
		int endDan = Integer.parseInt(request.getParameter("endDan"));

		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();

		

		if (startDan > endDan) {
			out.print("시작 단이 끝 단보다 더 큽니다.");
		} else {
			out.print("<table border = '1px' bgcolor = " + color + ">");
			for (int i = startDan; i < endDan + 1; i++) {
				out.print("<tr>");
				for (int j = 1; j < 10; j++) {
					out.print("<td>");
					out.print(i + "×" + j + "=" + (i * j));
					out.print("</td>");
				}
				out.print("</tr>");
			}

			out.print("</table>");
		}

	}

}
