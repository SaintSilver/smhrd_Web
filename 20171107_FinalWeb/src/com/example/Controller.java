package com.example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.webDAO;
import com.Service.Command;
import com.Service.DeleteService;
import com.Service.JoinService;
import com.Service.LoginService;
import com.Service.MsgInsertService;
import com.Service.UpdateService;

@WebServlet("*.do")
public class Controller extends HttpServlet {
	
	HashMap<String, Command> map = new HashMap<String, Command>();
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		map.put("Login.do", new LoginService());
		map.put("Join.do", new JoinService());
		map.put("messageInsert.do", new MsgInsertService());
		map.put("update.do", new UpdateService());
		map.put("delete.do", new DeleteService());
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println("요청한 uri : " + uri);

		String path = request.getContextPath();
		System.out.println("프로젝트명 : " + path);

		String req_uri = uri.substring(path.length() + 1); // +1은 맨 마지막 문자까지 표현해주기 위해서이다.
		System.out.println("요청식별값: " + req_uri);

		//map.get(req_uri).execute(request, response);
		//아래 코드는 바로 윗줄 단 한 줄로 대체가 가능하다. init(); 메소드 참고
		
		Command command = null;
		
		if (req_uri.equals("Login.do")) {
			
			command = new LoginService();
			
		} else if (req_uri.equals("Join.do")) {
			
			command = new JoinService();

		} else if (req_uri.equals("messageInsert.do")) {
			
			command = new MsgInsertService();
						
		} else if (req_uri.equals("update.do")) {
			
			command  = new UpdateService();
			
		} else if (req_uri.equals("delete.do")) {
			
			command  = new DeleteService();
						
		}

		command.execute(request, response);
	}

}
