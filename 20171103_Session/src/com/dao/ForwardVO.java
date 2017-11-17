package com.dao;

public class ForwardVO {
	String name;
	String pw;
	String nick;
	
	public ForwardVO(String name, String pw, String nick) {
		super();
		this.name = name;
		this.pw = pw;
		this.nick = nick;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}
	
	
	
	
}
