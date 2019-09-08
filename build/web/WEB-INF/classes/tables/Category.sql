/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  DELL
 * Created: Jul 21, 2018
 */
-- drop table Category;
create table Category
(
    id int auto_increment primary key,
     categoryname varchar(100) not null
    );
insert Into Category (categoryname) values("Comic");
insert Into Category (categoryname) values("Horror");
insert Into Category (categoryname) values("Romance");
insert Into Category (categoryname) values("Funny");
insert Into Category (categoryname) values("History");
insert Into Category (categoryname) values("Thriller");
-- insert Into Category (categoryname) values("Crime and Mistery");
-- insert Into Category (categoryname) values("Science Fiction");
-- insert Into Category (categoryname) values("Poetry");
-- insert Into Category (categoryname) values("Self Help");


-- select recommend.* from recommend where user_id = 3 and category_id = (select category_id from book where id = 1)

-- insert into recommend values (0,3,1,1);