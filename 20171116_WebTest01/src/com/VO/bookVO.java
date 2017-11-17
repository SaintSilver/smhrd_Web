package com.VO;

public class bookVO {
	private String num;
	private String title;
	private String authour;
	private String publisher;
	
	public bookVO(String num, String title, String author, String publisher) {
		super();
		this.num = num;
		this.title = title;
		this.authour = author;
		this.publisher = publisher;
	}

	public String getNum() {
		return num;
	}

	public String getTitle() {
		return title;
	}

	public String getAuthor() {
		return authour;
	}

	public String getPublisher() {
		return publisher;
	}
	
	
	
}
