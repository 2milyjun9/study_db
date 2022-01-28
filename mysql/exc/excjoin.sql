use world;

CREATE TABLE IF NOT EXISTS `book6` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `book6_writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `book6_no` INT UNSIGNED NOT NULL,
  `writer_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_book6_writer_book61_idx` (`book6_no` ASC) VISIBLE,
  INDEX `fk_book6_writer_writer1_idx` (`writer_no` ASC) VISIBLE,
  CONSTRAINT `fk_book6_writer_book61`
    FOREIGN KEY (`book6_no`)
    REFERENCES `book6` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book6_writer_writer1`
    FOREIGN KEY (`writer_no`)
    REFERENCES `writer` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


insert into book6(name)values ('부트스트랩');
insert into writer (name) values( '라울');
insert into book6_writer (book6_no,writer_no)  values (3,3);

select * from book6;
select * from writer;
select * from book6_writer;

drop table book6_writer;

select a.no,a.name,b.writer_no , (select name from writer c where c.no=b.writer_no) as writer_name
from book6 a left join  book6_writer b on b.book6_no=a.no;

select a.no,a.name,b.writer_no,c.name from book6 a left join book6_writer b on b.books_no=a.no left join writer c on c.no=writer_no;

select a.no, a.name, b.writer_no,c.name from book6 a left join book6_writer b on b.book6_no=a.no left join writer c on co.no=b.writer_no;

select a.no, a.name, b.writer_no, c.name as writer_name
from book6 as a left join book6_writer as b on b.book6_no = a.no left join writer as c on b.writer_no = c.no;



CREATE TABLE IF NOT EXISTS `codeGroup` (
  `seq` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `code` (
  `code` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  `codeGroup_seq` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`code`, `codeGroup_seq`),
  INDEX `fk_code_codeGroup1_idx` (`codeGroup_seq` ASC) VISIBLE,
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_seq`)
    REFERENCES `codeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

select*from codeGroup;
select*From code;

insert into codeGroup (seq,name) values ( 'infra001' , '성별');
insert into codeGroup (seq,name) values ( 'infra002' , '통신사');
insert into code (code,name,codeGroup_seq) values ( '3', 'KT' , 'infra002');

desc codegroup;
desc code;

select a.seq,a.name,b.code,b.name from codegroup a left join code b on b.codeGroup_seq= a.seq;





