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
		//중복된 데이터를 받아올 때(checkbox, select 단 두 가지만 여러개의 값을 선택할 수 있다.)
		String hobby_="";
		
		for (int i = 0; i < hobby.length; i++) {
			hobby_+=hobby[i];
		}
		
		String country = request.getParameter("country");
		
		System.out.println(gender+" "+hobby_+" "+country);
	}

}
