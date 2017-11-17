package com.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	public void execute(HttpServletRequest request, HttpServletResponse response);
	//이번 수업으로 알게 된 사실
	//Interface 는 {} 코드 블록 부분이 없다.
	//execute() 의 선언부에 예외처리(throws) 를 해주게 되면 이 Command 를 상속받는 모든 클래스에서 만들어진 모든 execute() 에도 예외처리가 필요하게 된다. 
}
