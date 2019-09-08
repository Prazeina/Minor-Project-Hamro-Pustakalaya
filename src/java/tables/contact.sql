-- drop table contact;
CREATE TABLE `contact` (
  `bookname` varchar(100) not null,
  `writer` varchar(100) not null,
  `edition` varchar(100) not null,
user_id int not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- select register.name ,contact.* from contact inner join register where register.id= contact.user_id;