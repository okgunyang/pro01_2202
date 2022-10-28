-- 질문 및 답변 테이블 생성
create table qnaa(
    no number primary key,
    title varchar2(100) not null,
    content varchar2(1000) not null,
    author varchar2(20) not null,
    resdate date not null,
    lev number not null,            -- 깊이
    parno number not null,          -- 부모글 번호
    sec char(1)                     -- 비밀글 여부
);
create sequence qseq;

-- 더미 데이터 추가
insert into qnaa values (qseq.nextval, '문의 합니다. 테스트 글1', '문의 합니다. 테스트 글1의 내용입니다.', 'kkt', sysdate, 0, qseq.currval, 'N');
insert into qnaa values (qseq.nextval, '문의 합니다. 테스트 글2', '문의 합니다. 테스트 글2의 내용입니다.', 'kkt', sysdate, 0, qseq.currval, 'Y');
insert into qnaa values (qseq.nextval, '문의 합니다. 테스트 글3', '문의 합니다. 테스트 글3의 내용입니다.', 'kkt09072', sysdate, 0, qseq.currval, 'N');
insert into qnaa values (qseq.nextval, '문의 합니다. 테스트 글4', '문의 합니다. 테스트 글4의 내용입니다.', 'kkt09072', sysdate, 0, qseq.currval, 'N');
insert into qnaa values (qseq.nextval, '문의 합니다. 테스트 글5', '문의 합니다. 테스트 글5의 내용입니다.', 'kkt', sysdate, 0, qseq.currval, 'N');
insert into qnaa values (qseq.nextval, '문의 합니다. 테스트 글6', '문의 합니다. 테스트 글6의 내용입니다.', 'kkt09072', sysdate, 0, qseq.currval, 'Y');
insert into qnaa values (qseq.nextval, '답변입니다. 테스트 글1', '답변입니다. 테스트 글1의 내용입니다.', 'kkt', sysdate, 1, 1, 'N');

-- 질문 및 답변 목록
select * from qnaa order by parno desc, lev asc, no asc;

-- 질문 및 내용 상세 보기
-- select * from qnaa where no=?

-- 질문하기
-- insert into qnaa values (qseq.nextval, ?, ?, ?, sysdate, 0, qseq.currval, ?);

-- 답변하기
-- insert into qnaa values (qseq.nextval, ?, ?, 'kkt', sysdate, 1, ?, ?);

-- 질문 및 답변 수정하기
-- update qnaa set title=?, content=?,resdate=sysdate where no=?;

-- 질문 삭제하기
-- DELETE from qnaa where parno=?;

-- 답변 삭제하기
-- DELETE from qnaa where no=?;

commit;