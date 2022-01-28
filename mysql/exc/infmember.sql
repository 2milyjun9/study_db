
use world;

CREATE TABLE IF NOT EXISTS `infrMember` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `adminNy` TINYINT(1) NULL,
  `photo` BLOB NULL,
  `name` VARCHAR(45) NOT NULL,
  `id` VARCHAR(45) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `genderCd` TINYINT(1) NOT NULL,
  `dob` DATE NOT NULL,
  `nationalityCd` VARCHAR(45) NOT NULL,
  `reference` VARCHAR(45) NULL,
  `pwQuestionCd` INT NULL,
  `pwAnswer` VARCHAR(50) NULL,
  `job` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  `introduce` VARCHAR(100) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`infrCodeGroup` (
  `seq` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`infrCode` (
  `code` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  `infrCodeGroup_seq` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`code`, `infrCodeGroup_seq`),
  INDEX `fk_infrCode_infrCodeGroup1_idx` (`infrCodeGroup_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infrCode_infrCodeGroup1`
    FOREIGN KEY (`infrCodeGroup_seq`)
    REFERENCES `world`.`infrCodeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`infrProject` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `startDate` DATE NULL,
  `endDate` DATE NULL,
  `role` VARCHAR(45) NULL,
  `client` VARCHAR(45) NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrProject_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infrProject_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `world`.`infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`infrMemberHobby` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  `hobby` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrMemberHobby_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberHobby_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `world`.`infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`infraSns` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `snsTypeCd` TINYINT NULL,
  `snsaccount` VARCHAR(45) NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infraSns_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infraSns_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `world`.`infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`infrMemberMarriage` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `marriage` TINYINT(1) NULL,
  `marriageAnniversary` DATE NULL,
  `child` TINYINT(1) NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrMemberMarriage_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberMarriage_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `world`.`infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`infrMemberMarketing` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `mobile` TINYINT(1) NOT NULL,
  `email` TINYINT(1) NOT NULL,
  `infoExpiryDate` INT NOT NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrMarketing_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMarketing_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `world`.`infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`infrMemberEmail` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defualtNy` INT NOT NULL,
  `emaiTypeCd` TINYINT NULL,
  `emailAccount` VARCHAR(45) NULL,
  `emailDomain` VARCHAR(45) NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE)
ENGINE = MEMORY
COMMENT = 'e';

CREATE TABLE IF NOT EXISTS `world`.`infrMemberPhone` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defalutNy` INT NOT NULL,
  `phoneTypeCd` TINYINT(1) NULL ,
  `telecom` INT NULL ,
  `number` VARCHAR(45) NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrMemberPhone_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberPhone_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `world`.`infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`infrAddress` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NOT NULL,
  `zipcode` INT NULL,
  `addressTypeCd` VARCHAR(45) NULL,
  `address` VARCHAR(45) NOT NULL,
  `address2` VARCHAR(45) NOT NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infrAddress_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE)
ENGINE = innodb;

select * from infrmember;
select * from infrcode;
select * from infrcodegroup;
select * from infrmemberemail;
select * from infrmemberhobby;
select * from infrmembermarketing;
select * from infrmembermarriage;
select * from infrmemberphone;
select * from infraddress;
desc infrcodegroup;
desc infrcode;
desc infraddress;
desc infrmemberphone;
alter table infrmemberphone change telecom telecomCd int;
insert into infrcodegroup (seq,name) values ( 'infra009', 'pwQuestionCd');
insert into infrcode (code,name,infrcodeGroup_seq) values ( '2', '가장좋아하는책은?' , 'infra009');

update infrmember set pwQuestionCd = '1'where seq=1;
update infrmember set pwQuestionCd = '2'where seq=3;

insert into infrmember(name,id,password,genderCd,dob,nationalityCd,reference,pwQuestionCd,pwAnswer,job,color,introduce) 
values ( '박선우', 'jr.park' ,'122333','1','2020-12-20','1','박헌양',2,'블루래빗동화책','대통령','분홍','안녕하세요~ 저는3살이라서 글씨를못써요. 엄마가써줬어요~' );
insert into infraddress(defaultNy,zipcode,addressTypeCd,address,address2,infrmember_seq) values ('12345','자택','서울시강서구가양동','한강아파트105동1108호','1');
insert into infrmembermarriage(marriage,child,infrMember_seq) values (2,2,'3');

alter table infrcode drop tel;

select name, id, genderCd, (select name from code where codeGroup_seq='infra001' and code= genderCd) as gender from infrmember;
