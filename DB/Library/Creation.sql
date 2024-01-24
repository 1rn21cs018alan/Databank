
create database library_21cs018;
use library_21cs018;

create table Library_branch(
	ID int,
	Name varchar(100),
	address varchar(200),
	constraint pk2 primary key(ID) 
);

create table Publisher(
	Name varchar(100),
	address varchar(200),
	phone varchar(15),
	constraint pk3 primary key(Name)
);

create table Book(
	ID int,
	title varchar(100),
	year date,
	pub varchar(100),
	constraint pk1 primary key(ID),
	constraint fk1 foreign key(pub) references Publisher(name)
);

create table Book_Authors(
	Book_ID int,
	Author varchar(100),
	constraint fk2 foreign key(Book_ID) references Book(ID) on delete cascade,
	constraint pk4 primary key(Book_ID,Author)
);

create table Card(
	card_no int,
	constraint p5 primary key(card_no)
);

create table Book_lending(
	Book_ID int,
	Branch_ID int,
	Card_no int,
	date_out date,
	due_date date,
	constraint fk3 foreign key(Book_ID) references Book(ID) on delete cascade,
	constraint fk4 foreign key(Branch_ID) references Library_branch(ID),
	constraint fk5 foreign key(Card_no) references Card(card_no)	
);

create table Book_copies(
	Book_ID int,
	Branch_ID int,
	Copies int,
	constraint fk6 foreign key(Book_ID) references Book(ID) on delete cascade,
	constraint fk7 foreign key(Branch_ID) references Library_branch(ID),
	constraint pk6 primary key(Book_ID,Branch_ID)
);



