< ����Ŭ 11g >

[ PART 1 - ��ġ �� ���ٹ� ]

1. ����Ŭ ��ġ(11g)
   (1) ���丮 �̸��� '�ѱ�'�̸� X
       1) Oracle ��ġ������ �����ϴ� ��ο� �ѱ�X
       2) Oracle ��ġ��ο� �ѱ�X
       
   (2) ���丮�� '����'�� ������ X
       1) Oracle ��ġ ������ �����ϴ� ��ο� ����X
       2) Oracle ��ġ ��ο� ����X

   (3) Windows ������ �ѱ� �̸��̸� X

   (4) ��ġ�ÿ� ���� �ذ� ��� 
       1) OS���� �а� �ٽ� ��ġ 
       2) Oracle �� �ٽ� ��ġ 
          <1> ������ -> ���α׷� �߰����� -> ���� ���α׷� ����
	  <2> �������� -> ���� -> ����Ŭ ���� ���񽺵��� ����
	  <3> Oracle ��ġ ���丮�� ����
	     (����, ���� �ȵǸ� '�������'���� ���� )
	  <4> ���� -> ��� ���α׷����� -> Oracle���� �޴� ���� 
	  <5> ���� -> regedit -> oracle���� ������ ��� ���� 
	  <6> �ٽ� ��ġ

2. ����Ŭ ���ٹ� 
   (1) sqlplus �̿�� 
      ex) ���� -> sqlplus scott/tiger 
      
   (2) utility application �̿�� ( local / remote ���� )
       1) sqlgate 
       2) toad 
       3) orange 
       4) SQL Developer 
          ..........

[ PART 2 - ORACLE ���� ]
1. DBMS ( DataBase Management System )�� ���� 
   (1) DB ( DataBase )
       - ���������� ���� �����ؾ� �� '�������� ����' 

   (2) DBMS 
       - DB�� ȿ�������� '����'�ϰ�, ȿ�������� '����'�ϰ�
         '�˻�'�� �� �ִ� ȯ���� ������ �ִ� '�ý��� ����Ʈ����' 
	 ( ex: Oracle, Ms-sql, MySql, Db2, ���̺��̽�, ... )

2. DBMS ���� 
   (1) 1960 : File System
   (2) 1970 : Network-DBMS 
   (3) 1980 : ������-DBMS ( RDBMS )
   (4) 1990 : ������-DBMS, ��ü������( ORDBMS )
   (5) 2000 : ������/��ü������/��ü����  

       ex) oracle 6.X, 7.X -> ������ 
           oracle 8.X, 11.X -> ��ü������ 

3. �����ͺ��̽� ����
   �Ǽ���(�����м�) -> '��'���� �𵨸� -> '��'���� �𵨸� -> '��'���� �𵨸� -> SQL�ۼ� 
         ( 'Entity'�� 'Attribute') ( ERD ���� ) ( ��ü���� DBMS ���� )

4. SQL ( Structured Query Language )

5. �⺻ ����� ���� 
   (1) SYS
       ����Ŭ 'super' ����� ID�̸�, �����ͺ��̽����� �߻��ϴ� 
        '��� ����'�� ó���� �� �ִ� ���� 

   (2) SYSTEM 
       SYS�� ������, ���̴� �����ͺ��̽��� ������ �� �ִ� ������ ���� 

   (3) SCOTT 
       ó�� ����Ŭ�� ����ϴ� user���� ���� SAMPLE �����̸�, 
       �Ϲ������� ���α׷��� �ۼ��� �� ���Ǵ� ������ 
       ����( for Developer )�� ���� �����̴�. 

6. �ֿ� ��� 
   (1) TABLE 
       ������ DBMS���� �⺻ ������ ���� �����ν� 'Entity(��ü)'�� 
       ���� ����� ( ex: DEPT, EMP, SALGRADE, BONUS, ... ) 

   (2) ROW 
       ���̺��� �� ( �ϳ��� ��ȿ�� ������ ) ��, Entity(��ü)
       (ex : 10 ACCOUNTING     NEW YORK  )

   (3) COLUMN  
       ���̺��� ���� ( Attibute �� COLUMN�� �� ) 
       (ex : DEPTNO,  DNAME, LOC )

   (4) PRIMARY-KEY
       ���̺��� �� ROW�� �����ϰ� �����ϴ� COLUMN �� 
       �ο��Ǵ� '��������( Constraint )'
       (ex: PK_DEPT )

   (5) FOREIGN-KEY ( == ����Ű, �ܷ�Ű )
       �ٸ� ���̺��� COLUMN���� �����ϴ� ���̺��� COLUMN�� 
       �ο��Ǵ� '��������' [ cf) ���� ���Ἲ ]
       (ex: FK_DEPTNO )
   
   (6) FIELD 
       ���̺��� ROW�� COLUMN�� �����ϴ� ������ 
       (ex: DEPT���� 'SALES' )

   (7) NULL 
       �����Ͱ� �������� �ʴ� FIELD 

      ex) scott ������ table 
         - DEPT : �μ� ���̺�  
	 - EMP  : ��� ���̺�

7. SQL�� ���� 
   (1) DQL( Data Query Language )
       -> ���̺��� �����͸� '��ȸ'�� �� 
       ( ex: select~ )
   (2) DML( Data Manipulation Language )
       -> ���̺��� '�Է�', '����', '����'�� �� 
       ( ex: insert~, update~, delete~ )
   (3) DDL ( Data Definition Language )
       -> ��ü���� ����, ����, ���� ���� �� �� 
       ( ex: create~, alter~, drop~, ... )
   (4) TCL ( Transaction Control Language )
       -> DML���� DB�� ���� or ����� �� 
       ( ex: commit, rollback, savepoint~ )

       cf) Transaction: �и��Ǿ�� �ȵ� (������) '�۾� ����'
   (5) DCL ( Data Control Language ) 
       -> DB �������� ������ '�ο�'or '���'�� �� 
       ( ex: grant~ , revoke~ )

8. PL-SQL
   ���(���ǹ�, �ݺ���)�� ����ִ� SQL�ν� ����Ŭ DBMS���� �����ϴ� 
   Ȯ��� SQL 
   (1) Stored Procedure
       -> �Ϸ��� �۾�ó�������� ������ ���� ������ 
         �̸� DBMS�� �����ϵǾ����־� ���α׷� or ����ڷκ��� 
	 ȣ��Ǹ� ����Ǵ� ������ '�۾�ó������' 
   (2) Anonymous Procedure 
       -> Stored Procedure ���� �������� 'DBMS�� �ڵ����� ����'�Ǿ� 
         ���������� ȣ��Ǵ� ���ν��� 
   (3) Stored Function 
       -> ���ν����� �������� 'return��'�� �����ؾ� �� 
   (4) Trigger 
       -> � ���ǿ� �����Ǿ����� ��Ȳ(DML)�� �߻��Ǹ� 
         �ڵ����� ȣ��Ǿ� �۵��Ǵ� ���� 
   (5) Package 
       -> ���� �͵��� ��ɺ� ������� �ٷ��� 

[ PART 3 - SQL ]
1. DQL
   #1-1 Base
   (1) �⺻
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
       -- ��� ������� ����� �޿��� ���
       SQL> select EMPNO, SAL from EMP;
       -- ��� ������� ����� �޿��� ���( �޿��� ���� ��)
       SQL> select EMPNO, SAL from EMP order by SAL; -- asc
       -- ��� ������� ����� �޿��� ���( �޿��� ���� ��)
       SQL> select EMPNO, SAL from EMP order by SAL desc;
       -- ��� ����� ����� �޿��� ��� ( �޿��� ���� ��, ���� �޿��϶� EMPNO�������� )
       SQL> select EMPNO, SAL from EMP order by SAL desc, EMPNO;

       -- ��� ����� ����� Ŀ�̼��� ���( Ŀ�̼� ��/�� �� )
       SQL> select EMPNO, COMM from EMP order by COMM; -- null�� �ڷ� 
       SQL> select EMPNO, COMM from EMP order by COMM desc; -- null�� ������
       
       -- (null ������) ��� ����� ����� Ŀ�̼��� ���
       SQL> select EMPNO, COMM from EMP where COMM is not null;
       -- (null ������) ��� ����� ����� Ŀ�̼��� ���(��, Ŀ�̼��� ���� ������)
       SQL> select EMPNO, COMM from EMP where COMM is not null 
           order by COMM desc;

       -- ������ ���ؼ� �������� ������ ��, �޿��� ���� ������ ����
       SQL> select JOB, SAL from EMP order by JOB, SAL desc;

  (4) ALIAS   
       SQL> select JOB "����", SAL "�޿�" from EMP;
       SQL> select JOB as "����", SAL as "�޿�" from EMP;
       SQL> select JOB ����, SAL �޿� from EMP;
       SQL> select JOB ����, SAL "1234" from EMP;
       SQL> select JOB ����, SAL "!@#$" from EMP;

        cf) ���� or Ư������ or �������� �Ǹ� ""�� ������� �� 

  (5) where
       -- �μ���ȣ�� 20�� ����� ����� �μ���ȣ�� ���
       SQL> select EMPNO, DEPTNO from EMP where DEPTNO=20;

       -- 30�� �μ��� �μ���ȣ�� �޿��� ����� ����϶�(��, �޿��� ������ ��)
       SQL> select DEPTNO, SAL, EMPNO from EMP 
             where DEPTNO=30 order by SAL desc;

       -- �Ի����� 81�� 12�� 3�������� ����� �̸��� �Ի��ϰ� �μ���ȣ ���
         -- (��, ����� ��������)
       SQL> select EMPNO, ENAME, HIREDATE, DEPTNO from EMP
           where HIREDATE>='81/12/03' order by EMPNO desc;

       -- �Ի����� 81�� 12�� 3�������� ����� �̸��� �Ի��ϰ� �μ���ȣ ���
         -- (��.. ����� ��������, 20���μ��� ���)
       SQL> select EMPNO, ENAME, HIREDATE, DEPTNO from EMP
           where HIREDATE>='81/12/03' and DEPTNO=20 
	   order by EMPNO desc;

  (6) ������( Operator )
      1) ���������( *, /, +, - ) 
       --30�� �μ� ����� �޿��� 10% �λ��ؼ� ���(EMPNO)�� �޿�(SAL)�� ���
       SQL> select EMPNO, SAL*1.1 from EMP where DEPTNO=30;

       --30�� �μ� ����� '�������ʽ�'�� �̸��� �������ʽ��� ���(�������ʽ��� ���� ��) 
       -- ( ��, �������ʽ��� �޿��� 2��� Ŀ�̼��� 1/2�� ���̴�.)
       SQL> select ENAME, SAL, COMM from EMP where DEPTNO=30;
       SQL> select ENAME, SAL, NVL(COMM,0) from EMP where DEPTNO=30;
       SQL> select ENAME, SAL*2+NVL(COMM,0)/2 "�������ʽ�" from EMP 
            where DEPTNO=30 order by "�������ʽ�" desc;

      2) �񱳿����� ( =, != , >, >=, <, <= )
       -- �޿��� 950�� ����� �̸�(ENAME)�� �޿�(SAL)�� ���
       SQL> select ENAME, SAL from EMP where SAL=950;

       -- �޿��� 3000 �̻��� ����� �̸�(ENAME)�� �޿�(SAL)�� ���
       SQL> select ENAME, SAL from EMP where SAL>=3000;

       -- 30�μ��� �ƴ� ����� �̸�(ENAME)�� �޿�(SAL)�� �μ���ȣ(DEPTNO)�� ���
	   -- (�μ���ȣ�� ��������, ���� �޿���, �̸� ��������)
       SQL> select ENAME, SAL, DEPTNO from EMP where DEPTNO!=30
          order by DEPTNO, SAL desc, ENAME;

     3) �������� ( and(��), or(��), not )	
       -- 20�� �μ��̸鼭 �޿� 3000�̻��� ����� �̸�, �޿�, �μ���ȣ�� ���
       SQL> select ENAME, SAL, DEPTNO from EMP where DEPTNO=20 and SAL>=3000;

       -- ������ 'SALESMAN'�̰� �μ���ȣ�� 30���� �̸�, ����, �μ���ȣ�� ���
       SQL> select ENAME, JOB, DEPTNO from EMP where DEPTNO=30 and JOB='SALESMAN';

       -- �޿��� 1000 �̸��̰ų�, 4000 �̻��� ����� ���, �޿��� ���
       SQL> select EMPNO, SAL from EMP where SAL<1000 or SAL>=4000;

       -- �޿��� 1000 �̻� 4000 �̸��� ����� ���, �޿��� ���
       SQL> select EMPNO, SAL from EMP where not (SAL<1000 or SAL>=4000);

     cf1) ���(EMP) �÷� 
         EMPNO  -- ���                                    
	 ENAME  -- �̸�                                             
	 JOB    -- ����                                            
	 MGR    -- ������                                              
	 HIREDATE -- �Ի���                                         
	 SAL    -- �޿�                                             
	 COMM   -- Ŀ�̼�                                            
	 DEPTNO -- �μ���ȣ 

     cf2) �μ�(DEPT) �÷� 
         DEPTNO -- �μ���ȣ
	 DNAME  -- �μ��̸� 
	 LOC    -- �μ���ġ 

	-- �������� �ѻ���� 3���� ������ ���� ���� Ǯ��� 

     4) SQL������ ( in, any, all, between, like, is null, is not null, exists, ...)
	-- �μ���ȣ�� 10 or 20 or 100 �� ����� �μ���ȣ�� �̸��� ���
        SQL> select ENAME, DEPTNO from EMP where DEPTNO=10 or DEPTNO=20 or DEPTNO=100;
	SQL> select ENAME, DEPTNO from EMP where DEPTNO in(10, 20, 100);
	SQL> select ENAME, DEPTNO from EMP where DEPTNO=any(10, 20, 100);

        -- 30�μ��� �ִ� �޿����� �� ū �޿��� �޴� ����� �̸�, �޿� ���
	SQL> select SAL from EMP where DEPTNO=30; 	
	SQL> select ENAME, SAL from EMP 
	     where SAL>all(select SAL from EMP where DEPTNO=30);
	     -- all�� ��ü���� ��� �������Ѿ� �ϴ� ������ 

	-- �޿��� 1100 �̻� 3000 ������ ����� �̸��� �޿� ���
	SQL> select ENAME, SAL from EMP where SAL>=1100 and SAL<=3000;
	SQL> select ENAME, SAL from EMP where SAL between 1100 and 3000;
	
	-- �̸��� 'FORD'�� 'SCOTT' ������ ��� �̸��� ���!(��, ���ĺ� �� ����) 
	SQL> select ENAME from EMP where ENAME>='FORD' and ENAME<='SCOTT' order by ENAME;
	SQL> select ENAME from EMP where ENAME between'FORD' and 'SCOTT' order by ENAME;

	-- �̸��� 'J'�� ���۵Ǵ� ��� �̸��� ���(��, �������� ����)
	SQL> select ENAME from EMP where ENAME like 'J%' order by ENAME;

	-- �̸��� 'T'�� ����ִ� ��� �̸��� ���
	SQL> select ENAME from EMP where ENAME like '%T%' order by ENAME;

	-- �̸��� ����° ���ڰ� 'A'�� ����� �̸��� ���
	SQL> select ENAME from EMP where ENAME like '__A%' order by ENAME;

	-- �޿��� ���� �ڸ��� 5�� ����� �޿��� ���
	SQL> select SAL from EMP where SAL like '%5_';

	-- Ŀ�̼��� NULL�� ����� ����� Ŀ�̼��� ��� 
	SQL> select EMPNO, COMM from EMP where COMM is null;

	-- Ŀ�̼��� NULL�� �ƴ� ����� ����� Ŀ�̼��� ���
	SQL> select EMPNO, COMM from EMP where COMM is not null;

	-- �̸��� 'FORD'��� ����� �����ϸ� ��� ����� �̸��� ���
	SQL> select ENAME from EMP where ENAME='FORD';
	SQL> select ENAME from EMP where exists(select ENAME from EMP where ENAME='FORD');	

        -- �̸��� 'AAA'��� ����� �����ϸ� ��� ����� �̸��� ���
	SQL> select ENAME from EMP where exists(select ENAME from EMP where ENAME='AAA');
	
    5) ���տ����� ( || )
        SQL> select ENAME||'�� �޿��� ', SAL||'�Դϴ�' from EMP;

    6) ���տ����� ( union, union all, intersect, minus )
       -- ����� ����� �̸� ����ϰ�, �μ��� ��ȣ�� �μ��̸��� ���
       SQL> select EMPNO, ENAME from EMP
	    union
            select DEPTNO, DNAME from DEPT;

       -- ����� ����� �̸� ����ϰ�, ����� ����� �̸� ��� 
       SQL> select EMPNO, ENAME from EMP
            union
            select EMPNO, ENAME from EMP; --14�� 

       SQL> select EMPNO, ENAME from EMP
            union all
            select EMPNO, ENAME from EMP; --28�� 

       SQL> select EMPNO, ENAME from EMP
	    intersect
            select DEPTNO, DNAME from DEPT; --0�� 

       SQL> select EMPNO, ENAME from EMP
            intersect
            select EMPNO, ENAME from EMP where DEPTNO=20; --5�� 

       SQL> select EMPNO, ENAME from EMP
            minus
            select EMPNO, ENAME from EMP where DEPTNO=20; --9�� 
 
  (7) ������ �켱���� 
     1) 1����: ��, SQL, ��� 
     2) 2����: NOT 
     3) 3����: AND 
     4) 4����: OR 
     5) 5����: ����, ���� 

       SQL> select ENAME, SAL from EMP
	    where NOT SAL>1000 and SAL<3000;
       SQL> select ENAME, SAL from EMP
	    where NOT (SAL>1000 and SAL<3000);

   cf) SQL������ ����� 
      1) ������ ���� ;�� �ٿ��ִ� enter!
      2) ������ ���� ���ο� /�� �ٿ��ְ� enter!
      3) ���� �ֱ�(����)�� ���ۿ� ��� SQL ������ ����
          SQL> run
      4) ������ SQL���� / ���� 
          SQL> edit
          [1] �޸� ������ ������ �޸������� Ȯ�� 
	  [2] ����
	  [3] ���� 
	  [4] run 


   #1-2. �Լ�( function )
   (1) �Լ�(function) �� ? (ó��/��ȯ)
       ��� ���� �����ϴ� ������ν� �־��� �μ�(argument)
       �� ���� 'ó��'�� �Ͽ� �� ����� '��ȯ'�ϴ� ���� ���� 

   (2) �Լ� ����� ��ü�� ǥ�� 
      1) Data�� ���� '���' 
      2) Data�� �ٸ� ���·� '��ȯ'
      3) Data�� ����� '���'

   (3) �Լ��� ���� 
      1) ������ �Լ� (ex: nvl, .. )
         -> �ϳ��� ��(row)��, �ϳ��� ������� �����ϴ� �Լ� 
	 SQL> select ename, nvl(comm, 0) from emp where comm is null;

      2) ������ �Լ� (ex: max, min, avg, .. ) 
         -> �������� ��(row)��, �ϳ��� ������� �����ϴ� �Լ� 
         SQL> select avg(SAL) from EMP;

   (4) ������ �Լ� 
      1) ���� �Լ� 
        <1> chr(�ƽ�Ű�ڵ�)
	    SQL> select chr(65) from dual;

	<2> concat(�÷���, '���Ϲ��ڿ�')
	   SQL> select ENAME||' is a ' ||JOB from EMP;
	   SQL> select concat(ENAME, ' is a '), JOB from EMP;

	<3> initcap('���ڿ�')
	   SQL> select initcap('the lion') from dual;
	   INITCAP �Լ��� �Ű������� ������ char�� ù ���ڴ� �빮�ڷ�, �������� �ҹ��ڷ� ��ȯ�ϴ� �Լ���

	<4> lower('���ڿ�')
	   SQL> select lower('MY NAME IS KHS') from dual;
           SQL> select lower(ename) from emp;

	<5> LPAD('���ڿ�1', �ڸ���, '���ڿ�2')

	    LPAD �Լ��� ������ ���� ��ŭ ���ʺ��� Ư�����ڷ� ä���ش�.
	    - �Լ�  :  LPAD("��", "�� ���ڱ���", "ä����")

	   SQL> select LPAD('khs', 13, '*#') from DUAL;
	   SQL> select LPAD('khs', 13, ' ') from DUAL;

	<6> RPAD('���ڿ�1', �ڸ���, '���ڿ�2')
	   SQL> select RPAD('khs', 13, '*#') from DUAL;

	<7> LTRIM('���ڿ�1', '���ڿ�2')
           SQL> select LTRIM('xyxXxyLAST WORDxy', 'xy') from DUAL;
           SQL> select LTRIM('xyyXxyLAST WORDxy', 'xy') from DUAL;
           SQL> select LTRIM('     LAST WORDxy', ' ') from DUAL;
	   SQL> select LTRIM('     LAST WORDxy') from DUAL;

	<8> RTRIM('���ڿ�1', '���ڿ�2')
           SQL> select RTRIM('xyxXxyLAST WORDxy', 'xy') from DUAL;
	   SQL> select RTRIM('xyxXxyLAST WORDxyx', 'xy') from DUAL;
	   SQL> select RTRIM('WORD  ', ' ') from DUAL;
	   SQL> select RTRIM('WORD  ') from DUAL;
	   SQL> select length('WORD   ') from dual;
	   SQL> select length(rtrim('WORD   ')) from dual;

	<9> REPLACE('���ڿ�1', '���ڿ�2', '���ڿ�3')
	   SQL> select 'JACK and JUE' from DUAL;
	   SQL> select replace('JACK and JUE', 'J','BL') from DUAL;
	   SQL> select DNAME from DEPT;
	   SQL> select replace(DNAME, 'A', 'i') from DEPT;

	<10> SUBSTR('���ڿ�', �ڸ���, ����)
	   SQL> select SUBSTR('ABCDEFG', 3, 2) from DUAL;

	   -- ename�� �ι�° �ڸ��� 'A'�� ����� �̸��� ���
	   SQL> select ENAME from EMP where ENAME like '_A%';
	   SQL> select ENAME from EMP where substr(ENAME,2,1)='A';

	<11> ASCII('����')
	   SQL> select ascii('A') from dual;
	   SQL> select ASCII('"') from DUAL;
	   SQL> select ASCII('#') from DUAL;
	   SQL> select ASCII('3') from DUAL;

	<12> LENGTH('���ڿ�')
	   SQL> select length('���޷� ��') from DUAL; 
	   SQL> select length('abC D') from DUAL;

	<13> GREATEST('���ڿ�1', '���ڿ�2', '���ڿ�3')
	   SQL> select GREATEST('CC', 'ABCDE', 'CA') from DUAL;
	   SQL> select GREATEST('12', '132', '119') from DUAL;
	   SQL> select GREATEST('����', '����', '����') from DUAL; 

	<14> LEAST('���ڿ�')
	   SQL> select LEAST('CC', 'ABCDE', 'CA') from DUAL; 
           SQL> select LEAST('12', '132', '119') from DUAL;
           SQL> select LEAST('����', '����', '����') from DUAL;

	<15> INSTR('���ڿ�1', '���ڿ�2', �ڸ���1, �ڸ���2)
	   SQL> select INSTR('CORPORATE FLOOR', 'OR', 3, 2) from DUAL;
           SQL> select INSTR('CORPORATE FLOOR', 'OR', 6, 1) from DUAL;

	   cf) '�ڸ���1'���� '�ڸ���2'��°�� '���ڿ�2'�� ã��

	<16> NVL(�÷���, ����) ** 
	   SQL> select ENAME, NVL(COMM, 100) from EMP; 
	   SQL> select ENAME, NVL(COMM, 0) from EMP;

     2) ���� �Լ�
        <1> ABS(����)  
	   SQL> select ABS(-15) from DUAL;

	<2> CEIL(����)
	   SQL> select CEIL(11.012) from DUAL;
	   SQL> select CEIL(-11.012) from DUAL;

	<3> FLOOR(����)
	   SQL> select FLOOR(12.999) from DUAL;
	   SQL> select FLOOR(-12.999) from DUAL;

	<4> ROUND(����)
	   SQL> select ROUND(12.5) from DUAL;
	   SQL> select ROUND(-12.5) from DUAL;

	<5> COS(����[rad]) 
	   SQL> select cos(90 * 3.141592653589793/180) from dual;

	<6> SIN(����[rad]) 
	   SQL> select sin(90 * 3.141592653589793/180) from dual;

	<7> TAN(����[rad])
           SQL> select TAN(45 * 3.141592653589793/180) from DUAL;

	<8> EXP(����)
	   SQL> select EXP(2) from dual;

	<9> LOG(����1, ����2)
	   SQL> select LOG(10, 100) from dual;

	<10> MOD(����1, ����2)
	   SQL> select mod(11,4) from dual;

	<11> POWER(����1, ����2)
	   SQL> select power(3, 3) from dual;

	<12> TRUNC(����1, ����2)
	   SQL> select TRUNC(15.789, 2) from DUAL;
	   SQL> select TRUNC(15.789, 0) from DUAL;
	   SQL> select TRUNC(-15.789, 2) from DUAL;

      3) ��¥ �Լ� (***)
        <1> SYSDATE
           SQL> select SYSDATE from dual;

	<2> ADD_MONTHS(��¥�÷� or ��¥������, ����)
	   SQL> select HIREDATE from EMP where EMPNO=7782;
	   SQL> select HIREDATE, ADD_MONTHS(HIREDATE, 7) from EMP where EMPNO=7782;
	   SQL> select ADD_MONTHS('90/11/04', 2) from DUAL;

	<3> LAST_DAY(��¥�÷� or ��¥������)
	   SQL> select LAST_DAY('19/10/29') from DUAL;
	   SQL> select hiredate, LAST_DAY(hiredate) from EMP;	

	<4> NEW_TIME(��¥�÷�or��¥������, 'GMT', 'PDT')
	   SQL> select NEW_TIME('08/12/04', 'GMT', 'PDT') from DUAL;
           SQL> select hiredate, NEW_TIME(hiredate, 'GMT', 'PDT') from EMP;

        <5> MONTHS_BETWEEN(��¥�÷�or��¥������1, ��¥�÷�or��¥������2)
	   SQL> select MONTHS_BETWEEN('80/01/02', '81/02/04') from DUAL;
	   -- empno�� 7782�� ����� ��������� �ٹ�����
	   SQL> select MONTHS_BETWEEN(SYSDATE, HIREDATE) from EMP where EMPNO=7782;

	<6> NEXT_DAY(��¥�÷�or��¥������, ����)
	   SQL> select SYSDATE, NEXT_DAY(SYSDATE,4) from DUAL;
	   SQL> select SYSDATE, NEXT_DAY(SYSDATE,2) from DUAL; 
	   
	   -- ��(1) ��(2) ȭ(3) ��(4) ��(5) ��(6) ��(7)

     4) ���� ��ȯ �Լ� ( ***** )
        => TO_CHAR(��¥�÷�or��¥������, '��ȯ����')
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

	   --���糯¥�� '2020-12-07 ���� 12:13:50 ������' ������ ���
	<15> 'YYYY-MM-DD AM HH:MI:SS DAY'
	   SQL> select TO_CHAR(SYSDATE, 'YYYY-MM-DD AM HH:MI:SS DAY') from DUAL; 

	   cf) alter session set NLS_LANGUAGE='ENGLISH';

	   cf) Tip 
	     - one, two, three .. 
	      SQL> select to_char(SYSDATE, 'DDSP') from dual;

	     - simple ����  
	      SQL> select to_char(SYSDATE, 'DDTH') from dual;

	     - ����  
	      SQL> select to_char(SYSDATE, 'DDSPTH') from dual;

   (5) ������ �Լ� ( ***** )
      1) count(�÷���)
        SQL> select count(ename) from emp;
	SQL> select count(comm) from emp;
	SQL> select count(*) from emp;
	SQL> select count(EMPNO) from emp;
      
      2) sum(�÷���)
        SQL> select sum(comm) from emp;
	SQL> select sum(sal) from emp;

      3) avg(�÷���)
        SQL> select avg(sal) from EMP;
	SQL> select avg(comm) from EMP; -- null���� 
	SQL> select avg(nvl(comm,0)) from EMP; -- null���� 
     
      4) max(�÷���)�� min(�÷���)
        SQL> select max(sal) from EMP;
	SQL> select min(sal) from EMP;
	SQL> select max(sal) - min(sal) from EMP;

	-- �ְ� �޿����� ����̸��� ���
	SQL> select ENAME, SAL from EMP where SAL=max(SAL); --(X)
	SQL> select ENAME, SAL from EMP where SAL=(select max(SAL) from EMP); --(O)

      5) VARIANCE(�÷���)
        SQL> select VARIANCE(comm) from EMP;
    
      6) STDDEV(�÷���)
        SQL> select STDDEV(comm) from EMP;

      < Question > 
      -- �μ��� ��տ���(�ݿø�)�� ���
      Err> select DEPTNO, avg(SAL) from EMP; 
      SQL> select DEPTNO, avg(SAL) from EMP group by DEPTNO;
      SQL> select DEPTNO, round(avg(SAL)) from EMP group by DEPTNO;

      -- �޿� 2000 �̻��� ������� �μ��� ��ձ޿��� �ݿø���
      SQL> select DEPTNO, round(avg(SAL)) from EMP 
           where SAL>=2000 group by DEPTNO;

      -- �޿� 2000 �̻��� ������� �μ��� ��ձ޿��� �ݿø��� (�μ���ȣ�� �������� ����)
      SQL> select DEPTNO, round(avg(SAL)) from EMP 
           where SAL>=2000 group by DEPTNO order by DEPTNO;
  
     ## ����Ŭ ���� ��: https://github.com/khs4git1/Oracle.git

      -- �޿� 2000 �̻��� ������� �μ��� ��ձ޿��� �ݿø��� (�޿��� ���� �� ����)
      SQL> select DEPTNO, round(avg(SAL)) from EMP
           where SAL>=2000 group by DEPTNO order by round(avg(SAL)) desc;
      SQL> select DEPTNO, round(avg(SAL)) aa from EMP
           where SAL>=2000 group by DEPTNO order by aa desc;
      SQL> select DEPTNO, round(avg(SAL)) from EMP
           where SAL>=2000 group by DEPTNO order by 2 desc;

      --�޿� 1000�̻��� ������� �μ��� ��ձ޿��� �ݿø����� �μ���ȣ�� �������� �����϶�
	   -- (��, �μ��� ��ձ޿��� 2000 �̻��� ���� ���!)
      ����> SELECT deptno, round(AVG(sal))  "��ձ޿�" FROM emp 
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

	  -- #����: having �������� alias�� ����� �� ���� 

      --�� �μ��� ���� ������ �ϴ� ����� �ο����� ���Ͽ� �μ���ȣ, ������, �ο����� ����϶�
	 --(��, �μ���ȣ�� ���������� ���� �������� ����!)
      SQL> select DEPTNO, JOB, count(EMPNO) from EMP
           group by DEPTNO, JOB 
	   order by DEPTNO desc, JOB desc;
     
      


