
# QUESTIONS
#retrieve Details of all books in Library. Get the ID, title,name of Authors,Publishers and no of copies in each branch
	

Select ID, title,author,pub,copies
from Book B, Book_Authors A, Book_copies C
where ID=A.Book_ID and ID=C.Book_ID;

#get Particulars of Borrowers who have borrowed more than 3 books from jan 2014 to jan 2017
Select card_no
from Book_lending
where date_out between '2017-01-01' and '2017-06-30'
group by card_no
having count(*)>3;


#Partiton the Book table based on publication year
create View year_based as
select year from Book;

select * from year_based;


#create a view of all books and no of copies currently available in Library
Create View v_book as 
select B.ID,Copies,Name
from Book B, Book_copies C,Library_branch L
where B.ID=C.Book_ID and C.Branch_id=L.ID;

select * from v_book;


select * from Book;
select * from Book_Authors;
select * from Book_copies;
select * from Book_lending;
#delete a book from Book_table update all tables to reflect this data manipulation
Delete from Book where ID=1;

select * from Book;
select * from Book_Authors;
select * from Book_copies;
select * from Book_lending;
