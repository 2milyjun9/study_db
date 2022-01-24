use world;

CREATE TABLE IF NOT EXISTS `booktable` (
  `seq` INT UNSIGNED NOT NULL,
  `image` BLOB NULL,
  `book_namesub1` VARCHAR(200) NULL,
  `sort` VARCHAR(45) NULL,
  `book_name` VARCHAR(200) NULL,
  `book_namesub2` VARCHAR(200) NULL,
  `writer` VARCHAR(100) NULL,
  `publisher` VARCHAR(100) NULL,
  `pub_date` DATE NULL,
  `price` VARCHAR(50) NULL,
  `price_discount` VARCHAR(50) NULL,
  `price_point` VARCHAR(45) NULL,
  `sales` INT NULL,
  `review` INT NULL,
  `rate` INT NULL,
  `delivery_date` DATE NULL,
  `event1` VARCHAR(200) NULL,
  `related_product` INT NULL,
  `ebook_price` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_cibooktable



insert into booktable(
seq
,image
,book_namesub1
,sort
,book_name
,book_namesub2
,writer
,publisher
,pub_date
,price
,price_discount
,price_point
,sales
,review
,rate
,delivery_date
,event1
,related_product
,ebook_price
)values (
1
,0
,'이지스퍼블리싱-Do it!시리즈'
,'도서'
, 'Do it! HTML +CSS+자바스크립트 웹 표준의 정석'
, '한 권으로 끝내는 웹 기본 교과서'
, '고경희'
,'이지스퍼블리싱' 
,'2021-01-01'
, '27,000원'
, '10%'
, '1,500원'
, '49899'
, 15
, 9.6
, 2022-01-25
, '[대학생X취준생] 지치지 않는 자, 점수를 잡는다! - 리유저블 텀블러/한국문학담요/슬라이드파일 증정'
,  11
,  '19000'
);

select * from booktable;
