create table memberA( 
    id varchar2(16)	primary key,
	pw varchar2(20)	not null,
	name varchar2(50) not null,
	email varchar2(100),
	tel	varchar2(13),
	regdate	date
);

-- 회원 가입
insert into membera values ('kkt', '1111', '김기태', 'kkt@gmail.com','010-1004-1234',SYSDATE);
insert into membera values ('admin', '1234', '관리자', 'admin@website.com','010-1234-1234',SYSDATE);
-- insert into membera values (?,?,?,?,?,sysdate);
-- pstmt.setString(1, id);
-- pstmt.setString(2, pw);
-- pstmt.setString(3, name);
-- pstmt.setString(4, email);
-- pstmt.setString(5, tel);

-- 회원 목록
select * from membera;

-- 로그인
select * from membera where id='kkt' and pw='1111';
-- "select * from membera where id='"+id+"' and pw="'"+pw+"';  -- Statement
-- select * from membera where id=? and pw=?;	-- PrepareStatement
-- pstmt.setString(1, id);
-- pstmt.setString(2, pw);


-- 회원 정보 수정
update membera set pw='4444', tel='010-4444-4444', email='kkk@gmail.com' where id='kkt'; 
-- update membera set pw=?, tel=?, email=? where id=?;
-- pstmt.setString(1, pw);
-- pstmt.setString(2, tel);
-- pstmt.setString(3, email);
-- pstmt.setString(4, id);

-- 회원 탈퇴
delete from membera where id='kkt';
-- delete from membera where id=?;
-- pstmt.setString(1, id);


select * from boarda order by resdate;



