package com.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ex12DAO;

@WebServlet("/ex12Login")
public class ex12Login extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		
		
		try{
		//동적 로딩
			ex12DAO dao = new ex12DAO();
			ResultSet rs = dao.Login(id, pw);
			
		if(rs.next()){ // There is only one row. So using "if" instead of "while". 
			String getId = rs.getString(1); //parameter could be name of column. ex) rs.getString("id")
			String getPw = rs.getString(2);
			String getNick = rs.getString(3);
			
			HttpSession session = request.getSession(); //20171103 session 수업 참고
			session.setAttribute("id",id);//20171103 session 수업 참고 
			
			/*20171103 Modified*/
			//response.sendRedirect("ex12LoginSuccess.jsp?id="+getId);
			//기존에 쿼리스트링을 통해 아이디 값을 알아내었다면 
			//이제는 session 에 아이디가 저장되게 된다.
			//따라서 아래 코드를 통해 다음으로 이동한 페이지에서 session 을 통해 아이디를 받아올 수 있다.  
			
			response.sendRedirect("ex12LoginSuccess.jsp");
		} else {
			response.sendRedirect("ex12LoginFail.jsp");
		}
		
		} catch(Exception e) {
			
		}

				
//		if(id.equals("smart") && pw.equals("123")){
//			response.sendRedirect("ex12LoginSuccess.jsp");
//		}else{
//			response.sendRedirect("ex12LoginFail.jsp");
//		}
		
	}

}
