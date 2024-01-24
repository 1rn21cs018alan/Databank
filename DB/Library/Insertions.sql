
insert into Publisher values
	("Sun Publishers","Brigade Road,near Samsung Plaza","+91 8893629927"),
	("Moon Publishers","Qutab Minar, Delhi","+91 8893629927");
	
insert into Book values
	(1,"Database Managment",2014,"Sun Publishers"),
	(2,"Computer Network",2017,"Moon Publishers");

insert into Book_Authors values
	(1,"VTU"),
	(2,"VTU");

insert into Library_branch values
	(1,"Karnataka Branch","Bangalore"),
	(2,"Kerala Branch","Thrissur");

insert into Card values(1001),(1002);

insert into Book_lending values
		(1,1,1001,"2017-01-30","2017-02-01"),
		(1,1,1001,"2017-03-30","2017-04-01"),
		(2,1,1001,"2017-03-30","2017-04-01"),
		(1,1,1001,"2017-05-30","2017-07-01"),
		(2,1,1002,"2018-05-30","2018-07-01");

insert into Book_copies values
	(1,1,3),
	(2,1,4),
	(1,2,2);

