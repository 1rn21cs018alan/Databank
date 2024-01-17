//some insert statements

insert into Employee(ssn ,	name ,	addr,	dob ,	sex ,salary ) values
	(1002,"bathel","BNMIT","2003-01-29","F",40000.00);
insert into Department values(1,"IT",1002,"2022-10-14");
insert into Dlocation values(1,"bangalore");
insert into Employee values
	(1001,"asher","RNSIT","2003-01-29","M",40000.00,1002,1);
insert into Project values (5600,"RNS front page","CS block",1);
insert into Works_on values (1001,5600,102);



insert into Department(dno,dname) values
	(2,"EC"),
	(3,"Accounting"),
	(4,"QA"),
	(5,"QT"),
	(6,"HR")
;

insert into Employee(ssn ,	name ,	dno ) values
	(1003,"Deepak",5);
