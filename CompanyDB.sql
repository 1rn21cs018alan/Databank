// Creation Commands

create database Company_1;
use Company_1;
create table Employee(
	ssn int ,
	name varchar(40) not null,
	addr varchar(200),
	dob date,
	sex varchar(1) default 'M',
	salary float,
	superssn int,
	dno int,
	constraint pk1 primary key(ssn)
);

create table Department(
	dno int,
	dname varchar(40) not null,
	mgrssn int,
	mgrstartdate date,
	constraint pk2 primary key(dno),
	constraint fk1 foreign key(mgrssn) references Employee(ssn)
);

alter table Employee add constraint fk2 foreign key(dno) references Department(dno);
alter table Employee add constraint fk3 foreign key(superssn) references Employee(ssn);

create table Dlocation(
	dno int,
	loc varchar(200),
	constraint pk3 primary key(dno,loc),
	constraint fk4 foreign key(dno) references Department(dno)
);

create table Project(
	pno int,
	pname varchar(100),
	ploc varchar(200),
	dno int,
	constraint pk4 primary key(pno),
	constraint fk5 foreign key(dno) references Department(dno)
);

create table Works_on(
	ssn int,
	pno int,
	hours int,
	constraint pk5 primary key(ssn,pno),
	constraint fk6 foreign key(pno) references Project(pno),
	constraint fk7 foreign key(ssn) references Employee(ssn)
);
