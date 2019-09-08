/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  DELL
 * Created: Jul 25, 2018
 */

-- DROP TABLE IF EXISTS `issue_book`;

CREATE TABLE `issue_book` (
id int auto_increment primary key,
  `user_id` int not null,
  `book_id` int not null,
  `issue_date` varchar(200) not null,
  `renual_date` varchar(200) not null
) 
