package ex.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ex07EtcInput")
public class ex07EtcInput extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String gender = request.getParameter("gender");
		
		String[] hobby = request.getParameterValues("hobby");
		//�ߺ��� �����͸� �޾ƿ� ��(checkbox, select �� �� ������ �������� ���� ������ �� �ִ�.)
		String hobby_="";
		
		for (int i = 0; i < hobby.length; i++) {
			hobby_+=hobby[i];
		}
		
		String country = request.getParameter("country");
		
		System.out.println(gender+" "+hobby_+" "+country);
	}

}
