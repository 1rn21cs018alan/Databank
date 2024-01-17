//Select all employees who work o all the projects controlled by department number 5(use not Exists)

select name
from Employee E
where not exists(
	select P.pno
	from Project P
	where P.dno=5
	except
	select W.pno
	from Works_on W
	where E.ssn=W.ssn
);

______________________________________________

//Select Projects that involve Employees named Scott who either work on that project or managers it

select Distinct(pno)
from Project P,Department D, Employee E
where P.dno=D.dno and D.mgrssn=E.SSn and E.name="Scott"
union
select Distinct (W.pno) 
from Project P, Works_on W, Employee E
where P.pno=W.pno and E.SSn=W.SSn and E.name="Scott"
;
