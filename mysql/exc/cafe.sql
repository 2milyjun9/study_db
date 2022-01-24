use world;

show tables;


create table book(
seq int,
name varchar(100),
publisher varchar(100),
author varchar(100),
price varchar(100)
);

drop table book;



create table cafe(
seq int,
name varchar(100),
table_number int,
chair_number int,
address varchar(100),
region int,
ceo varchar(100)
);

drop table cafe;

CREATE TABLE IF NOT EXISTS `cafe` (
  `seq` INT UNSIGNED NOT NULL,
  `name` VARCHAR(100) NULL,
  `table_number` INT NULL,
  `chair_number` INT NULL,
  `address` VARCHAR(100) NULL,
  `region` INT NULL,
  `ceo` VARCHAR(100) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_cicafecafebooktable

insert into cafe(
seq
,name
,table_number
,chair_number
,address
,region
,ceo
)values (
1
,'별다방'
,1
,2
,'서울시 강서구'
,1
,'정미림'
);

select * from cafe; 