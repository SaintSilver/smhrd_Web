1. ȸ�������� ������ ������ �� �ִ� 'web_member'���̺��� ����ÿ�.
   �÷��� : email / pw / tel / address

   create table web_member(email varchar(50), pw varchar(50), tel varchar(50), address varchar(50))
	
   select * from web_member

delete from web_member where email is null;

INSERT INTO WEB_MEMBER VALUES('space_gisa@hanmail.net','123456','010-1234-1234','south of kj')

CREATE TABLE WEB_MESSAGE(
		NUM NUMBER, 
		SEND_NAME VARCHAR(50), 
		RECEIVE_EMAIL VARCHAR(50), 
		CONTENT VARCHAR2(200), 
		SENDDATE DATE);

INSERT INTO WEB_MESSAGE VALUES(message_num.NEXTVAL, 'JSON', 'HOT@NAVER.COM', 'HI THERE', SYSDATE);
INSERT INTO WEB_MESSAGE VALUES(message_num.NEXTVAL, 'JSON', 'HOT@NAVER.COM', 'HI NICE TO MEET YOU', SYSDATE);
INSERT INTO WEB_MESSAGE VALUES(message_num.NEXTVAL, 'JSON', 'HOT@NAVER.COM', 'HI SEE YOU LATER', SYSDATE);

SELECT * FROM WEB_MESSAGE

create sequence message_num
start with 1
increment by 1



