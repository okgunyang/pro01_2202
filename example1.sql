--------------------------------------------------------
--  파일이 생성됨 - 목요일-10월-27-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARDA
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BOARDA" 
   (	"NO" NUMBER, 
	"TITLE" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(600 BYTE), 
	"AUTHOR" VARCHAR2(16 BYTE), 
	"RESDATE" DATE DEFAULT sysdate
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.BOARDA
SET DEFINE OFF;
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (1,'테스트 글1','테스트 글1의 내용입니다.','kkt',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (2,'테스트 글2','테스트 글2의 내용입니다.','kkt',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (3,'테스트 글3','테스트 글3의 내용입니다.','admin',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (4,'테스트 글4','테스트 글4의 내용입니다.','kkt09072',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (5,'테스트 글5','테스트 글5의 내용입니다.','admin',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (14,'그냥 네 번째날 테스트1-글수정2','그냥 네 번째날 테스트 글 내용입니다.
여러분들 플루벤다졸 드셔 보셨나요?
그게 뭐냐구요? 찾아 보시면 압니다.','kkt',to_date('22/10/27','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (7,'테스트 글7','테스트 글7의 내용입니다.','kkt09072',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (8,'테스트 글8-관리자수정','테스트 글8의 내용입니다.','kkt',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (9,'테스트 글9','테스트 글9의 내용입니다.','admin',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (10,'테스트 글10','테스트 글10의 내용입니다.','admin',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (11,'테스트 글11','테스트 글11의 내용입니다.','kkt',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (12,'웹 페이지 게시판 글 테스트10','웹 페이지 게시판 글 테스트10 테스트 입니다. 테스트 입니다. 10','kkt',to_date('22/10/25','RR/MM/DD'));
Insert into SYSTEM.BOARDA (NO,TITLE,CONTENT,AUTHOR,RESDATE) values (15,'그냥 네 번째 날 테스크 제목1','그냥 네 번째날 테스트 글 내용입니다.
여러분들 플루벤다졸 드셔 보셨나요?
그게 뭐냐구요? 찾아 보시면 압니다.','kkt',to_date('22/10/27','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index SYS_C007095
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007095" ON "SYSTEM"."BOARDA" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table BOARDA
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."BOARDA" ADD PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."BOARDA" MODIFY ("TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BOARDA
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."BOARDA" ADD CONSTRAINT "FK_ID" FOREIGN KEY ("AUTHOR")
	  REFERENCES "SYSTEM"."MEMBERA" ("ID") ENABLE;
