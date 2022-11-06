show databases;
create database MagicMaster;
use MagicMaster;
create table User(UserID INT PRIMARY KEY,FirstName varchar(45) NOT NULL, LastName varchar(45) NOT NULL,UserAge int NOT NULL, Usersalary int NOT NULL);
create table Movie(UserID INT NOT NULL,MovieName varchar(100) NOT NULL, Hero varchar(100) NOT NULL, Heroin varchar(100) NOT NULL, TicketPrice int NOT NULL,MovieRating int NOT NULL);
insert into User values(0081,"Devi","Priya",20,10000);
insert into User values(0082,"Sri","Rama",21,12000);
insert into User values(0083,"sasank","prasad",19,80000);
insert into User values(0084,"Sai","Ramesh",23,19000);
insert into Movie values(0081,"Fidda","Varun Tej "," Sai Pallavi",150,8);
insert into Movie values(0082,"Shyam Singha Roy","Nani "," Sai Pallavi",170,9);
insert into Movie values(0082,"Love Story ","Naga Chaitanya "," Sai Pallavi",200,10);
insert into Movie values(0082,"Padi Padi Leche Manasu  ","Sharwanand "," Sai Pallavi",250,9);
insert into Movie values(0083,"Shatamanam Bhavati  ","Sharwanand "," Anupama Parameswaran",200,10);
insert into Movie values(0082,"Mukunda "," Varun Tej  ","Pooja Hegde",100,9);
insert into Movie values(0082,"Prati Roju Pandage ","Sai dharam tej "," Raashii Khanna",300,10);
insert into Movie values(0082,"Hey Pillagada  ","Dulquer Salmaan "," Sai Pallavi",350,7);
insert into Movie values(0082,"Athiran  ","Fahadh Faasil","  Sai Pallavi",250,8);
insert into Movie values(0081,"Majili  ",", Naga Chaitanya ","  Samantha",400,10);
insert into Movie values(0081,"Shailaja Reddy Alludu ","Naga Chaitanya "," Anu Emmanuel ",200,10);
select * from User;
select * from Movie;
select MovieName from Movie m, User u where m.UserID=u.UserID AND u.UserID="0082";
select MovieName , TicketPrice from Movie m, User u where m.UserID=u.UserID AND u.UserID=0082 AND m.TicketPrice>100;
select MovieName, TicketPrice from Movie m, User u where m.UserID=u.UserID and m.TicketPrice>150;
select MovieName, MovieRating from Movie m, User u where m.UserID=u.UserID and m.MovieRating<5;
select m.MovieName, m.Heroin, u.UserID from Movie m, user u where m.UserID=u.UserID group by Heroin having count(Heroin)>=2;
SELECT MovieName, Heroin
FROM Movie m1 
WHERE (SELECT COUNT(Heroin) FROM Movie m2 ,User u  where u.UserID=0082 and u.UserID=m1.UserID and  m1.Heroin=m2.Heroin) >= 2;
select sum(TicketPrice) , avg(TicketPrice) from User u,Movie m 
where u.userId=m.userId and u.UserID=0082;


