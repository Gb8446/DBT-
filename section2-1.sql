create table temp ( string1 varchar (10), string2 varchar (15), result varchar (10));
drop table temp;
delimiter //
create procedure PROC1 (string1 varchar (10),string2 varchar(15))
begin
declare z int;
set z= instr(string2,string1);
if z>0 then
insert into temp values (string1,string2,'exit');
else
insert into temp values (string1,string2,' not exit');
end if;
end;
//
delimiter ;

call PROC1 ('dac','cdac');
call PROC1 ('xyz','cdac');
select * from temp;