CREATE TABLE Tanoli_Family
(
Id int identity(1,1) primary key not null,
Name nvarchar(50),
Date_of_birth date,
Father_name_ int,
constraint Father_name_ foreign key(Father_name_) references Tanoli_Family(Id)
);
insert into Tanoli_Family(Name,Date_of_birth) VALUES('Haji Abdul Majeed','1970-12-11');
insert into Tanoli_Family(Name,Date_of_birth,Father_name_) VALUES('Haji Advot Sabr Tanoli','1958-12-11',1);
insert into Tanoli_Family(Name,Date_of_birth,Father_name_) VALUES('Haji Wazeeer Tanoli','1960-12-11',1);
insert into Tanoli_Family(Name,Date_of_birth,Father_name_) VALUES('Haji Asar Tanoli','1963-12-11',1);
insert into Tanoli_Family(Name,Date_of_birth,Father_name_) VALUES('Haji Iqbal Tanoli','1965-02-05',1);
insert into Tanoli_Family(Name,Date_of_birth,Father_name_) VALUES('Dilshad Qasim','1976-12-11',1);
insert into Tanoli_Family(Name,Date_of_birth,Father_name_) VALUES('Razia Rustum ','1974-12-11',1);
insert into Tanoli_Family(Name,Date_of_birth,Father_name_) VALUES('Haji Advot Javed Tanoli','1972-12-11',1);
insert into Tanoli_Family(Name,Date_of_birth,Father_name_) VALUES('Sobia Shahid','1992-12-21',5);
insert into Tanoli_Family(Name,Date_of_birth,Father_name_) VALUES('Maryam Khurram','1995-12-11',5);
insert into Tanoli_Family(Name,Date_of_birth,Father_name_) VALUES('Saqib Iqbal','1997-07-06',5);
insert into Tanoli_Family(Name,Date_of_birth,Father_name_) VALUES('Aqib Iqbal','1999-01-23',5);
insert into Tanoli_Family(Name,Date_of_birth,Father_name_) VALUES('Misbah Iqbal','2001-03-10',5);
insert into Tanoli_Family(Name,Date_of_birth,Father_name_) VALUES('Haroon Iqbal','2003-12-17',5);
insert into Tanoli_Family(Name,Date_of_birth,Father_name_) VALUES('Tahir Iqbal','2005-08-31',5);

select * from Tanoli_Family

select a.Name as 'Name', b.Name as 'Father_name_' 
from Tanoli_Family a inner join Tanoli_Family b on a.Father_name_=b.Id 