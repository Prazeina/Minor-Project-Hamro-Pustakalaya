/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  DELL
 * Created: Jul 21, 2018
 */
-- drop table book;
/*create table book
 (
     id int auto_increment primary key,
      bookname varchar(100) not null,
      authorname varchar(100) not null,
      isbn varchar(20) not null,
      publication varchar(100) not null,
      edition varchar(20) not null,
     category_id int not null,
     UNIQUE(isbn)
     );*/

-- insert into book values(1,"Smile","rishma","20-30-20","scholar","1st edition",1);
-- insert into book values("2","The Stonekeeper","kazu kibuishi","201-301-201","scholar","1st edition",2);
-- insert into book values(3,"Drama","Raina Telgemeier","202-302-202","scholar","1st edition",1);
-- insert into book values(4,"The Shining","Stephen king","203-303-203","scholar","1st edition",2);
-- insert into book values(5,"It","Stephen king","204-304-204","scholar","1st edition",2);
-- insert into book values(6,"Dracula","Bram Stoker","205-305-205","scholar","1st edition",2);
-- insert into book values(7,"Beautiful Disaster","Jamie McGuire","206-306-206","scholar","1st edition",3);
-- insert into book values(8,"Twilight","Stephenie Meyer","207-307-207","scholar","1st edition",3);


insert into book values(56,"Angels And Demons","Dan Brown","0-6710735-2","Hardback","1st edition",7);
insert into book values(57,"The Godfather","Dan Brown","0-671-035-2","G.P. Putnam's Sons","2nd edition",7);
insert into book values(58,"The Firm","John Grisham","0-385-41634-2","Random House","1st edition",7);
insert into book values(59,"Mystic River","Dennis Lehane","0-688-16316-5","William Morrow","1st edition",7);
insert into book values(60,"Gone Girl","Gillian Flynn","978-0307588364","Crown Publishing Group","1st edition",7);
insert into book values(61,"Red Dragon","Thomas Harris","0-399-12442-X","G.P. Putnam's","1st edition",7);
insert into book values(62,"A Time To To Kill","John Grisham","0-440-21172-7","Wynwood Press","2nd edition",7);
insert into book values(63,"The Woman In White","Wilkie Collins","0-671-05-2256","All The Year Round","1st edition",7);
insert into book values(64,"Postmortem","Patricia Cornwell","0-38-2527-37","Hardback","3rd edition",7);
insert into book values(65,"The Big Sleep","Raymond Chandler","0-38-23787-379","Alfred A. Knopf","1st edition",7);

insert into book values(66,"Beautiful Disaster","Jamie McGuire","0-38-287-379","Simon And Schuster ","3rd edition",3);
insert into book values(67,"Pride And Prejudice","Jane Austen","0-23787","T. Egerton","2nd edition",3);
insert into book values(68,"Twilight","Stephenie Meyer","0-316-16017-2","Little,Brown","1st edition",3);
insert into book values(69,"Easy","Tammara Webber","0-312794498","Graphix","2nd edition",3);
insert into book values(70,"A Walk To Remember","Nicholas Sparks","0-446-60895-5","Warner Books","1st edition",3);
insert into book values(0,"Divergent","Veronica Roth","0-06-202402-7","Katherine Tegen Books ","1st edition",3);
insert into book values(0,"The Fault In Our Stars","John Green","0-525-47881-7","Hardback","1st edition",3);
insert into book values(0,"Persuasion","Jane Austen","0-25-47887","Graphix","2nd edition",3);
insert into book values(0,"The Host","Stephenie Meyer","0-316-06804-7","Little,Brown","1st edition",3);








-- SELECT Category.categoryname,book.* from Category inner join book where Category.id=book.Category_id;

-- select * from book where bookname like "%the%"

-- select Category.categoryname,book.* from Category inner join book where Category.id= book.category_id and book.bookname like "%the%"
-- 

-- select book.*, issue_book.* from book inner join issue_book where issue_book.book_id = book.id and issue_book.user_id = 5


-- select book.category_id from book where id=4

-- select Category.categoryname,book.* from Category inner join book where Category.id= book.category_id and book.bookname like %the%