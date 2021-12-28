create database ipm002;
use ipm002;
create table Trainer_Info(
trainer_id varchar(20),
Salutation varchar(7),
Trainer_Name varchar(30),
Trainer_Location varchar(30),
Trainer_track varchar(15),
Trainer_Qualification varchar(100),
Trainer_Experience int,
Trainer_Email varchar(100),
Trainer_Password varchar(20)
);
create table Batch_Info(
Batch_Id varchar(20),
Batch_Owner varchar(30),
Batch_BU_Name varchar(30)
);
create table Module_Info(
Module_Id varchar(20),
Module_Name varchar(40),
Module_Duration int
);
create table Associate_Info(
Associate_Id varchar(20),
Salutation varchar(7),
Associate_Name varchar(30),
Associate_Location varchar(30),
Associate_Track varchar(15),
Associate_Qualification varchar(200),
Associate_Email varchar(100),
Associate_Password varchar(20)
);
create table Questions(
Question_Id varchar(20),
Module_Id varchar(20),
Question_Text varchar(900)
);
create table Associate_Status(
Associate_Id varchar(20),
Module_Id varchar(20),
Start_Date varchar(20),
End_Date varchar(20),
AFeedbackGiven varchar(20),
TFeedbackGiven varchar(20)
);
create table Trainer_Feedback(
Trainer_Id varchar(20),
Quetion_Id varchar(20),
Batch_Id varchar(20),
Module_Id varchar(20),
Trainer_Rating int
);
create table Associate_Feedback(
Associate_Id varchar(20),
Quetion_Id varchar(20),
Module_Id varchar(20),
Associate_Rating int
);
create table Login_Details(
User_Id varchar(20),
User_Password varchar(20)
);
alter table Associate_Status
add column Batch_Id varchar(20),
add column Trainer_Id varchar(20);

alter table Associate_Status
modify column Start_Date date,
modify column End_Date date;

insert into Trainer_Info values('F001','Mr.','PANKAJ GHOSH','Pune','Java','Bachelor of Technology','12','Pankaj.Ghosh@alliance.com','fac1@123');
insert into Trainer_Info values('F002','Mr.','SANJAY RADHAKRISHNAN' ,'Bangalore','DotNet','Bachelor of Technology','12','Sanjay.Radhakrishnan@alliance.com','fac2@123');
insert into Trainer_Info values('F003','Mr.','VIJAY MATHUR' ,'Chennai','MainFrame','Bachelor of Technology','10','vijay.Mathur@alliance.com','fac2@123');
insert into Trainer_Info values('F004','Mrs.','NANDINI NAIR' ,'Kolkata','Java','Master Of Computer Application','9','Nandini.Nair@alliance.com','fac4@123');
insert into Trainer_Info values('F005','Miss.','ANITHA PAREKH' ,'Hyderabad','Testing','Master Of Computer Application','6','Anitha.Parekh@alliance.com','fac5@123');
insert into Trainer_Info values('F006','Mr.','MANOJ AGRAWAL' ,'Mumbai','MainFrame','Bachelor of Technology','9','Manoj.Agrawal@alliance.com','fac6@123');
insert into Trainer_Info values('F007','Ms.','MEENA KULKARNI' ,'Coimbatore','Testing','Bachelor of Technology','5','Meena.Kulkarni@alliance.com','fac7@123');
insert into Trainer_Info values('F009','Mr.','SAGAR MENON' ,'Mumbai','Java','Master of Science In Information Technology','12','Sagar.Menon@alliance.com','fac8@123');

insert into Batch_Info values('B001','MRS.SWATI ROY','MSP');
insert into Batch_Info values('B002','MRS.ARURNA K','Healthcare');
insert into Batch_Info values('B003','MR.RAJESH KRISHNAN','Life Sciences');
insert into Batch_Info values('B004','MR.SACHIN SHETTY','BFS');
insert into Batch_Info values('B005','MR.RAMESH PATEL','Communications');
insert into Batch_Info values('B006','MRS.SUSAN CHERIAN','Retail&Hospitality');
insert into Batch_Info values('B007','MRS.SAMPADA JAIN','MSP');
insert into Batch_Info values('B008','MRS.KAVITA REGE','BPO');
insert into Batch_Info values('B009','MR.RAVI SEJPAL','MSP');

insert into Module_Info values('O10SQL','Oracle 10g SQL' ,'16');
insert into Module_Info values('O10PLSQL','Oracle 10g PL/ SQL' ,'16');
insert into Module_Info values('J2SE','Core Java SE 1.6','288');
insert into Module_Info values('J2EE','Advanced Java EE 1.6','80');
insert into Module_Info values('JAVAFX','JavaFX2.1','80');
insert into Module_Info values('DOTNT4','.Net Framework 4.0' ,'50');
insert into Module_Info values('SQL2008','MS SQl Server 2008','120');
insert into Module_Info values('MSBI08','MS BI Studio 2008','158');
insert into Module_Info values('SHRPNT','MS Share Point' ,'80');
insert into Module_Info values('ANDRD4','Android 4.0','200');
insert into Module_Info values('EM001','Instructor','0');
insert into Module_Info values('EM002','Course Material','0');
insert into Module_Info values('EM003','Learning Effectiveness','0');
insert into Module_Info values('EM004','Environment','0');
insert into Module_Info values('EM005','Job Impact','0');
insert into Module_Info values('TM001','Attendees','0');
insert into Module_Info values('TM002','Course Material','0');
insert into Module_Info values('TM003','Environment','0');
Insert into ASSOCIATE_INFO 
Values ('A001','Miss.','GAYATHRI NARAYANAN','Gurgaon','Java','Bachelor of Technology','Gayathri.Narayanan@hp.com','tne1@123'),
('A002','Mrs.','RADHIKA MOHAN','Kerala','Java','Bachelor of Engineering In Information Technology','Radhika.Mohan@cognizant.com','tne2@123'),
('A003','Mr.','KISHORE SRINIVAS','Chennai','Java','Bachelor of Engineering In Computers','Kishore.Srinivas@ibm.com','tne3@123'),
('A004','Mr.','ANAND RANGANATHAN','Mumbai','DotNet','Master of Computer Applications','Anand.Ranganathan@finolex.com','tne4@123'),
('A005','Miss.','LEELA MENON','Kerala','Mainframe','Bachelor of Engineering In Information Technology','Leela.Menon@microsoft.com','tne5@123'),
('A006','Mrs.','ARTI KRISHNAN','Pune','Testing','Master of Computer Applications','Arti.Krishnan@cognizant.com','tne6@123');


Insert into QUESTIONS
Values(Question_Id,Module_Id,Question_Text),
('Q001','EM001','Instructor knowledgeable and able to handle all your queries'),
('Q002','EM001','All the topics in a particular course handled by the trainer without any gaps or slippages'),
('Q003','EM002','The course materials presentation, handson, etc. refered during the training are relevant and useful'),
('Q004','EM002','The Hands on session adequate enough to grasp the understanding of the topic.'),
('Q005','EM002','The reference materials suggested for each module are adequate.'),
('Q006','EM003','Knowledge and skills presented in this training are applicatible at your work.'),
('Q007','EM003','This training increases my proficiency level.'),
('Q008','EM004','The physical environment e.g. classroom space, air-conditioning was conducive to learning.'),
('Q009','EM004','The software/hardware environment provided was sufficient for the purpose of the training.'),
('Q010','EM005','This training will improve your job performance.'),
('Q011','EM005','This training align with the business priorities and goals.'),
('Q012','TM001','Participants were receptive and had attitude towards learning.'),
('Q013','TM001','All participats gained the knowledge and the practical skills after this training.'),
('Q014','TM002','The course materials presentation, handson, etc. available for the session covers the entire objectives of the course.'),
('Q015','TM002','Complexity of the course is adequate for the particpate level.'),
('Q016','TM002','Case study and practical demos helpful in understanding of the topic'),
('Q017','TM003','The physical environment e.g. classroom space air-conditioning was conducive to learning.'),
('Q018','TM003','The software/hardware environment provided was adequate for the purpose of the training');

Insert into ASSOCIATE_STATUS(Associate_Id,Module_Id,Batch_Id,Trainer_Id,Start_Date,End_Date)
Values ('A001','O10SQL','B001','F001','2000-12-15','2000-12-25'),
('A002','O10SQL','B001','F001','2000-12-15','2000-12-25'),
('A003','O10SQL','B001','F001','2000-12-15','2000-12-25'),
('A001','O10PLSQL','B002','F002','2001-2-1','2001-2-12'),
('A002','O10PLSQL','B002','F002','2001-2-1','2001-2-12'),
('A003','O10PLSQL','B002','F002','2001-2-1','2001-2-12'),
('A001','J2SE','B003','F003','2002-8-20','2002-10-25'),
('A001','J2EE','B004','F004','2005-12-1','2005-12-25'),
('A002','J2EE','B004','F004','2005-12-1','2005-12-25'),
('A003','J2EE','B004','F004','2005-12-1','2005-12-25'),
('A004','J2EE','B004','F004','2005-12-1','2005-12-25'),
('A005','JAVAFX','B005','F006','2005-12-4','2005-12-2'),
('A006','JAVAFX','B005','F006','2005-12-4','2005-12-20'),
('A006','SQL2008','B006','F007','2007-6-21','2007-6-28'),
('A007','SQL2008','B006','F007','2007-6-21','2007-6-28'),
('A002','MSBI08','B007','F006','2009-6-26','2009-6-29'),
('A003','MSBI08','B007','F006','2009-6-26','2009-6-29'),
('A004','MSBI08','B007','F006','2009-6-26','2009-6-29'),
('A002','ANDRD4','B008','F005','2010-6-5','2010-6-28');

SET SQL_SAFE_UPDATES=0;
UPDATE Trainer_info SET Trainer_Password = 'nn4@123' 
WHERE Trainer_ID= 'F004';

DELETE FROM ASSOCIATE_STATUS 
WHERE ASSOCIATE_ID='A003';
SELECT * FROM ASSOCIATE_STATUS;

select * FROM trainer_info order by Trainer_Experiance DESC LIMIT 5;

create table login_details(User_Id varchar(20) unique,User_Password varchar(20));
Insert into LOGIN_DETAILS
Values('U001','ADMIN1@123'),
('U002','ADMI2@123');


START TRANSACTION;
DELETE FROM LOGIN_DETAILS
WHERE USER_ID='U001';
DELETE FROM LOGIN_DETAILS
WHERE USER_ID='U002';
SELECT * FROM LOGIN_DETAILS;
ROLLBACK;

create user dummy_user
identified by "qwerty";
grant create , select on login_details to dummy_user;
show grants for dummy_user;
revoke create , select on login_details from dummy_user;

DROP TABLE login_details;
