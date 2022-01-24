use world;

show tables;


-- 테이블생성
create table member(
seq int,
name varchar(100),
id varchar(100),
regdate datetime
);

create table member2(
seq int,
name varchar(100),
id varchar(100),
regdate datetime
);

-- 테이블삭제
drop table member2;
drop table member;

-- 데이터 입력
insert into cafe(
seq
,name
,table_number
,chair_number
,address
,region
,ceo
)values (
3
,'콩다방'
,1
,2
,'서울시 강남구'
,1
,'박기동'
);

-- varchar은 '또는 "로 감싼다
-- int 는 사용하지않아도된다.
-- 컴마는 앞쪽을 선호 : 이건 호불호


-- 데이터 조회

select*from cafe;

-- primary key : 유일한 데이터

insert into cafe(
seq
,name
,table_number
,chair_number
,address
,region
,ceo
)values (
4
,'폴바셋'
,100
,400
,'서울시 서초구'
,1
,'박또또'
);

select*from cafe;
insert into cafe(
seq
,name
,table_number
,chair_number
,address
,region
,ceo
)values (
5
,'카페베네'
,10
,40
,'서울시 은평구'
,3
,'박아무개'
);


insert into cafe(
seq
,name
,table_number
,chair_number
,address
,region
,ceo
)values (
6
,'탐앤탐스'
,20
,40
,'서울시 성동구'
,1
,'정하은'
);

insert into cafe(
seq
,name
,table_number
,chair_number
,address
,region
,ceo
)values (
7
,'메가커피'
,30
,120
,'서울시 동대문구'
,1
,'준일'
);

insert into cafe(
seq
,name
,table_number
,chair_number
,address
,region
,ceo
)values (
8
,'매머드'
,5
,10
,'서울시 종로구'
,1
,'상연'
);


insert into cafe(
seq
,name
,table_number
,chair_number
,address
,region
,ceo
)values (
9
,'할리스'
,200
,800
,'서울시 광진구'
,1
,'박성일'
);

select*from cafe;
insert into cafe(
seq
,name
,table_number
,chair_number
,address
,region
,ceo
)values (
10
,'감성커피'
,5
,10
,'서울시 중구'
,1
,'박영희'
);

select*from cafe;

select*from cafe where seq =3;

select*from cafe where region =1;
select*from cafe where name= '할리스';

select*from cafe where name= '별다방' and region =1 ;
select*from cafe where name = '할리스' or table_number = 1 ;

select*from cafe where region > 2 ;
select*from cafe where region < 2 ;
select*from cafe where region >= 2 ;
select*from cafe where region <= 2 ;
select*from cafe where region <> 2 ;  -- 2가아닌 모든것

select*from cafe where name like '%리%';
select*from cafe where name like '할리%';
select*from cafe where name like '%리스';

select name,ceo from cafe;