#Questions
  
# 1. List all the student details studying in fourth semester ‘C’ section.
select S.* 
from Student S,semsec sec, class C 
where sec.sem=4 and sec.sec='C' and sec.ssid=C.ssid and S.usn=C.usn;



# 2. Compute the total number of male and female students in each semester and in each section.

select S1.sem, S1.sec ,gender,count(*) count
from student S,class C ,semsec S1
where S.usn=C.usn and C.ssid=S1.ssid
group by S.gender,C.ssid;
;



# 3. Create a view of Test1 marks of student USN ‘1RN21CS001’ in all subjects.
  
create view test1 as
select subcode,test1
from IAmarks
where usn="1rn21cs001";

select * from test1; 



# 4. Calculate the FinalIA (average of best two test marks) and update the corresponding table for all students.

update IAmarks 
set finalIA=(test1+test2+test3-least(test1,test2,test3))/2
where usn is not NULL;




# 5. Categorize students based on the following criterion: 
#       If FinalIA = 17 to 20 then CAT = ‘Outstanding’
#       If FinalIA = 12 to 16 then CAT = ‘Average’
#       If FinalIA< 12 then CAT = ‘Weak’
#       Give these details only for 8th semester A, B, and C section students.
  
select M.usn,M.subcode,M.finalIA,
	case 
		when (finalIA<=20 and finalIA>=17) then 'Outstanding'
		when finalIA>=12 then 'Average'
		else 'Weak'
    end as CAT
from IAmarks M,class C,semsec S
where M.usn=C.usn and S.ssid=C.ssid and S.sem=8;
