create table boardA(
	no number primary key,    -- (글번호) 자동발생
	title varchar2(100) not null,	-- (글제목)
	content	varchar2(600),      -- (글내용)
	author varchar2(16),    -- (작성자)
	resdate	date default sysdate,    -- (작성일)
    CONSTRAINT fk_id FOREIGN key(author) REFERENCES memberA(id) 
);

-- 글 추가(등록)
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
-- insert into boarda values (bseq.nextval, ?, ?, ?, sysdate);
-- pstmt.setString(1, title);
-- pstmt.setString(2, content);
-- pstmt.setString(3, author);

-- 글 목록
select * from boarda;
select count(*) as cnt from boarda;
select * from boarda where rownum between 1 and 10 order by no desc;
-- select * from boarda where rownum between ? and ? order by no desc;
-- pstmt.setInt(1, startNum);
-- pstmt.setInt(2, endNum);
select no, title, content, author, resdate from 
(select rownum rn, no, title, content, author, resdate from boarda 
order by no desc) t1 where t1.rn between 11 and 20;
-- select no, title, content, author, resdate from 
-- (select rownum rn, no, title, content, author, resdate from boarda 
-- order by no desc) t1 where t1.rn between ? and ?;
-- pstmt.setInt(1, startNum);
-- pstmt.setInt(2, endNum);
-- pageCount = (amount % 10==0) ? (amount / 10) : (amount / 10) + 1;
-- startNum = curPage * 10 - 9;
-- endNum = curPage * 10;

-- 글 상세보기
select a.no no, a.title tit, a.content con, b.name nm,
to_char(a.resdate, 'yyyy-MM-dd') res from boarda a inner join memberb b 
on a.author=b.id where a.no=1
-- select a.no no, a.title tit, a.content con, b.name nm,
-- a.resdate res from boarda a inner join memberb b 
-- on a.author=b.id where a.no=?
-- pstmt.setInt(1, no);
-- rs.getInt("no");
-- rs.getString("tit");
-- rs.getString("con");
-- rs.getString("nm");
-- rs.getString("res");

-- 글 수정
update boarda set title='제목입니다.', content='여기는 내용입니다.' where no=1;
-- update boarda set title=?, content=? where no=?
-- pstmt.setString(1, title);
-- pstmt.setString(2, content);
-- pstmt.setInt(3, no);

-- 글 삭제
delete from boarda where no=1;
-- delete from boarda where no=?;
-- pstmt.setInt(1, no);

select sysdate now from dual;

