use exam;
create table DEPT (DEPTNO int(2),DNAME	varchar(15),LOC	varchar(10));
insert into DEPT values (10	,'ACCOUNTING','NEW YORK'),
(20	,'RESEARCH'	,'DALLAS'),
(30,'SALES','CHICAGO'),
(40,'OPERATIONS','BOSTON');
select * from DEPT;