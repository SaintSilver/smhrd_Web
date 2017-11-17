select * from member;

create table member(
	id varchar2(20),
	pw varchar2(20),
	nickname varchar2(20))

insert into member values('smart','123','coldmater')
insert into member values('stupid','123','coldwater')

delete from member where id IS NULL;