/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  DELL
 * Created: Aug 3, 2018
 */

create table recommend
(
    id int auto_increment primary key,
     user_id int not null,
     category_id int not null,
     count int not null

    );


-- select category.categoryname, book.* from recommend inner join category on recommend.category_id = category.id 
--    inner join book on book.category_id = category.id where recommend.user_id = 1 order by recommend.`count` desc
--         limit 1,15
