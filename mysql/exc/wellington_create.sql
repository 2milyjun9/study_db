use wellington;

CREATE TABLE IF NOT EXISTS `infrCodeGroup` (
  `IfcgSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcgSeqAnother` VARCHAR(50) NULL,
  `ifcgName` VARCHAR(100) NOT NULL,
  `ifcgNameEng` VARCHAR(100) NULL,
  `ifcUseNy` TINYINT NULL,
  `ifcgOrder` TINYINT NULL,
  `ifcgReferenceV1` VARCHAR(50) NULL,
  `ifcgReferenceV2` VARCHAR(50) NULL,
  `ifcgReferenceV3` VARCHAR(50) NULL,
  `ifcgReferenceI1` INT NULL,
  `ifcgReferenceI2` INT NULL,
  `ifcgReferenceI3` INT NULL,
  `ifcgDesc` VARCHAR(255) NULL,
  `ifcgDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`IfcgSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrCode` (
  `ifcdSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcdSeqAnother` VARCHAR(50) NULL,
  `ifcdName` VARCHAR(50) NULL,
  `ifcdNameEng` VARCHAR(50) NULL,
  `ifcdNamelang1` VARCHAR(50) NULL,
  `ifcdNamelang2` VARCHAR(50) NULL,
  `ifcdNamelang3` VARCHAR(50) NULL,
  `ifcdNamelang4` VARCHAR(50) NULL,
  `ifcdNamelang5` VARCHAR(50) NULL,
  `ifcdUseNy` TINYINT NULL,
  `ifcdOrder` TINYINT NULL,
  `ifcdReferencdV1` VARCHAR(50) NULL,
  `ifcdReferencdV2` VARCHAR(50) NULL,
  `ifcdReferencdV3` VARCHAR(50) NULL,
  `ifcdReferenceI1` INT NULL,
  `ifcdReferenceI2` INT NULL,
  `ifcdReferenceI3` INT NULL,
  `ifcdDesc` VARCHAR(255) NULL,
  `ifcdDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `IfcgSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifcdSeq`, `IfcgSeq`),
  INDEX `fk_infrCode_copy1_infrCodeGroup_idx` (`IfcgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrCode_copy1_infrCodeGroup`
    FOREIGN KEY (`IfcgSeq`)
    REFERENCES `infrCodeGroup` (`IfcgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrCatogory` (
  `ifctSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifctName` VARCHAR(50) NULL,
  `ifctNameEng` VARCHAR(50) NULL,
  `ifctParents` BIGINT NULL,
  `ifctDepth` TINYINT NULL,
  `ifctUseNy` TINYINT NULL,
  `ifctOrder` TINYINT NULL,
  `ifctDesC` VARCHAR(255) NULL,
  `ifctDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`ifctSeq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `infrLogLogin` (
  `iflgSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmmId` VARCHAR(50) NULL,
  `ifmmSeq` BIGINT NULL ,
  `iflgResultNy` TINYINT NULL  ,
  `iflgDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`iflgSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMember` (
  `ifmmSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmmAdminNy` TINYINT NULL,
  `ifmmDormancyNy` TINYINT NULL,
  `ifmmName` VARCHAR(50) NOT NULL,
  `ifmmId` VARCHAR(50) NOT NULL,
  `ifmmpassword` VARCHAR(100) NULL,
  `ifmmPwdModDate` DATETIME NULL ,
  `ifmmGenderCd` TINYINT NULL,
  `ifmmDob` DATE NULL,
  `ifmmSaveCd` TINYINT NULL,
  `ifmmMarriageCd` TINYINT NULL,
  `ifmmMarriageDate` DATE NULL,
  `ifmmChildrenNum` TINYINT NULL,
  `ifmmFavoriteColor` VARCHAR(50) NULL,
  `ifmmRecommenderSeq` BIGINT NULL,
  `ifmmEamilConsentNy` TINYINT NULL ,
  ` ifmmSmsConsentNy` TINYINT NULL,
  `ifmmPushConsentNy` TINYINT NULL,
  `ifmmDesc` VARCHAR(255) NULL,
  `ifmmDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`ifmmSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS`infrMemberEmail` (
  `ifmeSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmeDefaultNy` TINYINT NOT NULL,
  `ifmeTypeCd` TINYINT NULL,
  `ifmeEmailFull` VARCHAR(100) NULL,
  `ifmeEmailAccount` VARCHAR(100) NULL,
  `ifmeEmailDomain` VARCHAR(100) NULL,
  `ifmeEmailDomainCd` TINYINT NULL,
  `ifmeDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmeSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `wellington`.`infrMembeHobby` (
  `ifmhSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmhHobbyCd` TINYINT NOT NULL,
  `ifmhUseNy` TINYINT NULL,
  `ifmhOrder` TINYINT NULL,
  `ifmeDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmhSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember110`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `wellington`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `wellington`.`infrMemberPhone` (
  `ifmpSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmpDefaultNy` TINYINT NOT NULL,
  `ifmpTypeCd` TINYINT NULL,
  `ifmpDeviceCd` TINYINT NULL,
  `ifmpTelecomCd` TINYINT NULL,
  `ifmpNumber` VARCHAR(50) NULL,
  `ifmeDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmpSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember10`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `wellington`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `wellington`.`infrMemberAddressOnline` (
  `ifaoSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifaoTypeCd` TINYINT NULL,
  `ifaoDefaultNy` TINYINT NOT NULL,
  `ifaoSnsTypeCd` TINYINT NULL,
  `ifaoUrl` VARCHAR(100) NULL,
  `ifaoTitle` VARCHAR(100) NULL,
  `ifaoDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifaoSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember100`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `wellington`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `wellington`.`infrMemberJoinQna` (
  `ifjqSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifjqQuestionCd` TINYINT NOT NULL,
  `ifjqAnswer` VARCHAR(50) NOT NULL,
  `ifjqDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifjqSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberEmail_infrMember111`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `wellington`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `wellington`.`infrNationality` (
  `ifnaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifnaName` VARCHAR(50) NULL,
  `ifnaNameKor` VARCHAR(50) NULL,
  `ifnaNameEng` VARCHAR(50) NULL,
  `ifnaCode2Char` CHAR(2) NULL,
  `ifnaCode3Char` CHAR(3) NULL,
  `ifnaUseNy` TINYINT NULL,
  `ifnaOrder` TINYINT NULL,
  `ifnaDesc` VARCHAR(255) NULL,
  `ifnaDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`ifnaSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `wellington`.`infrMemberNationality` (
  `ifmnSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `inmnDefaultNy` TINYINT NOT NULL,
  `ifmnDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  `ifnaSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmnSeq`),
  INDEX `fk_sample_copy1_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  INDEX `fk_sample_copy1_infrNationality1_idx` (`ifnaSeq` ASC) VISIBLE,
  CONSTRAINT `fk_sample_copy1_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `wellington`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sample_copy1_infrNationality1`
    FOREIGN KEY (`ifnaSeq`)
    REFERENCES `wellington`.`infrNationality` (`ifnaSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `wellington`.`infrAuth` (
  `ifatSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifatAdminNy` TINYINT NULL,
  `ifatName` VARCHAR(50) NOT NULL,
  `ifatNameEng` VARCHAR(50) NULL,
  `ifatUseNy` TINYINT NULL,
  `ifatOrder` TINYINT NULL,
  `ifatDesc` VARCHAR(255) NULL,
  `ifatDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`ifatSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `wellington`.`infrAuthmember` (
  `ifamSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifamDefaultyNy` TINYINT NOT NULL,
  `ifamUseNy` TINYINT NULL,
  `ifamOrder` TINYINT NULL,
  `ifamDesc` VARCHAR(255) NULL,
  `ifauDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  `ifatSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifamSeq`),
  INDEX `fk_infrAuthmember_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  INDEX `fk_infrAuthmember_infrAuth1_idx` (`ifatSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrAuthmember_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `wellington`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrAuthmember_infrAuth1`
    FOREIGN KEY (`ifatSeq`)
    REFERENCES `wellington`.`infrAuth` (`ifatSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `wellington`.`auctImage` (
  `acimSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `acimDefaultNy` TINYINT NOT NULL,
  `acimFileName` VARCHAR(200) NULL,
  `acimFileSize` INT NULL,
  `acimUploaderCd` TINYINT NULL,
  `acimFileLocation` INT NULL,
  `acimDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`acimSeq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `wellington`.`auctProduct` (
  `acprSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `acprDefaultNy` TINYINT NOT NULL,
  `acprProductName` VARCHAR(100) NOT NULL,
  `acprProductNameEng` VARCHAR(50) NULL,
  `acprCategory` BIGINT NULL,
  `acprStatusCd` TINYINT NULL,
  `acprPickNy` TINYINT NULL,
  `acprDetails` VARCHAR(1000) NULL,
  `acprDetailsEng` VARCHAR(500) NULL,
  `acprPickupCd` BIGINT NULL,
  `acprStartDate` DATETIME NULL,
  `acprEndDate` DATETIME NULL,
  `acprPriceStart` INT NULL,
  `acprPriceNow` INT NULL,
  `acpsPolicy` VARCHAR(255) NULL,
  `acprHits` INT NULL,
  `acprAuctionTry` INT NULL,
  `acprDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `acimSeq` BIGINT UNSIGNED NOT NULL,
  `acsbSeq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`acprSeq`),
  INDEX `fk_auctProduct_auctImage1_idx` (`acimSeq` ASC) VISIBLE,
  INDEX `fk_auctProduct_auctSubmit1_idx` (`acsbSeq` ASC) VISIBLE,
  CONSTRAINT `fk_auctProduct_auctImage1`
    FOREIGN KEY (`acimSeq`)
    REFERENCES `wellington`.`auctImage` (`acimSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_auctProduct_auctSubmit1`
    FOREIGN KEY (`acsbSeq`)
    REFERENCES `wellington`.`auctSubmit` (`acsbSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `wellington`.`infrAuthmenu` (
  `ifauSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifauRoleCd` TINYINT NULL ,
  `ifauUseNy` TINYINT NULL,
  `ifauOrder` TINYINT NULL,
  `ifauDesc` VARCHAR(255) NULL,
  `ifauDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifatSeq` BIGINT UNSIGNED NOT NULL,
  `ifmuSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifauSeq`),
  INDEX `fk_infrAuthmenu_infrAuth1_idx` (`ifatSeq` ASC) VISIBLE,
  INDEX `fk_infrAuthmenu_infrMenu1_idx` (`ifmuSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrAuthmenu_infrAuth1`
    FOREIGN KEY (`ifatSeq`)
    REFERENCES `wellington`.`infrAuth` (`ifatSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrAuthmenu_infrMenu1`
    FOREIGN KEY (`ifmuSeq`)
    REFERENCES `wellington`.`infrMenu` (`ifmuSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;



CREATE TABLE IF NOT EXISTS `wellington`.`auctProduct` (
  `acprSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `acprDefaultNy` TINYINT NOT NULL,
  `acprProductName` VARCHAR(100) NOT NULL,
  `acprProductNameEng` VARCHAR(50) NULL,
  `acprCategory` BIGINT NULL,
  `acprStatusCd` TINYINT NULL,
  `acprPick` TINYINT NULL,
  `acprDetails` VARCHAR(1000) NULL,
  `acprDetailsEng` VARCHAR(500) NULL,
  `acprPickupCd` BIGINT NULL,
  `acprStartDate` DATETIME NULL,
  `acprEndDate` DATETIME NULL,
  `acprPriceStart` INT NULL,
  `acprPriceNow` INT NULL,
  `acpsPolicy` VARCHAR(255) NULL,
  `acprHits` INT NULL,
  `acprAuctionTry` INT NULL,
  `acprDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `acimSeq` BIGINT UNSIGNED NOT NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`acprSeq`),
  INDEX `fk_auctProduct_auctImage1_idx` (`acimSeq` ASC) VISIBLE,
  INDEX `fk_auctProduct_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_auctProduct_auctImage1`
    FOREIGN KEY (`acimSeq`)
    REFERENCES `wellington`.`auctImage` (`acimSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_auctProduct_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `wellington`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `wellington`.`auctSubmit` (
  `acsbSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `acsbTitle` VARCHAR(100) NULL,
  `acsbCategory` BIGINT NULL,
  `acsbMinprice` INT NULL,
  `acsbDeadline` DATETIME NULL,
  `acsbDetails` VARCHAR(1000) NULL,
  `acsbDetailsEng` VARCHAR(500) NULL,
  `acsbPolicy` VARCHAR(255) NULL,
  `acsbDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`acsbSeq`),
  INDEX `fk_auctSubmit_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_auctSubmit_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `wellington`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `wellington`.`auctPurchase` (
  `acpsSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `acpsMinPrice` INT NULL,
  `acpsMaxPrice` INT NULL,
  `acpsBuyDate` DATETIME NULL,
  `acpsAlert1` TINYINT NULL,
  `acpsAlert2` TINYINT NULL,
  `acpsAlert3` TINYINT NULL,
  `acpsAlert4` TINYINT NULL,
  `acpsPolicyAgree` TINYINT NULL,
  `acpsResultNy` TINYINT NULL,
  `acpsDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `acprSeq` BIGINT UNSIGNED NOT NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`acpsSeq`),
  INDEX `fk_auctPurchase_auctProduct1_idx` (`acprSeq` ASC) VISIBLE,
  INDEX `fk_auctPurchase_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_auctPurchase_auctProduct1`
    FOREIGN KEY (`acprSeq`)
    REFERENCES `wellington`.`auctProduct` (`acprSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_auctPurchase_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `wellington`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `wellington`.`auctPurchaseDiscount` (
  `acpdSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `acpdTypeCd` BIGINT NULL,
  `acpdValue` DOUBLE NULL,
  `acpdPrice` INT NULL,
  `acpdDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `acpsSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`acpdSeq`),
  INDEX `fk_auctPurchaseDiscount_auctPurchase1_idx` (`acpsSeq` ASC) VISIBLE,
  CONSTRAINT `fk_auctPurchaseDiscount_auctPurchase1`
    FOREIGN KEY (`acpsSeq`)
    REFERENCES `wellington`.`auctPurchase` (`acpsSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `wellington`.`auctPurchaseFinal` (
  `aupfSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `acpsPrice` INT NULL,
  `acpsReviewCd` TINYINT NULL,
  `acpsReview` VARCHAR(500) NULL,
  `acpsReviewPhoto1` VARCHAR(200) NULL,
  `acpsReviewPhoto2` VARCHAR(200) NULL,
  `acpsReviewPhoto3` VARCHAR(200) NULL,
  `aupfDelNY` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `acpsSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`aupfSeq`),
  INDEX `fk_auctPurchaseFinal_auctPurchase1_idx` (`acpsSeq` ASC) VISIBLE,
  CONSTRAINT `fk_auctPurchaseFinal_auctPurchase1`
    FOREIGN KEY (`acpsSeq`)
    REFERENCES `wellington`.`auctPurchase` (`acpsSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;