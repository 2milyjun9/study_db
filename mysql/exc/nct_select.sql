select 
a.ifcgSeq
,a.ifcgName
,b.ifcdSeq
,b.ifcdName
,b.ifcdOrder
from infrCodeGroup a 
left join infrCode b on b.ifcgSeq = a.ifcgSeq 
order by a.ifcgSeq, b.ifcdOrder;


select * from infrmember;
select * from infrmemberaddressonline;
select * from infrmemberaddress;
select * from infrmemberphone;
select * from infrnationality;
select * from infrcodegroup;
select * from infrcode;
select * from infrmemberhobby;
select * from infrmemberemail;
select * from infrmemberjoinqna;



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
 
 
 


select
a.ifcgSeq
,a.ifcgName
,b.ifcdSeq
,b.ifcdName
,b.ifcdOrder
,b.ifcdUseNy
,b.ifcdDelNY
from infrCodegroup a
left join infrcode b on b.ifcgSeq = a.ifcgSeq
where 1=1
	and a.ifcgDelny = 0
	and a.ifcUseNy = 1
    and b.ifcdDelNy = 0
    and b.ifcdUseNy = 1
    order by a.ifcgSeq asc
    ,b.ifcdOrder desc;
    
    select 
    a.ifmmSeq
    ,a.ifmmAdminNY
    ,a.ifmmDormancyNy
    ,a.ifmmName
    ,a.ifmmId
    ,a.ifmmgenderCd
    ,(select ifcdName from infrCode where ifcdSeq = a.ifmmgenderCd) as ifmmgenderName
    ,a.ifmmDob
    ,b.ifmaTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = b.ifmaTypeCd) as ifmaTypeName
    ,b.ifmaTitle
    ,b.ifmaAddress1
    ,b.ifmaAddress2
    ,b.ifmaZipCode
    ,c.ifaoTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = c.ifaoTypeCd) as ifaoTypeName
    ,ifaoSnsTypeCd
      ,(select ifcdName from infrCode where ifcdSeq = c.ifaoSnsTypeCd) as ifaoSnsTypeName
    , c.ifaoTitle
    , c.ifaoUrl
    from  infrMember  a
    left join infrMemberAddress b on b.ifmaDelny = 0 and b.ifmaDefaultNy =1 and b.ifmmSeq = a.ifmmSeq
    left join infrMemberAddressOnline c on c.ifaoDelny = 0 and c.ifaoDefaultNy = 1 and c.ifmmSeq= a.ifmmSeq
    where 1=1
       and a.ifmmDelNy = 0;
    
    select
    a.ifmmAdminNy
    , a.ifmmDormancyNy
    , a.ifmmName
    , a.ifmmId
    , a.ifmmgenderCd
    , (select ifcdName from infrCode where ifcdSeq = a.ifmmgenderCd) as ifmmgenderName
    , a.ifmmDob
    , b.ifmaTypeCd
    , (select ifcdName from infrCode where ifcdSeq = b.ifmaTypeCd) as ifmaTypeName
    , b.ifmaTitle
    , b.ifmaAddress1
    , b.ifmaAddress2
    , b.ifmaZipCode
    , c.ifaoTypeCd
    , (select ifcdName from infrCode where ifcdSeq = c.ifaoTypeCd) as ifaoTypeName
    , c.ifaoTitle
    , c.ifaoUrl
from infrMember a
   left join infrMemberAddress b on b.ifmaDelNy = 0 and b.ifmaDefaultNy =1 and b.ifmmseq=a.ifmmseq
    left join infrMemberAddressOnline c on c.ifaoDelNy=0 and c.ifaoDefaultNy=1 and c.ifmmSeq = a.ifmmSeq
where 1=1
   and a.ifmmDelNy = 0;

    select * from infrmembernationality;
    
    
    select 
    a.ifmmSeq
    ,a.ifmmAdminNY
    ,a.ifmmDormancyNy
    ,a.ifmmName
    ,a.ifmmId
    ,a.ifmmgenderCd
    ,(select ifcdName from infrCode where ifcdSeq = a.ifmmgenderCd) as ifmmgenderName
    ,a.ifmmDob
    ,b.ifmaTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = b.ifmaTypeCd) as ifmaTypeName
    ,b.ifmaTitle
    ,b.ifmaAddress1
    ,b.ifmaAddress2
    ,b.ifmaZipCode
    ,c.ifaoTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = c.ifaoTypeCd) as ifaoTypeName
    ,c.ifaoSnsTypeCd
  --  ,ifnull(c.ifaoSnsTypeCd,"-") as ifaoSnsTypeCdNullCheck
	,(select ifcdName from infrCode where ifcdSeq = c.ifaoSnsTypeCd) as ifaoSnsTypeName
    ,c.ifaoTitle
    ,c.ifaoUrl
,d.ifmeTypeCd
  ,(select ifcdName from infrCode where ifcdSeq = d.ifmeTypeCd) as ifmeTypeName
   ,d.ifmeEmailFull
	,e.ifjqQuestionCd
    ,(select ifcdName from infrCode where ifcdSeq  = e.ifjqQuestionCd) as ifjqQuestionName
    ,f.ifnaSeq
 ,g.ifnaName
   ,h.ifmpTypeCd
  ,(select ifcdName from infrCode where ifcdSeq = h.ifmpTypeCd) as ifmpTypeName
,h.ifmpDeviceCd
    ,(select ifcdName from infrCode where ifcdSeq = h.ifmpDeviceCd) as ifmpDeviceName
 ,h.ifmpTelecomCd
    ,(select ifcdName from infrCode where ifcdSeq = h.ifmpTelecomCd) as ifmpTelecomName
 ,h.ifmpNumber
 , concat(substring(h.ifmpNumber,1,3),"-",substring(h.ifmpNumber,4,4) ,"-",substring(h.ifmpNumber,7,4))as ifmpTelecomNameWithDash
from 
infrmember a
    left join infrMemberAddress b on b.ifmaDelNy = 0 and b.ifmaDefaultNy =1 and b.ifmmSeq = a.ifmmSeq
    left join infrMemberAddressOnline c on c.ifaoDelNy = 0 and c.ifaoDefaultNy = 1 and c.ifmmSeq= a.ifmmSeq
 left join infrMemberEmail d on d.ifmeDelNy  = 0 and d.ifmeDefaultNy = 1 and d.ifmmSeq = a.ifmmSeq
	left join infrmemberjoinqna e on e.ifjqDelNy =  0 and e.ifmmSeq = a.ifmmSeq
	left join infrmembernationality f on f.ifmnDelNy  = 0 and f.ifmnDefaultNy = 1 and f.ifmmSeq = a.ifmmSeq
  left join infrnationality g on g.ifnaDelNy  = 0 and f.ifmnDefaultNy = 1 and g.ifnaSeq = f.ifmnSeq
  left join infrmemberphone h on h.ifmpDefaultNy = 1 and h.ifmmSeq = a. ifmmseq
    where 1=1
       and a.ifmmDelNy = 0;
       ; 
       
       use nct;
       
       select 
       a. ifatSeq
       ,(select ifatName from infrAuth where ifatSeq = a.ifatSeq) as ifatName
       , a.ifmuSeq
		,(select ifmuName from infrMenu where ifmuSeq = a.ifmuSeq) as ifmuName
		, a.ifauRoleCd
		,(select ifcdName from infrCode where ifcdSeq = a.ifauRoleCd) as ifauRoleName
 from infrAuthmenu a 
 where 1 =1
 and a.ifatSeq = 3;
 
 
 select * from infrauthmenu;