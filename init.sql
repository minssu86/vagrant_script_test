create user 'scott'@'localhost' identified by 'tiger';
create user 'scott'@'%' identified by 'tiger';
grant all privileges on *.* to 'scott'@'localhost';
grant all privileges on *.* to 'scott'@'%';
flush privileges;

create database if not exists lecture DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

use lecture;

create table if not exists dept(
   deptno int default(0),
   dname varchar(50) not null default(''),
   loc varchar(50) not null default('')
);

INSERT INTO dept (DEPTNO, DNAME, LOC) VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');