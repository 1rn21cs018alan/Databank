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

