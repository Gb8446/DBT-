use exam;
create table EMP (EMPNO	int(4),ENAME varchar(10),JOB varchar(9),HIREDATE date,
SAL float(7,2),COMM float(7,2),DEPTNO	int(2));
insert into EMP values (7839,'KING','MANAGER','1991-11-17',	5000,NULL,10),
(7698,'BLAKE','CLERK','1981-05-01',2850,NULL,30),
(7782,'CLARK','MANAGER','1981-06-09',2450,	NULL	,10),
(7566,'JONES','CLERK','1981-04-02',2975,	NULL, 20),
(7654	,'MARTIN','SALESMAN','1981-09-28',1250,1400	,30),
(7499,'ALLEN','SALESMAN','1981-02-20',1600,300,30);
select * FROM EMP;
select * from EMP where SAL between 2500 and 5000;
select ENAME from EMP ORDER BY ENAME DESC;
select lower(JOB) from EMP;
select ENAME,length(ENAME)"length of ename" from EMP;
select DEPTNO ,count(EMPNO) FROM EMP group by DEPTNO;
select DNAME,ENAME from DEPT,EMP where DEPT.DEPTNO=EMP.DEPTNO;
select ENAME, instr(ENAME,'AR') from EMP;
select ename, sal, sal*0.2 "HRA" from emp;