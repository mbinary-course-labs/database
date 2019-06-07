CREATE DATABASE library; use library; 
drop table if exists Book; 
create table Book
(
    ID char(8) primary key,
    name varchar(10) character set utf8 not null,
    author varchar(10) character set utf8,
    price float,
    status int default 0 -- 1 for borrowed, 0 for not borrowed
    -- primary key(id,name); 
);

drop table if exists  Reader;
create table Reader
(
    ID char(8) primary key,
    name varchar(10) character set utf8,
    age int,
    address varchar(20)  character set utf8 
);

drop table if exists  Borrow;
create table Borrow
(
    book_ID char(8),
    Reader_ID char(8),
    Borrow_Date date,
    Return_Date date default null, -- null indicates not returned
    constraint br_pk primary key(book_ID, Reader_ID),
    constraint br_fkb foreign key(book_ID) references Book(ID) on delete cascade on update cascade
);

alter table Borrow add constraint br_fkr foreign key(Reader_ID) references Reader(ID) on delete cascade on update cascade;

