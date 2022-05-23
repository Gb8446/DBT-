use exam;
create table tempp (res varchar(10));
delimiter //
create function FUNC1 (x int,y int, z int)
returns boolean
deterministic
begin
if (x+y>z) and (x+z>y) and (y+z>x) then 
return true;
else
return false;
end if;
end;
//
delimiter ;

delimiter //
create procedure abc (x int,y int, z int)
begin
declare R int;
set R=FUNC1(x,y,z);
if R=0 THEN
insert into tempp values('TRUE');
else
insert into tempp values('FALSE');
end if;
end;
//
delimiter ;
drop procedure abc;
call abc (3,4,5);
CALL ABC (1,2,3);
SELECT * FROM TEMPP;
