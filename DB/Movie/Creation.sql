create database Movie_018;
use Movie_018;

create table Actor(
	Aid int,
	Aname varchar(40),
	gender varchar(1),
	constraint pk1 primary key(Aid)
);

create table Director(
	Did int,
	Dname varchar(40),
	phone varchar(15),
	constraint pk2 primary key(Did)
);
create table Movie(
	Mid int,
	title varchar(40),
	year int,
	lang varchar(20),
	Did int,
	constraint fk1 foreign key(Did) references Director(Did),
	constraint pk3 primary key(Mid)
);
create table Movie_Cast(
	Aid int,
	Mid int,
	role varchar(20),
	constraint fk3 foreign key(Mid) references Movie(Mid),
	constraint fk2 foreign key(Aid) references Actor(Aid),
	constraint pk4 primary key(Aid,Mid)
);

create table Rating(
	Mid int,
	star int,
	constraint fk4 foreign key(Mid) references Movie(Mid),
	constraint pk5 primary key(Mid,star)
);
