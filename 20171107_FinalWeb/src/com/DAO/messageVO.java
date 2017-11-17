package com.DAO;

public class messageVO {
	String num;
	String send_name;
	String content;
	String date;
	
	public messageVO(String num, String send_name, String content, String date) {
		super();
		this.num = num;
		this.send_name = send_name;
		this.content = content;
		this.date = date;
	}
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getSend_name() {
		return send_name;
	}
	public void setSend_name(String send_name) {
		this.send_name = send_name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
}
