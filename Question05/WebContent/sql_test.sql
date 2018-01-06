create table Join(
	id varchar(50),
	Joindate varchar(50)
	);
	
insert into Join values('jason', TO_CHAR(sysdate, 'YYMMDD'));

select * from Join;
