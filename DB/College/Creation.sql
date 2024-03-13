#creation statements
drop database if exists college_018;
create database college_018;
use college_018;
create table student(
	usn varchar(10),
	name varchar(50),
	address varchar(200),
	phone varchar(15),
	gender char(1),
	constraint pk1 primary key(USN)
);
create table semsec(
	ssid int,
	sem int,
	sec char(1),
	constraint pk2 primary key(ssid)
);

create table class(
	usn varchar(10),
	ssid int,
	constraint pk3 primary key(usn),
	constraint fk1 foreign key(usn) references student(usn),
	constraint fk2 foreign key(ssid) references semsec(ssid)
);

create table subject(
	subcode int,
	title varchar(50),
	sem int,
	credits int,
	constraint pk4 primary key(subcode) 
);

create table IAmarks(
	usn varchar(10),
	subcode int,
	ssid int,
	test1 int,
	test2 int,
	test3 int,
	finalIA int,
	constraint fk3 foreign key(usn) references student(usn),
	constraint fk4 foreign key(subcode) references subject(subcode),
	constraint fk5 foreign key(ssid) references semsec(ssid),
	constraint pk5 primary key(usn,ssid,subcode)
);
