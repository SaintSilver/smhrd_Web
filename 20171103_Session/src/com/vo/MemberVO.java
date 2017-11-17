package com.vo;

public class MemberVO {
	String name;
	String addr;
	int age;
	String email;
	
	public MemberVO(String name, String addr, int age, String email) {
		super();
		this.name = name;
		this.addr = addr;
		this.age = age;
		this.email = email;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
