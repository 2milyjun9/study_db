use world;

CREATE TABLE IF NOT EXISTS `test` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`));
  

  
  insert into test(
  seq
,  name
  ) value (
6
,''
);

select*from test;

-- 컬럼추가 및 삭제 
alter table test add tel varchar(50);
alter table test drop tel;

-- 컬럼 타입 변경
alter table test modify tel int;
alter table test modify tel varchar(20);

-- 컬럼 이름 변경

alter table test change tel tele int;

-- 데이터 수정
update test set
name = 'Andrew'
where
		seq=3;

select * from test;

-- 전체 데이터 삭제
truncate test;


insert into test(
name
,tel
) values (
'Emily'
,1111
);

select * from test;


-- 데이터수정
update test set
name= 'Andrew'
,tel = '222'
where 1=1
and seq=1;


-- 데이터 삭제

delete from test
where 1=1
and seq=3;



