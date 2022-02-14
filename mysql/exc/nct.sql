create database nct;

use nct;

INSERT INTO `nct`.`infrcodegroup`
(
`ifcgName`,
`ifcUseNy`,
`ifcgOrder`,
`ifcgDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
'회원보안질문.구분',
1,
14,
0,
now(),
now(),
now(),
now()
);

select*from infrCodeGroup;
select count(*) from infrCodeGroup;

update infrCodeGroup
set ifcgDelNy = 1
where ifcgseq > 10;

select * from infrCodeGroup
where 1=1
and ifcgDelNy = 0 ;


INSERT INTO `nct`.`infrcode`
(
`ifcdName`,
`ifcdUseNy`,
`ifcdOrder`,
`ifcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`IfcgSeq`)
VALUES
(
"기타",
1,
6,
0,
now(),
now(),
now(),
now(),
12);

select * from infrCode;

select 
a.ifcgSeq
,a.ifcgName
,b.ifcdSeq
,b.ifcdName
,b.ifcdOrder
from infrCodeGroup a 
left join infrCode b on b.ifcgSeq = a.ifcgSeq 
order by a.ifcgSeq, b.ifcdOrder;



INSERT INTO `nct`.`infrnationalinfrcodegroupity`
(
`ifnaName`,
`ifnaCode2Char`,
`ifnaCode3Char`,
`ifnaUseNy`,
`ifnaOrder`,
`ifnaDelNY`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
"미국",
"US",
"USA",
1,
2,
0,
now(),
now(),
now(),
now());

select * from infrNationality;


select  * from infrmember;

INSERT INTO `nct`.`infrmember`
(
`ifmmAdminNy`,
`ifmmDormancyNy`,
`ifmmName`,
`ifmmId`,
`ifmmpassword`,
`ifmmPwdModDate`,
`ifmmGenderCd`,
`ifmmDob`,
`ifmmSaveCd`,
`ifmmMarriageCd`,
`ifmmMarriageDate`,
`ifmmChildrenNum`,
`ifmmFavoriteColor`,
`ifmmEamilConsentNy`,
` ifmmSmsConsentNy`,
`ifmmPushConsentNy`,
`ifmmDelNY`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
0,
0,
"박기동",
"park6252",
"111222333!",
"2022-01-01 12:00:00",
1,
"1979-12-12",
1,
1,
"2016-04-16",
2,
"주황",
2,
2,
2,
0,
now(),
now(),
now(),
now());


INSERT INTO `nct`.`infrmemberhobby`
(
`ifmhHobbyCd`,
`ifmhUseNy`,
`ifmhOrder`,
`ifmeDelNY`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
2,
1,
2,
0,
now(),
now(),
now(),
now(),
2);

select * from infrmemberhobby;


INSERT INTO `nct`.`infrmembernationality`
(
`ifnaDelNY`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`,
`ifnaSeq`)
VALUES
(
0,
now(),
now(),
now(),
now(),
1,
2);

select  * from infrNationality;
select  * from infrmemberNationality;

INSERT INTO `nct`.`infrmemberphone`
(
`ifmpDefaultNy`,
`ifmpTypeCd`,
`ifmpDeviceCd`,
`ifmpNumber`,
`ifmeDelNY`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
0,
1,
4,
021112222,
0,
NOW(),
NOW(),
NOW(),
NOW(),
2);

alter table infrMemberEmail modify ifmeTypeCd bigint;
select * from infrmemberphone;
select * from infrmemberaddress;

select 
a.ifcgSeq
,a.ifcgName
,b.ifcdSeq
,b.ifcdName
,b.ifcdOrder
from infrCodeGroup a 
left join infrCode b on b.ifcgSeq = a.ifcgSeq 
order by a.ifcgSeq, b.ifcdOrder;

INSERT INTO `nct`.`infrmemberaddress`
(
`ifmaDefaultNy`,
`ifmaTypeCd`,
`ifmaAddress1`,
`ifmaAddress2`,
`ifmaZipcode`,
`ifmeDelNY`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
1,
1,
"서울시강서구",
"가양1동",
11111,
0,
NOW(),
NOW(),
NOW(),
NOW(),
1);

select  * from infrmemberaddress;
select  * from infrmemberaddressonline;
select  * from infrmemberEmailinfrmembernationality;

INSERT INTO `nct`.`infrmemberaddressonline`
(
`ifaoTypeCd`,
`ifaoDefaultNy`,
`ifaoSnsTypeCd`,
`ifaoUrl`,
`ifmeDelNY`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
2,
1,
4,
"park6252",
0,
now(),
now(),
now(),
now(),
2);


INSERT INTO `nct`.`infrmemberemail`
(
`ifmeDefaultNy`,
`ifmeTypeCd`,
`ifmeEmailFull`,
`ifmeDelNY`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
0,
15,
"park2@abc.com",
0,
now(),
now(),
now(),
now(),
2);

select * from infrmemberemail;
select * from infrmemberhobbyinfrmembernationalityinfrmembernationality;


select ifmeTypeCd ,(select ifcdName from infrCode where ifcdSeq = ifmeTypeCd) as ifmeTypeName from infrmemberemail;
select ifjqQuestionCd,(select ifcdName from infrCode where ifcdSeq  = ifjqQuestionCd) as ifjqQuestionName from infrmemberjoinqna;

select * from infrcode where ifcgseq = 14;
select * from infrcodegroup;
select * from infrmember;
select * from infrmemberjoinqna;

INSERT INTO `nct`.`infrmemberjoinqna`
(
`ifjqQuestionCd`,
`ifjqAnswer`,
`ifjqDelNY`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
2,
"삼국지",
0,
now(),
now(),
now(),
now(),
2);


	select  * from infrnationality;
    select  * from infrmembernationality;
    
    select * from infrauth;
    select * from infrauthmember;
    
    select * from infrmemberphone;
    
    select 
   ifmpTypeCd
  ,(select ifcdName from infrCode where ifcdSeq = ifmpTypeCd) as ifmpTypeName
,ifmpDeviceCd
,(select ifcdName from infrCode where ifcdSeq = ifmpDeviceCd) as ifmpDeviceName
,ifmpTelecomCd
,(select ifcdName from infrCode where ifcdSeq = ifmpTelecomCd) as ifmpTelecomName
 ,ifmpNumber
 from infrmemberphone;
 
 