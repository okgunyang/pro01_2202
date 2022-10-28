CREATE TABLE faqa(	NO NUMBER primary key, 
	TITLE VARCHAR2(100) not null, 
	CONTENT VARCHAR2(600), 
	AUTHOR VARCHAR2(16), 
	RESDATE DATE DEFAULT sysdate,
    gubun number not null,      -- 질문(0)/답변(1) 구분
    parno number not null       -- 질문(1)과 답변(1)의 공통 번호
   );

create sequence fseq;

insert into faqa values (fseq.nextval, '질문1', '질문에 대한 내용입니다.', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, '질문2', '질문에 대한 내용입니다.2', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, '질문3', '질문에 대한 내용입니다.3', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, '질문4', '질문에 대한 내용입니다.4', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, '질문5', '질문에 대한 내용입니다.5', 'admin', sysdate, 0, fseq.currval);
insert into faqa values (fseq.nextval, '질문1에 대한 답변', '질문1에 대한 답변 내용입니다.', 'admin', sysdate, 1, 1);
insert into faqa values (fseq.nextval, '질문2에 대한 답변', '질문2에 대한 답변 내용입니다.', 'admin', sysdate, 1, 2);
insert into faqa values (fseq.nextval, '질문3에 대한 답변', '질문3에 대한 답변 내용입니다.', 'admin', sysdate, 1, 3);
insert into faqa values (fseq.nextval, '질문4에 대한 답변', '질문4에 대한 답변 내용입니다.', 'admin', sysdate, 1, 4);
insert into faqa values (fseq.nextval, '질문5에 대한 답변', '질문5에 대한 답변 내용입니다.', 'admin', sysdate, 1, 5);
select * from faqa order by parno asc, gubun asc;
select * from all_sequences where sequence_owner = 'SYSTEM' and SEQUENCE_NAME = 'FSEQ';
select FSEQ.currval from DUAL;

-- 질문 등록
-- insert into faqa values (fseq.nextval, ?, ?, 'admin', sysdate, 0, fseq.currval);
-- 답변 등록
-- insert into faqa values (fseq.nextval, ?, ?, 'admin', sysdate, 0, ?);

-- 글 수정
-- update faqa set title=?, content=? where no=?;


-- 질문 및 답변 삭제
-- delete from faqa where parno=?
delete from faqa where parno=13;

commit;


   