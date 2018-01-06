create table book_member(
	id varchar2(50) primary key, 
	pw varchar2(50),
	nickname varchar2(50),
	email varchar2(50),
	tel varchar2(50));
	
	select * from book_member;
	
	insert into book_member('abc','abc','°ü¸®ÀÚ','a.com','010');