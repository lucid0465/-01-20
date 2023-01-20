-- 1. SQL 분류

-- 2. 데이타 조회
-- 1) 기본 명령문

show databases;

use shopDB; 

show tables;

show table status;

desc membertbl;

-- 2) 기본 SQL문

use employees;

select * from titles;

select * from employees.titles;

select emp_no, title from titles;

select * from titles where title='Staff';
select count(*) from titles;

select emp_no as '사원번호', title '직무' from titles;

select distinct title from titles;

-- 3) sqlDB 생성
-- sql database 생성
create database SQLDB;

-- sqlDB 연결
USE sqlDB;

-- userTBL 생성

DROP TABLE IF EXISTS buyTBL, userTBL ;
CREATE TABLE userTBL
( userID		CHAR(8) not null primary key, 	-- 사용자 아이디(PK)
  name		VARCHAR(10) NOT NULL, 		-- 이름
  birthYear	INT NOT NULL,			-- 출생연도
  addr		CHAR(2) NOT NULL,		-- 지역(서울, 경기, 경남)
  mobile1	CHAR(3),				-- 국번
  mobile2	CHAR(8),				-- 번호2
  height		SMALLINT,			-- 키
  mDate		DATE				-- 회원 가입일
);

-- buyTBL 생성
CREATE TABLE buyTbl
( num		INT AUTO_INCREMENT NOT NULL PRIMARY KEY,-- 순번(PK)
  userID		CHAR(8) NOT NULL, 			 		-- 아이디(FK)
  prodName	CHAR(6) NOT NULL,						-- 물품명
  groupName	CHAR(4),								-- 분류
  price		INT NOT NULL,							-- 단가
  amount		SMALLINT NOT NULL,					-- 수량
  FOREIGN KEY (userID) REFERENCES userTbl(userID)	-- 외래 키 지정
);

-- userTBL 데이타 생성
INSERT INTO usertbl VALUES('LSG', '이승기', 1987, '서울', '011', '11111111', 182, '2008-8-8');
INSERT INTO usertbl VALUES('KBS', '김범수', 1979, '경남', '011', '22222222', 173, '2012-4-4');
INSERT INTO usertbl VALUES('KKH', '김경호', 1971, '전남', '019', '33333333', 177, '2007-7-7');
INSERT INTO usertbl VALUES('JYP', '조용필', 1950, '경기', '011', '44444444', 166, '2009-4-4');
INSERT INTO usertbl VALUES('SSK', '성시경', 1979, '서울',  NULL,       NULL, 186, '2013-12-12');
INSERT INTO usertbl VALUES('LJB', '임재범', 1963, '서울', '016', '66666666', 182, '2009-9-9');
INSERT INTO usertbl VALUES('YJS', '윤종신', 1969, '경남',  NULL,       NULL, 170, '2005-5-5');
INSERT INTO usertbl VALUES('EJW', '은지원', 1972, '경북', '011', '88888888', 174, '2014-3-3');
INSERT INTO usertbl VALUES('JKW', '조관우', 1965, '경기', '018', '99999999', 172, '2010-10-10');
INSERT INTO usertbl VALUES('BBK', '바비킴', 1973, '서울', '010', '00000000', 176, '2013-5-5');

select * from usertbl;

-- buyTBL 데이타 생성
INSERT INTO buytbl VALUES(NULL, 'KBS', '운동화',  NULL,  30,   2);
INSERT INTO buytbl VALUES(NULL, 'KBS', '노트북',  '전자',  1000,   1);
INSERT INTO buytbl VALUES(NULL, 'JYP', '모니터',  '전자',  200,   1);
INSERT INTO buytbl VALUES(NULL, 'JYP', '모니터', '전자',  200,  1);
INSERT INTO buytbl VALUES(NULL, 'BBK', '모니터', '전자',  200,  5);
INSERT INTO buytbl VALUES(NULL, 'KBS', '청바지', '의류',  50,   3);
INSERT INTO buytbl VALUES(NULL, 'BBK', '메모리', '전자',  80,  10);
INSERT INTO buytbl VALUES(NULL, 'SSK', '책',	   '서적',  15,   5);
INSERT INTO buytbl VALUES(NULL, 'EJW', '책',    '서적',  15,   2);
INSERT INTO buytbl VALUES(NULL, 'EJW', '청바지', '의류',  50,   1);
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화',  NULL,  30,   2);
INSERT INTO buytbl VALUES(NULL, 'EJW', '책',    '서적',  15,   1);
INSERT INTO buytbl VALUES(NULL, 'BBK', '운동화',  NULL,  30,   2);

select * from buytbl;



