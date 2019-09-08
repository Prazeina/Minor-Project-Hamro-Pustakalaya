/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  DELL
 * Created: Jul 20, 2018
 */
create table admin
(
    aid int auto_increment primary key,
     name varchar(100) not null,
     email varchar(50) not null,
     password varchar(50) not null
    );
insert into admin values("1","sima","sima@gmail.com","sima");

