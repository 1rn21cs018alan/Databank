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

____________________________________________________

//Show the resulting salaries if every employee working on 'IOT' project is given 10% hike

Select E.name,E.salary * 1.1 as increased_sal
from Employee E, Project P, Works_on W
where E.SSn=W.SSn and P.pno=W.pno and P.pname="IOT";


____________________________________________________
// for each dept that has more than 5 employees , retrieve Dno, no of employees who make more than 60000

select D.Dno ,Count(*)
from Employee E,Department D
where D.dno=E.dno and E.salary>6000 and E.dno in (
	select E.dno
	from Employee E
	group by E.dno
	having count(*)>5
)
group by dno;


____________________________________________________
//find sum of salaries of all employees of Accounting Department as well as maximum salary and minimum salary from this Department

Select sum(salary),min(salary),max(salary)
from Employee E,Department D
where E.dno=D.dno and D.dname="Accounting";
