DROP database IF EXISTS order_018;

create database order_018;
use order_018;
create table Salesman(
	sid int,
	name varchar(40),
	city varchar(40),
	com int,
	constraint pk1 primary key(sid)
);

create table Customer(
	cid int,
	name varchar(40),
	city varchar(40),
	grade int,
	sid int,
	constraint pk2 primary key (cid),
	constraint fk1 foreign key(sid) references Salesman(sid) on delete set Null
);
create table Orders(
	ono int,
	amt int,
	odate date,
	cid int,
	sid int,
	constraint pk3 primary key (ono),
	constraint fk2 foreign key(sid) references Salesman(sid) on delete cascade,
	constraint fk3 foreign key(cid) references Customer(cid) on delete cascade
	
);
