
/* 1.count customers with grades above bangalore's average*/
select count(*)
from Customer c1
where c1.grade>(
	select avg(grade)
	from Customer 
	where city="bangalore"
);

/* 2.find names and number of all salesman who have more than one customer*/

select sid,name
from Salesman
where sid in (
	select S.sid
	from Salesman S,Customer C
	where S.sid=C.sid
	group by S.sid
	having count(*)>1
);

/* 3.list all Salesman and indicate those who have and 
     don't have customers in their city(UNION) */

select S.sid,S.name,C.name
from Salesman S,Customer C
where S.sid=C.sid
union
select S.sid,S.name,"NONE"
from Salesman S,Customer C
where S.sid Not IN(
	select S.sid
	from Salesman S,Customer C
	where S.sid=C.sid
);

/* 4.create a view that finds the salesman with customers with highest orders of a day*/

create view big as
select S.sid,S.name,O.odate
from Salesman S, Orders O
where S.sid=O.sid and amt in(
	select max(amt)
	from Orders O2
	where O.odate=O2.odate
);

select * from big;

/* 5.Deonstrate delete operation by removing the salesman with id 1000. 
     All his orders also must be deleted*/

delete from Salesman where sid=1000;
