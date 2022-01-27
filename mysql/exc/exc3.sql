use world;

CREATE TABLE IF NOT EXISTS `book1` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `publisher_cd` INT NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `review1` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `reviewcol` VARCHAR(45) NULL,
  `book1_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_review_book11_idx` (`book1_no` ASC) VISIBLE,
  CONSTRAINT `fk_review_book11`
    FOREIGN KEY (`book1_no`)
    REFERENCES `book1` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `book2` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `review2` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `reviewcol` VARCHAR(45) NULL,
  `book2_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `book2_no`),
  INDEX `fk_review2_book21_idx` (`book2_no` ASC) VISIBLE,
  CONSTRAINT `fk_review2_book21`
    FOREIGN KEY (`book2_no`)
    REFERENCES `book2` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


insert into book1 ( name ) values ('삼국지');

select * from book1;

desc review1;

insert into review1(comment, book1_no) values ( '우와 책 재미있습니다~', 6);

select* from review1;

alter table review2 drop reviewcol;

insert into book2 ( name ) values ('4차산업혁명의미래');

select * from book2;

insert into review2(comment, book2_no) values ( '재미없어요', 4);

select*from review2;


select a.name,(select count(*) from review2 where book2_no=a.no) as count from book2 a;

select a.name,(select count(no) from review2 where book2_no=a.no) as count from book2 a;

select a.name, b.comment from book2 as a inner join review2 as b on b.book2_no=a.no;

select a.name, b.comment from book2  as a left join review2 as b on b.book2_no=a.no;

select a.comment , b.name from review2 as a left join book2 as b on b.no=a.book2_no;
