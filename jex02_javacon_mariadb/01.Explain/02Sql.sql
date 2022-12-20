
05.mysql 
----- 필요 테이블 ---------------
create database book_ex;

create user 'book_ex'@'%' identified by 'book_ex';

grant all privileges on book_ex.* to 'book_ex'@'%';

flush privileges;

show grants for 'book_ex'@'%';


CREATE TABLE tbl_board (
   bno INT NOT NULL AUTO_INCREMENT,
   title VARCHAR(200) NOT NULL,
   content TEXT NULL,
   writer VARCHAR(50) NOT NULL,
   regdate TIMESTAMP NOT NULL DEFAULT now(),
   updatedate TIMESTAMP NOT NULL DEFAULT now(),
   viewcnt INT DEFAULT 0,
   PRIMARY KEY (bno));

ALTER TABLE tbl_board convert to charset utf8;

----- 필요 테이블 ---------------

