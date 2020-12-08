< 오라클 11g >

[ PART 1 - 설치 및 접근법 ]

1. 오라클 설치(11g)
   (1) 디렉토리 이름이 '한글'이면 X
       1) Oracle 설치파일이 존재하는 경로에 한글X
       2) Oracle 설치경로에 한글X
       
   (2) 디렉토리에 '공백'이 있으면 X
       1) Oracle 설치 파일이 존재하는 경로에 공백X
       2) Oracle 설치 경로에 공백X

   (3) Windows 계정이 한글 이름이면 X

   (4) 설치시에 에러 해결 방법 
       1) OS부터 밀고 다시 설치 
       2) Oracle 를 다시 설치 
          <1> 제어판 -> 프로그램 추가제거 -> 관련 프로그램 제거
	  <2> 관리도구 -> 서비스 -> 오라클 관련 서비스들을 정지
	  <3> Oracle 설치 디렉토리를 삭제
	     (만약, 삭제 안되면 '안전모드'에서 삭제 )
	  <4> 시작 -> 모든 프로그램에서 -> Oracle관련 메뉴 삭제 
	  <5> 실행 -> regedit -> oracle관련 파일을 모두 제거 
	  <6> 다시 설치

2. 오라클 접근법 
   (1) sqlplus 이용법 
      ex) 실행 -> sqlplus scott/tiger 
      
   (2) utility application 이용법 ( local / remote 관리 )
       1) sqlgate 
       2) toad 
       3) orange 
       4) SQL Developer 
          ..........

[ PART 2 - ORACLE 개요 ]
1. DBMS ( DataBase Management System )의 개념 
   (1) DB ( DataBase )
       - 지속적으로 유지 관리해야 할 '데이터의 집합' 

   (2) DBMS 
       - DB를 효율적으로 '관리'하고, 효율적으로 '저장'하고
         '검색'할 수 있는 환경을 제공해 주는 '시스템 소프트웨어' 
	 ( ex: Oracle, Ms-sql, MySql, Db2, 사이베이스, ... )

2. DBMS 역사 
   (1) 1960 : File System
   (2) 1970 : Network-DBMS 
   (3) 1980 : 관계형-DBMS ( RDBMS )
   (4) 1990 : 관계형-DBMS, 객체관계형( ORDBMS )
   (5) 2000 : 관계형/객체관계형/객체지향  

       ex) oracle 6.X, 7.X -> 관계형 
           oracle 8.X, 11.X -> 객체관계형 

3. 데이터베이스 설계
   실세계(업무분석) -> '개'념적 모델링 -> '논'리적 모델링 -> '물'리적 모델링 -> SQL작성 
         ( 'Entity'와 'Attribute') ( ERD 생성 ) ( 구체적인 DBMS 결정 )

4. SQL ( Structured Query Language )

5. 기본 사용자 계정 
   (1) SYS
       오라클 'super' 사용자 ID이며, 데이터베이스에서 발생하는 
        '모든 문제'를 처리할 수 있는 권한 

   (2) SYSTEM 
       SYS과 같은데, 차이는 데이터베이스를 생성할 수 있는 권한이 없음 

   (3) SCOTT 
       처음 오라클을 사용하는 user들을 위한 SAMPLE 계정이며, 
       일반적으로 프로그램을 작성할 때 사용되는 수준의 
       권한( for Developer )을 가진 계정이다. 

6. 주요 용어 
   (1) TABLE 
       관계형 DBMS에서 기본 데이터 저장 구조로써 'Entity(실체)'의 
       집합 저장소 ( ex: DEPT, EMP, SALGRADE, BONUS, ... ) 

   (2) ROW 
       테이블의 행 ( 하나의 유효한 데이터 ) 즉, Entity(실체)
       (ex : 10 ACCOUNTING     NEW YORK  )

   (3) COLUMN  
       테이블의 열명 ( Attibute 가 COLUMN이 됨 ) 
       (ex : DEPTNO,  DNAME, LOC )

   (4) PRIMARY-KEY
       테이블에서 각 ROW를 유일하게 구분하는 COLUMN 에 
       부여되는 '제약조건( Constraint )'
       (ex: PK_DEPT )

   (5) FOREIGN-KEY ( == 참조키, 외래키 )
       다른 테이블의 COLUMN값을 참조하는 테이블의 COLUMN에 
       부여되는 '제약조건' [ cf) 참조 무결성 ]
       (ex: FK_DEPTNO )
   
   (6) FIELD 
       테이블에서 ROW와 COLUMN이 교차하는 데이터 
       (ex: DEPT에서 'SALES' )

   (7) NULL 
       데이터가 존재하지 않는 FIELD 

      ex) scott 계정의 table 
         - DEPT : 부서 테이블  
	 - EMP  : 사원 테이블

7. SQL의 구분 
   (1) DQL( Data Query Language )
       -> 테이블의 데이터를 '조회'할 때 
       ( ex: select~ )
   (2) DML( Data Manipulation Language )
       -> 테이블의 '입력', '수정', '삭제'할 때 
       ( ex: insert~, update~, delete~ )
   (3) DDL ( Data Definition Language )
       -> 객체들을 생성, 변경, 삭제 등을 할 때 
       ( ex: create~, alter~, drop~, ... )
   (4) TCL ( Transaction Control Language )
       -> DML문을 DB에 저장 or 취소할 때 
       ( ex: commit, rollback, savepoint~ )

       cf) Transaction: 분리되어서는 안될 (논리적인) '작업 단위'
   (5) DCL ( Data Control Language ) 
       -> DB 계정에게 권한을 '부여'or '취소'할 때 
       ( ex: grant~ , revoke~ )

8. PL-SQL
   제어문(조건문, 반복문)이 들어있는 SQL로써 오라클 DBMS에서 지원하는 
   확장된 SQL 
   (1) Stored Procedure
       -> 일련의 작업처리순서를 정의해 놓은 것으로 
         미리 DBMS에 컴파일되어져있어 프로그램 or 사용자로부터 
	 호출되면 실행되는 일종의 '작업처리순서' 
   (2) Anonymous Procedure 
       -> Stored Procedure 와의 차이점은 'DBMS에 자동으로 포함'되어 
         내부적으로 호출되는 프로시져 
   (3) Stored Function 
       -> 프로시져와 차이점은 'return값'이 존재해야 함 
   (4) Trigger 
       -> 어떤 조건에 만족되어지는 상황(DML)이 발생되면 
         자동으로 호출되어 작동되는 로직 
   (5) Package 
       -> 위의 것들을 기능별 묶어놓은 꾸러미 

[ PART 3 - SQL ]
1. DQL
   #1-1 Base
   (1) 기본
       SQL> select * from tab;
       SQL> select TABLE_NAME from user_tables;
       SQL> desc dept
       SQL> select DNAME, LOC from DEPT;
       SQL> select * from DEPT;

   (2) all / distinct
       SQL> select JOB from EMP;
       SQL> select all JOB from EMP;
       SQL> select distinct JOB from EMP;


   (3) order by
       -- 모든 사원들의 사번과 급여를 출력
       SQL> select EMPNO, SAL from EMP;
       -- 모든 사원들의 사번과 급여를 출력( 급여가 낮은 순)
       SQL> select EMPNO, SAL from EMP order by SAL; -- asc
       -- 모든 사원들의 사번과 급여를 출력( 급여가 높은 순)
       SQL> select EMPNO, SAL from EMP order by SAL desc;
       -- 모든 사원의 사번과 급여를 출력 ( 급여가 높은 순, 같은 급여일땐 EMPNO오름차순 )
       SQL> select EMPNO, SAL from EMP order by SAL desc, EMPNO;

       -- 모든 사원의 사번과 커미션을 출력( 커미션 낮/높 순 )
       SQL> select EMPNO, COMM from EMP order by COMM; -- null이 뒤로 
       SQL> select EMPNO, COMM from EMP order by COMM desc; -- null이 앞으로
       
       -- (null 제외한) 모든 사원의 사번과 커미션을 출력
       SQL> select EMPNO, COMM from EMP where COMM is not null;
       -- (null 제외한) 모든 사원의 사번과 커미션을 출력(단, 커미션이 높은 순으로)
       SQL> select EMPNO, COMM from EMP where COMM is not null 
           order by COMM desc;

       -- 직업에 대해서 오름차순 정렬한 후, 급여가 높은 순으로 정렬
       SQL> select JOB, SAL from EMP order by JOB, SAL desc;

  (4) ALIAS   
       SQL> select JOB "직업", SAL "급여" from EMP;
       SQL> select JOB as "직업", SAL as "급여" from EMP;
       SQL> select JOB 직업, SAL 급여 from EMP;
       SQL> select JOB 직업, SAL "1234" from EMP;
       SQL> select JOB 직업, SAL "!@#$" from EMP;

        cf) 숫자 or 특수문자 or 공백포함 되면 ""로 묶어줘야 함 

  (5) where
       -- 부서번호가 20인 사원의 사번과 부서번호를 출력
       SQL> select EMPNO, DEPTNO from EMP where DEPTNO=20;

       -- 30번 부서인 부서번호와 급여와 사번을 출력하라(단, 급여가 높으로 순)
       SQL> select DEPTNO, SAL, EMPNO from EMP 
             where DEPTNO=30 order by SAL desc;

       -- 입사일이 81년 12월 3일이후의 사번과 이름과 입사일과 부서번호 출력
         -- (단, 사번의 내림차순)
       SQL> select EMPNO, ENAME, HIREDATE, DEPTNO from EMP
           where HIREDATE>='81/12/03' order by EMPNO desc;

       -- 입사일이 81년 12월 3일이후의 사번과 이름과 입사일과 부서번호 출력
         -- (단.. 사번의 내림차순, 20번부서만 출력)
       SQL> select EMPNO, ENAME, HIREDATE, DEPTNO from EMP
           where HIREDATE>='81/12/03' and DEPTNO=20 
	   order by EMPNO desc;

  (6) 연산자( Operator )
      1) 산술연산자( *, /, +, - ) 
       --30번 부서 사원의 급여를 10% 인상해서 사번(EMPNO)과 급여(SAL)를 출력
       SQL> select EMPNO, SAL*1.1 from EMP where DEPTNO=30;

       --30번 부서 사원의 '연말보너스'를 이름과 연말보너스를 출력(연말보너스가 높은 순) 
       -- ( 단, 연말보너스는 급여의 2배와 커미션의 1/2의 합이다.)
       SQL> select ENAME, SAL, COMM from EMP where DEPTNO=30;
       SQL> select ENAME, SAL, NVL(COMM,0) from EMP where DEPTNO=30;
       SQL> select ENAME, SAL*2+NVL(COMM,0)/2 "연말보너스" from EMP 
            where DEPTNO=30 order by "연말보너스" desc;

      2) 비교연산자 ( =, != , >, >=, <, <= )
       -- 급여가 950인 사원의 이름(ENAME)과 급여(SAL)를 출력
       SQL> select ENAME, SAL from EMP where SAL=950;

       -- 급여가 3000 이상인 사원의 이름(ENAME)과 급여(SAL)를 출력
       SQL> select ENAME, SAL from EMP where SAL>=3000;

       -- 30부서가 아닌 사원의 이름(ENAME)과 급여(SAL)와 부서번호(DEPTNO)를 출력
	   -- (부서번호의 오름차순, 높은 급여순, 이름 오름차순)
       SQL> select ENAME, SAL, DEPTNO from EMP where DEPTNO!=30
          order by DEPTNO, SAL desc, ENAME;

     3) 논리연산자 ( and(곱), or(합), not )	
       -- 20번 부서이면서 급여 3000이상인 사원의 이름, 급여, 부서번호를 출력
       SQL> select ENAME, SAL, DEPTNO from EMP where DEPTNO=20 and SAL>=3000;

       -- 직업이 'SALESMAN'이고 부서번호가 30번인 이름, 직업, 부서번호를 출력
       SQL> select ENAME, JOB, DEPTNO from EMP where DEPTNO=30 and JOB='SALESMAN';

       -- 급여가 1000 미만이거나, 4000 이상인 사원의 사번, 급여를 출력
       SQL> select EMPNO, SAL from EMP where SAL<1000 or SAL>=4000;

       -- 급여가 1000 이상 4000 미만인 사원의 사번, 급여를 출력
       SQL> select EMPNO, SAL from EMP where not (SAL<1000 or SAL>=4000);

     cf1) 사원(EMP) 컬럼 
         EMPNO  -- 사번                                    
	 ENAME  -- 이름                                             
	 JOB    -- 직업                                            
	 MGR    -- 관리자                                              
	 HIREDATE -- 입사일                                         
	 SAL    -- 급여                                             
	 COMM   -- 커미션                                            
	 DEPTNO -- 부서번호 

     cf2) 부서(DEPT) 컬럼 
         DEPTNO -- 부서번호
	 DNAME  -- 부서이름 
	 LOC    -- 부서위치 

	-- 팀단위로 한사람에 3개씩 문제를 만들어서 서로 풀어보기 

     4) SQL연산자 ( in, any, all, between, like, is null, is not null, exists, ...)
	-- 부서번호가 10 or 20 or 100 인 사원의 부서번호과 이름을 출력
        SQL> select ENAME, DEPTNO from EMP where DEPTNO=10 or DEPTNO=20 or DEPTNO=100;
	SQL> select ENAME, DEPTNO from EMP where DEPTNO in(10, 20, 100);
	SQL> select ENAME, DEPTNO from EMP where DEPTNO=any(10, 20, 100);

        -- 30부서의 최대 급여보다 더 큰 급여를 받는 사원의 이름, 급여 출력
	SQL> select SAL from EMP where DEPTNO=30; 	
	SQL> select ENAME, SAL from EMP 
	     where SAL>all(select SAL from EMP where DEPTNO=30);
	     -- all은 전체값을 모두 만족시켜야 하는 연산자 

	-- 급여가 1100 이상 3000 이하인 사원의 이름과 급여 출력
	SQL> select ENAME, SAL from EMP where SAL>=1100 and SAL<=3000;
	SQL> select ENAME, SAL from EMP where SAL between 1100 and 3000;
	
	-- 이름이 'FORD'와 'SCOTT' 사이의 사원 이름을 출력!(단, 알파벳 순 정렬) 
	SQL> select ENAME from EMP where ENAME>='FORD' and ENAME<='SCOTT' order by ENAME;
	SQL> select ENAME from EMP where ENAME between'FORD' and 'SCOTT' order by ENAME;

	-- 이름이 'J'로 시작되는 사원 이름을 출력(단, 오름차순 정렬)
	SQL> select ENAME from EMP where ENAME like 'J%' order by ENAME;

	-- 이름에 'T'가 들어있는 사원 이름을 출력
	SQL> select ENAME from EMP where ENAME like '%T%' order by ENAME;

	-- 이름에 세번째 문자가 'A'인 사원의 이름을 출력
	SQL> select ENAME from EMP where ENAME like '__A%' order by ENAME;

	-- 급여의 십의 자리가 5인 사원의 급여를 출력
	SQL> select SAL from EMP where SAL like '%5_';

	-- 커미션이 NULL인 사원의 사번과 커미션을 출력 
	SQL> select EMPNO, COMM from EMP where COMM is null;

	-- 커미션이 NULL이 아닌 사원의 사번과 커미션을 출력
	SQL> select EMPNO, COMM from EMP where COMM is not null;

	-- 이름이 'FORD'라는 사원이 존재하면 모든 사원의 이름을 출력
	SQL> select ENAME from EMP where ENAME='FORD';
	SQL> select ENAME from EMP where exists(select ENAME from EMP where ENAME='FORD');	

        -- 이름이 'AAA'라는 사원이 존재하면 모든 사원의 이름을 출력
	SQL> select ENAME from EMP where exists(select ENAME from EMP where ENAME='AAA');
	
    5) 결합연산자 ( || )
        SQL> select ENAME||'의 급여는 ', SAL||'입니다' from EMP;

    6) 집합연산자 ( union, union all, intersect, minus )
       -- 사원의 사번과 이름 출력하고, 부서의 번호와 부서이름을 출력
       SQL> select EMPNO, ENAME from EMP
	    union
            select DEPTNO, DNAME from DEPT;

       -- 사원의 사번과 이름 출력하고, 사원의 사번과 이름 출력 
       SQL> select EMPNO, ENAME from EMP
            union
            select EMPNO, ENAME from EMP; --14개 

       SQL> select EMPNO, ENAME from EMP
            union all
            select EMPNO, ENAME from EMP; --28개 

       SQL> select EMPNO, ENAME from EMP
	    intersect
            select DEPTNO, DNAME from DEPT; --0개 

       SQL> select EMPNO, ENAME from EMP
            intersect
            select EMPNO, ENAME from EMP where DEPTNO=20; --5개 

       SQL> select EMPNO, ENAME from EMP
            minus
            select EMPNO, ENAME from EMP where DEPTNO=20; --9개 
 
  (7) 연산자 우선순위 
     1) 1순위: 비교, SQL, 산술 
     2) 2순위: NOT 
     3) 3순위: AND 
     4) 4순위: OR 
     5) 5순위: 결합, 집합 

       SQL> select ENAME, SAL from EMP
	    where NOT SAL>1000 and SAL<3000;
       SQL> select ENAME, SAL from EMP
	    where NOT (SAL>1000 and SAL<3000);

   cf) SQL문장의 실행법 
      1) 문장의 끝에 ;을 붙여주는 enter!
      2) 문장의 다음 라인에 /를 붙여주고 enter!
      3) 가장 최근(직전)의 버퍼에 담긴 SQL 문장을 실행
          SQL> run
      4) 버퍼의 SQL보기 / 편집 
          SQL> edit
          [1] 메모리 버퍼의 내용이 메모장으로 확인 
	  [2] 수정
	  [3] 저장 
	  [4] run 


   #1-2. 함수( function )
   (1) 함수(function) 란 ? (처리/반환)
       어떠한 일을 수행하는 기능으로써 주어진 인수(argument)
       를 재료로 '처리'를 하여 그 결과를 '반환'하는 일을 수행 

   (2) 함수 기능의 구체적 표현 
      1) Data에 대한 '계산' 
      2) Data를 다른 형태로 '변환'
      3) Data의 결과를 '출력'

   (3) 함수의 종류 
      1) 단일행 함수 (ex: nvl, .. )
         -> 하나의 행(row)당, 하나의 결과값을 리턴하는 함수 
	 SQL> select ename, nvl(comm, 0) from emp where comm is null;

      2) 복수행 함수 (ex: max, min, avg, .. ) 
         -> 여러개의 행(row)당, 하나의 결과값을 리턴하는 함수 
         SQL> select avg(SAL) from EMP;

   (4) 단일행 함수 
      1) 문자 함수 
        <1> chr(아스키코드)
	    SQL> select chr(65) from dual;

	<2> concat(컬럼명, '붙일문자열')
	   SQL> select ENAME||' is a ' ||JOB from EMP;
	   SQL> select concat(ENAME, ' is a '), JOB from EMP;

	<3> initcap('문자열')
	   SQL> select initcap('the lion') from dual;
	   INITCAP 함수는 매개변수로 들어오는 char의 첫 문자는 대문자로, 나머지는 소문자로 반환하는 함수다

	<4> lower('문자열')
	   SQL> select lower('MY NAME IS KHS') from dual;
           SQL> select lower(ename) from emp;

	<5> LPAD('문자열1', 자리수, '문자열2')

	    LPAD 함수는 지정한 길이 만큼 왼쪽부터 특정문자로 채워준다.
	    - 함수  :  LPAD("값", "총 문자길이", "채움문자")

	   SQL> select LPAD('khs', 13, '*#') from DUAL;
	   SQL> select LPAD('khs', 13, ' ') from DUAL;

	<6> RPAD('문자열1', 자리수, '문자열2')
	   SQL> select RPAD('khs', 13, '*#') from DUAL;

	<7> LTRIM('문자열1', '문자열2')
           SQL> select LTRIM('xyxXxyLAST WORDxy', 'xy') from DUAL;
           SQL> select LTRIM('xyyXxyLAST WORDxy', 'xy') from DUAL;
           SQL> select LTRIM('     LAST WORDxy', ' ') from DUAL;
	   SQL> select LTRIM('     LAST WORDxy') from DUAL;

	<8> RTRIM('문자열1', '문자열2')
           SQL> select RTRIM('xyxXxyLAST WORDxy', 'xy') from DUAL;
	   SQL> select RTRIM('xyxXxyLAST WORDxyx', 'xy') from DUAL;
	   SQL> select RTRIM('WORD  ', ' ') from DUAL;
	   SQL> select RTRIM('WORD  ') from DUAL;
	   SQL> select length('WORD   ') from dual;
	   SQL> select length(rtrim('WORD   ')) from dual;

	<9> REPLACE('문자열1', '문자열2', '문자열3')
	   SQL> select 'JACK and JUE' from DUAL;
	   SQL> select replace('JACK and JUE', 'J','BL') from DUAL;
	   SQL> select DNAME from DEPT;
	   SQL> select replace(DNAME, 'A', 'i') from DEPT;

	<10> SUBSTR('문자열', 자리수, 갯수)
	   SQL> select SUBSTR('ABCDEFG', 3, 2) from DUAL;

	   -- ename의 두번째 자리가 'A'인 사원의 이름을 출력
	   SQL> select ENAME from EMP where ENAME like '_A%';
	   SQL> select ENAME from EMP where substr(ENAME,2,1)='A';

	<11> ASCII('문자')
	   SQL> select ascii('A') from dual;
	   SQL> select ASCII('"') from DUAL;
	   SQL> select ASCII('#') from DUAL;
	   SQL> select ASCII('3') from DUAL;

	<12> LENGTH('문자열')
	   SQL> select length('진달래 꽃') from DUAL; 
	   SQL> select length('abC D') from DUAL;

	<13> GREATEST('문자열1', '문자열2', '문자열3')
	   SQL> select GREATEST('CC', 'ABCDE', 'CA') from DUAL;
	   SQL> select GREATEST('12', '132', '119') from DUAL;
	   SQL> select GREATEST('가나', '가다', '가자') from DUAL; 

	<14> LEAST('문자열')
	   SQL> select LEAST('CC', 'ABCDE', 'CA') from DUAL; 
           SQL> select LEAST('12', '132', '119') from DUAL;
           SQL> select LEAST('가나', '가다', '가자') from DUAL;

	<15> INSTR('문자열1', '문자열2', 자리수1, 자리수2)
	   SQL> select INSTR('CORPORATE FLOOR', 'OR', 3, 2) from DUAL;
           SQL> select INSTR('CORPORATE FLOOR', 'OR', 6, 1) from DUAL;

	   cf) '자리수1'부터 '자리수2'번째의 '문자열2'를 찾음

	<16> NVL(컬럼명, 숫자) ** 
	   SQL> select ENAME, NVL(COMM, 100) from EMP; 
	   SQL> select ENAME, NVL(COMM, 0) from EMP;

     2) 숫자 함수
        <1> ABS(숫자)  
	   SQL> select ABS(-15) from DUAL;

	<2> CEIL(숫자)
	   SQL> select CEIL(11.012) from DUAL;
	   SQL> select CEIL(-11.012) from DUAL;

	<3> FLOOR(숫자)
	   SQL> select FLOOR(12.999) from DUAL;
	   SQL> select FLOOR(-12.999) from DUAL;

	<4> ROUND(숫자)
	   SQL> select ROUND(12.5) from DUAL;
	   SQL> select ROUND(-12.5) from DUAL;

	<5> COS(숫자[rad]) 
	   SQL> select cos(90 * 3.141592653589793/180) from dual;

	<6> SIN(숫자[rad]) 
	   SQL> select sin(90 * 3.141592653589793/180) from dual;

	<7> TAN(숫자[rad])
           SQL> select TAN(45 * 3.141592653589793/180) from DUAL;

	<8> EXP(숫자)
	   SQL> select EXP(2) from dual;

	<9> LOG(숫자1, 숫자2)
	   SQL> select LOG(10, 100) from dual;

	<10> MOD(숫자1, 숫자2)
	   SQL> select mod(11,4) from dual;

	<11> POWER(숫자1, 숫자2)
	   SQL> select power(3, 3) from dual;

	<12> TRUNC(숫자1, 숫자2)
	   SQL> select TRUNC(15.789, 2) from DUAL;
	   SQL> select TRUNC(15.789, 0) from DUAL;
	   SQL> select TRUNC(-15.789, 2) from DUAL;

      3) 날짜 함수 (***)
        <1> SYSDATE
           SQL> select SYSDATE from dual;

	<2> ADD_MONTHS(날짜컬럼 or 날짜데이터, 숫자)
	   SQL> select HIREDATE from EMP where EMPNO=7782;
	   SQL> select HIREDATE, ADD_MONTHS(HIREDATE, 7) from EMP where EMPNO=7782;
	   SQL> select ADD_MONTHS('90/11/04', 2) from DUAL;

	<3> LAST_DAY(날짜컬럼 or 날짜데이터)
	   SQL> select LAST_DAY('19/10/29') from DUAL;
	   SQL> select hiredate, LAST_DAY(hiredate) from EMP;	

	<4> NEW_TIME(날짜컬럼or날짜데이터, 'GMT', 'PDT')
	   SQL> select NEW_TIME('08/12/04', 'GMT', 'PDT') from DUAL;
           SQL> select hiredate, NEW_TIME(hiredate, 'GMT', 'PDT') from EMP;

        <5> MONTHS_BETWEEN(날짜컬럼or날짜데이터1, 날짜컬럼or날짜데이터2)
	   SQL> select MONTHS_BETWEEN('80/01/02', '81/02/04') from DUAL;
	   -- empno가 7782인 사원의 현재까지의 근무월수
	   SQL> select MONTHS_BETWEEN(SYSDATE, HIREDATE) from EMP where EMPNO=7782;

	<6> NEXT_DAY(날짜컬럼or날짜데이터, 숫자)
	   SQL> select SYSDATE, NEXT_DAY(SYSDATE,4) from DUAL;
	   SQL> select SYSDATE, NEXT_DAY(SYSDATE,2) from DUAL; 
	   
	   -- 일(1) 월(2) 화(3) 수(4) 목(5) 금(6) 토(7)

     4) 문자 변환 함수 ( ***** )
        => TO_CHAR(날짜컬럼or날짜데이터, '변환포멧')
	<1> 'D'
	   SQL> select SYSDATE, to_char(SYSDATE, 'D') from dual;
	<2> 'DAY'
	   SQL> select SYSDATE, to_char(SYSDATE, 'DAY') from dual;
	<3> 'DY'
	   SQL> select SYSDATE, to_char(SYSDATE, 'DY') from dual;
	<4> 'DD'
	   SQL> select SYSDATE, to_char(SYSDATE, 'DD') from dual;
	<5> 'MM'
	   SQL> select SYSDATE, to_char(SYSDATE, 'MM') from dual;
	<6> 'MONTH'
	   SQL> select SYSDATE, to_char(SYSDATE, 'MONTH') from dual;
	<7> 'YY'
	   SQL> select SYSDATE, to_char(SYSDATE, 'YY') from dual;
	<8> 'YYYY'
	   SQL> select SYSDATE, to_char(SYSDATE, 'YYYY') from dual;
	<9> 'MM-DD-YY'
	   SQL> select SYSDATE, to_char(SYSDATE, 'MM-DD-YY') from dual;
        <10> 'HH' or 'HH12'
	   SQL> select SYSDATE, to_char(SYSDATE, 'HH') from dual;
	<11> 'HH24'
	   SQL> select SYSDATE, to_char(SYSDATE, 'HH24') from dual;
	<12> 'MI'
	   SQL> select TO_CHAR(SYSDATE, 'MI') from DUAL;
	<13> 'SS'
	   SQL> select TO_CHAR(SYSDATE, 'SS') from DUAL;
	<14> 'AM'or'PM'
	   SQL> select TO_CHAR(SYSDATE, 'AM HH:MI:SS') from DUAL; 
	   SQL> select TO_CHAR(SYSDATE, 'fmAM HH:MI:SS') from DUAL;

	   --현재날짜를 '2020-12-07 오후 12:13:50 월요일' 식으로 출력
	<15> 'YYYY-MM-DD AM HH:MI:SS DAY'
	   SQL> select TO_CHAR(SYSDATE, 'YYYY-MM-DD AM HH:MI:SS DAY') from DUAL; 

	   cf) alter session set NLS_LANGUAGE='ENGLISH';

	   cf) Tip 
	     - one, two, three .. 
	      SQL> select to_char(SYSDATE, 'DDSP') from dual;

	     - simple 서수  
	      SQL> select to_char(SYSDATE, 'DDTH') from dual;

	     - 서수  
	      SQL> select to_char(SYSDATE, 'DDSPTH') from dual;

   (5) 복수행 함수 ( ***** )
      1) count(컬럼명)
        SQL> select count(ename) from emp;
	SQL> select count(comm) from emp;
	SQL> select count(*) from emp;
	SQL> select count(EMPNO) from emp;
      
      2) sum(컬럼명)
        SQL> select sum(comm) from emp;
	SQL> select sum(sal) from emp;

      3) avg(컬럼명)
        SQL> select avg(sal) from EMP;
	SQL> select avg(comm) from EMP; -- null제외 
	SQL> select avg(nvl(comm,0)) from EMP; -- null포함 
     
      4) max(컬럼명)와 min(컬럼명)
        SQL> select max(sal) from EMP;
	SQL> select min(sal) from EMP;
	SQL> select max(sal) - min(sal) from EMP;

	-- 최고 급여자의 사원이름을 출력
	SQL> select ENAME, SAL from EMP where SAL=max(SAL); --(X)
	SQL> select ENAME, SAL from EMP where SAL=(select max(SAL) from EMP); --(O)

      5) VARIANCE(컬럼명)
        SQL> select VARIANCE(comm) from EMP;
    
      6) STDDEV(컬럼명)
        SQL> select STDDEV(comm) from EMP;

      < Question > 
      -- 부서별 평균연봉(반올림)을 출력
      Err> select DEPTNO, avg(SAL) from EMP; 
      SQL> select DEPTNO, avg(SAL) from EMP group by DEPTNO;
      SQL> select DEPTNO, round(avg(SAL)) from EMP group by DEPTNO;

      -- 급여 2000 이상인 사원들의 부서별 평균급여의 반올림값
      SQL> select DEPTNO, round(avg(SAL)) from EMP 
           where SAL>=2000 group by DEPTNO;

      -- 급여 2000 이상인 사원들의 부서별 평균급여의 반올림값 (부서번호의 오름차순 정렬)
      SQL> select DEPTNO, round(avg(SAL)) from EMP 
           where SAL>=2000 group by DEPTNO order by DEPTNO;
  
     ## 오라클 수업 깃: https://github.com/khs4git1/Oracle.git

      -- 급여 2000 이상인 사원들의 부서별 평균급여의 반올림값 (급여가 높은 순 정렬)
      SQL> select DEPTNO, round(avg(SAL)) from EMP
           where SAL>=2000 group by DEPTNO order by round(avg(SAL)) desc;
      SQL> select DEPTNO, round(avg(SAL)) aa from EMP
           where SAL>=2000 group by DEPTNO order by aa desc;
      SQL> select DEPTNO, round(avg(SAL)) from EMP
           where SAL>=2000 group by DEPTNO order by 2 desc;

      --급여 1000이상인 사원들의 부서별 평균급여의 반올림값을 부서번호로 내림차순 정렬하라
	   -- (단, 부서별 평균급여가 2000 이상인 값만 출력!)
      유민> SELECT deptno, round(AVG(sal))  "평균급여" FROM emp 
          WHERE sal >=1000  
	  GROUP BY deptno 
	  HAVING round(AVG(sal)) >= 2000 
	  ORDER BY 1 DESC;

      SQL> select DEPTNO, round(avg(SAL)) from EMP
           where SAL>=1000
	   group by DEPTNO
	   having round(avg(SAL))>=2000
	   order by DEPTNO desc;
   
      Err> select DEPTNO, round(avg(SAL)) aa from EMP
           where SAL>=1000
	   group by DEPTNO
	   having aa>=2000
	   order by DEPTNO desc;

	  -- #주의: having 절에서는 alias를 사용할 수 없음 

      --각 부서별 같은 업무를 하는 사원의 인원수를 구하여 부서번호, 업무명, 인원수를 출력하라
	 --(단, 부서번호과 업무명으로 각각 내림차순 정렬!)
      SQL> select DEPTNO, JOB, count(EMPNO) from EMP
           group by DEPTNO, JOB 
	   order by DEPTNO desc, JOB desc;
     
      


