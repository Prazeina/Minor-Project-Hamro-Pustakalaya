/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  DELL
 * Created: Jul 20, 2018
 */
-- drop table register;
create table register
(
    id int auto_increment primary key,
name varchar(50) not null,
     email varchar(50) not null,
     
     password varchar(100) not null
    );
-- Insert into register values(1,"rishma","rishma@gmail.com",9818621743,"rishma");
-- Insert into register values(2,"rashmi","rashmi@gmail.com",9876543210,"rashmi");