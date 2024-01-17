//some insert statements

insert into Employee(ssn ,	name ,	addr,	dob ,	sex ,salary ) values
	(1002,"bathel","BNMIT","2003-01-29","F",40000.00);
insert into Department values(301,"IT",1002,"2022-10-14");
insert into Dlocation values(301,"bangalore");
insert into Employee values
	(1001,"asher","RNSIT","2003-01-29","M",40000.00,1002,301);
insert into Project values (5600,"RNS front page","CS block",301);
insert into Works_on values (1001,5600,102);
