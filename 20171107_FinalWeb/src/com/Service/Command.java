package com.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	public void execute(HttpServletRequest request, HttpServletResponse response);
	//�̹� �������� �˰� �� ���
	//Interface �� {} �ڵ� ��� �κ��� ����.
	//execute() �� ����ο� ����ó��(throws) �� ���ְ� �Ǹ� �� Command �� ��ӹ޴� ��� Ŭ�������� ������� ��� execute() ���� ����ó���� �ʿ��ϰ� �ȴ�. 
}
