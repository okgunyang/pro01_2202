insert into membera values ('kkt', '1111', '김기태', 'kkt@gmail.com','010-1004-1234',SYSDATE);
insert into membera values ('admin', '1234', '관리자', 'admin@website.com','010-1234-1234',SYSDATE);
select * from membera;

insert into boarda values (bseq.nextval, '테스트 글1', '테스트 글1의 내용입니다.', 'kkt', sysdate);
insert into boarda values (bseq.nextval, '테스트 글2', '테스트 글2의 내용입니다.', 'kkt', sysdate);
insert into boarda values (bseq.nextval, '테스트 글3', '테스트 글3의 내용입니다.', 'admin', sysdate);
insert into boarda values (bseq.nextval, '테스트 글4', '테스트 글4의 내용입니다.', 'kkt09072', sysdate);
insert into boarda values (bseq.nextval, '테스트 글5', '테스트 글5의 내용입니다.', 'admin', sysdate);
insert into boarda values (bseq.nextval, '테스트 글6', '테스트 글6의 내용입니다.', 'admin', sysdate);
insert into boarda values (bseq.nextval, '테스트 글7', '테스트 글7의 내용입니다.', 'kkt09072', sysdate);
insert into boarda values (bseq.nextval, '테스트 글8', '테스트 글8의 내용입니다.', 'kkt', sysdate);
insert into boarda values (bseq.nextval, '테스트 글9', '테스트 글9의 내용입니다.', 'admin', sysdate);
insert into boarda values (bseq.nextval, '테스트 글10', '테스트 글10의 내용입니다.', 'admin', sysdate);
insert into boarda values (bseq.nextval, '테스트 글11', '테스트 글11의 내용입니다.', 'kkt', sysdate);

select * from boarda order by resdate;
