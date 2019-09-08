/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  DELL
 * Created: Jul 27, 2018
 */
-- CREATE TABLE return_book (
-- id int auto_increment primary key,
-- `returned_date` varchar(200) not null,
-- fine int not null
-- ) 
-- -- drop table return_book;
SELECT book.id,book.bookname ,issue_book.*,return_book.*  FROM issue_book inner join book inner join return_book where book.id= issue_book.book_id and user_id=1

