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
create table book
 (
     id int auto_increment primary key,
      bookname varchar(100) not null,
      authorname varchar(100) not null,
      isbn varchar(20) not null,
      publication varchar(100) not null,
      edition varchar(20) not null,
     category_id int not null,
     UNIQUE(isbn)
     );

-- insert into book values(1,"Smile","rishma","20-30-20","scholar","1st edition",1);
-- insert into book values("2","The Stonekeeper","kazu kibuishi","201-301-201","scholar","1st edition",2);
-- insert into book values(3,"Drama","Raina Telgemeier","202-302-202","scholar","1st edition",1);
-- insert into book values(4,"The Shining","Stephen king","203-303-203","scholar","1st edition",2);
-- insert into book values(5,"It","Stephen king","204-304-204","scholar","1st edition",2);
-- insert into book values(6,"Dracula","Bram Stoker","205-305-205","scholar","1st edition",2);
-- insert into book values(7,"Beautiful Disaster","Jamie McGuire","206-306-206","scholar","1st edition",3);
-- insert into book values(8,"Twilight","Stephenie Meyer","207-307-207","scholar","1st edition",3);


-- insert into book values(56,"Angels And Demons","Dan Brown","0-6710735-2","Hardback","1st edition",7);
-- insert into book values(57,"The Godfather","Dan Brown","0-671-035-2","G.P. Putnam's Sons","2nd edition",7);
-- insert into book values(58,"The Firm","John Grisham","0-385-41634-2","Random House","1st edition",7);
-- insert into book values(59,"Mystic River","Dennis Lehane","0-688-16316-5","William Morrow","1st edition",7);
-- insert into book values(60,"Gone Girl","Gillian Flynn","978-0307588364","Crown Publishing Group","1st edition",7);
-- insert into book values(61,"Red Dragon","Thomas Harris","0-399-12442-X","G.P. Putnam's","1st edition",7);
-- insert into book values(62,"A Time To To Kill","John Grisham","0-440-21172-7","Wynwood Press","2nd edition",7);
-- insert into book values(63,"The Woman In White","Wilkie Collins","0-671-05-2256","All The Year Round","1st edition",7);
-- insert into book values(64,"Postmortem","Patricia Cornwell","0-38-2527-37","Hardback","3rd edition",7);
-- insert into book values(65,"The Big Sleep","Raymond Chandler","0-38-23787-379","Alfred A. Knopf","1st edition",7);
-- 
-- insert into book values(66,"Beautiful Disaster","Jamie McGuire","0-38-287-379","Simon And Schuster ","3rd edition",3);
-- insert into book values(67,"Pride And Prejudice","Jane Austen","0-23787","T. Egerton","2nd edition",3);
-- insert into book values(68,"Twilight","Stephenie Meyer","0-316-16017-2","Little,Brown","1st edition",3);
-- insert into book values(69,"Easy","Tammara Webber","0-312794498","Graphix","2nd edition",3);
-- insert into book values(70,"A Walk To Remember","Nicholas Sparks","0-446-60895-5","Warner Books","1st edition",3);
-- insert into book values(0,"Divergent","Veronica Roth","0-06-202402-7","Katherine Tegen Books ","1st edition",3);
-- insert into book values(0,"The Fault In Our Stars","John Green","0-525-47881-7","Hardback","1st edition",3);
-- insert into book values(0,"Persuasion","Jane Austen","0-25-47887","Graphix","2nd edition",3);
-- insert into book values(0,"The Host","Stephenie Meyer","0-316-06804-7","Little,Brown","1st edition",3);
-- 
-- 


-- insert into book values(0,"Dune","Frank Herbert","237-407-297","Chilton Books","2nd edition",8);
-- insert into book values(0,"Foundation","Issac Asimov","0-553-29335-4","Gnome Press","1st edition",8);
-- insert into book values(0,"Hyperion","Dan Simmons","0-385-24949-7","Doubleday","2nd edition",8);
-- insert into book values(0,"Snow Crash","Neal Stephenson","0-553-08853-X","Bantam Books","1st edition",8);
-- insert into book values(0,"Flower For Algeron","Daniel Keyes","0-15-131510-8","Harcourt, Brace & world","1st edition",8);
-- insert into book values(0,"Frankenstein","Mary Shelley","560-789-367","Hughes","1st edition",8);
-- insert into book values(0,"The Time Machine","H.G Wells","0-214-52449-7","Willian Heinemann","1st edition",8);
-- insert into book values(0,"Childhood's End","Arthur C. Clarke","0-345-34795-1","Ballantine Books","1st edition",8);
-- insert into book values(0,"The Hunger Games","Suzzane Collins","978-0-439-02352-8","Scholastic Press","1st edition",8);
-- insert into book values(0,"Neuromancer","William Gibson","0-441-56956-0","Ace","1st edition",8);
-- 
-- 
-- insert into book values(0,"Ariel","Sylvia Plath","0060931728","Harper Perennial","1st edition",9);
-- insert into book values(0,"Sonnets","William Shakespeare","1903436575","Bloomsbury Academic","1st edition",9);
-- insert into book values(0,"The Complete Poems","John Keats","0256345897","Penguin Classics","2nd edition",9);
-- insert into book values(0,"Duino Elegies","Rainer Maria Rilke","5678941235","Insel-Verlag","1st edition",9);
-- insert into book values(0,"Paradise Lost","John Milton","6987452314","Samuel Simmons","1st edition",9);
-- insert into book values(0,"The Prophet","Kahil Gibran","560-589-327","Hughes","1st edition",9);
-- insert into book values(0,"Illuminations","Aruthur Rimbaud","0811201848","Hanami","1st edition",9);
-- insert into book values(0,"The Collected Poems","Wallace Stevens","3216805794","Vintage","1st edition",9);
-- insert into book values(0,"The Collected Poems","Sylvia Plath","9458123670","Ted Hughes","2nd edition",9);
-- insert into book values(0,"Collected Poems","Dylon Thomas","0811202054","New Directions","1st edition",9);
-- 
-- insert into book values(0,"The Secret","Rhonda Byrne","978-1-58270-170-7","Atria Books","2nd edition",10);
-- insert into book values(0,"The Reframe","Brian Maddox","9780995320109","Maddox","1st edition",10);
-- insert into book values(0,"The Alchemist","Paulo Coelho","0-06-250217-4","Harper Torch","2nd edition",10);
-- insert into book values(0,"The Prophet","Kahil Gibran","5236478910205","Alfred A. Knopf","1st edition",10);
-- insert into book values(0,"The Magic Of Thinking Big","David J. Schwartz","9781501118210","Wilshire Book Co","1st edition",10);
-- insert into book values(0,"The Invisible Game","Zoltan Andrejkovics","0121356408975","Amazon Digital Services","2nd edition",10);
-- insert into book values(0,"Eat,Pray,Love","Elizabeth Gilbert","978-0-670-03471-0","Penguin","2nd edition",10);
-- insert into book values(0,"The Power Of Now","Eckhart Tolle","978-1-57731-152-2","Namaste Publishing","1st edition",10);
-- insert into book values(0,"A New Earth","Eckhart Tolle","0-452-28996-3","Penguin","2nd edition",10);
-- insert into book values(0,"You Can Nail It","David R. Gross","0982971362","Smashwords","1st edition",10);
-- 
-- 


-- SELECT Category.categoryname,book.* from Category inner join book where Category.id=book.Category_id;

-- select * from book where bookname like "%the%"

-- select Category.categoryname,book.* from Category inner join book where Category.id= book.category_id and book.bookname like "%the%"
-- 

-- select book.*, issue_book.* from book inner join issue_book where issue_book.book_id = book.id and issue_book.user_id = 5


-- select book.category_id from book where id=4

-- select Category.categoryname,book.* from Category inner join book where Category.id= book.category_id and book.bookname like %the%