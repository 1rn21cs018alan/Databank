#some insert statements

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

insert into Employee(ssn ,	name ,	dno ,salary) values
	(1003,"Ganesha",5,		10000),
	(1004,"Manish",5,		20000),
	(1005,"Deepak",5,		30000),
	(1006,"Rahul",5,		40000),
	(1007,"Surendra",6,		15000),
	(1008,"Suraj",6,		60000),
	(1009,"Mohandas",6,		70000),
	(1010,"Harsha",2,		80000),
	(1011,"Scott",3,		90000),
	(1012,"Pampers",4,		100000),
	(1013,"Scott",3,		110000),
	(1014,"Scott",3,		120000),
	(1015,"Scott",3,		130000),
	(1016,"Scott",Null,		140000),
	(1017,"Scott",Null,		150000),
	(1018,"Dilip",1,		150000),
	(1019,"Dinesh",1,		150000),
	(1020,"Dharma",1,		150000),
	(1021,"Jayesh",1,		150000),
	(1022,"Kartik",1,		150000),
	(1023,"Mitra",5,		150000),
	(1024,"Mayur",5,		150000)
;


insert into Project(pno,pname,dno) values
	(5601,"IOT",5),
	(5602,"Tiles",5),
	(5603,"bank",3),
	(5604,"library",6),
	(5605,"Music Tuner",5),
	(5606,"Room Allocation",6),
	(5607,"MatLab",1),
	(5608,"Robot-Arashi",1),
	(5609,"SLAM System",5),
	(5610,"Railgun",3)
;

insert into Works_on(ssn,pno,hours) values
	(1003,5601,12),
	(1004,5601,12),
	(1005,5602,12),
	(1006,5603,12),
	(1007,5604,12),
	(1008,5605,12),
	(1009,5606,12),
	(1010,5607,12),
	(1011,5608,12),
	(1012,5601,12),
	(1012,5602,12),
	(1012,5605,12),
	(1012,5609,12), 
	(1013,5610,12),
	(1013,5601,12),
	(1013,5602,12),
	(1013,5605,12),
	(1013,5609,12),
	(1014,5601,12),
	(1014,5602,12),
	(1014,5605,12),
	(1014,5609,12)
;
