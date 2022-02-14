
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

CREATE TABLE IF NOT EXISTS `infrMemberAddress` (
  `ifmaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmaDefaultNy` TINYINT NOT NULL,
  `ifmaTypeCd` TINYINT NULL,
  `ifmaTitle` VARCHAR(100) NULL,
  `ifmaAddress1` VARCHAR(100) NULL,
  `ifmaAddress2` VARCHAR(100) NULL,
  `ifmaZipcode` VARCHAR(50) NULL,
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
  PRIMARY KEY (`ifmaSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMemberEmail` (
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
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMembeHobby` (
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
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `infrMemberPhone` (
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
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMemberAddressOnline` (
  `ifaoSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifaoTypeCd` TINYINT NULL,
  `ifaoDefaultNy` TINYINT NOT NULL,
  `ifaoSnsTypeCd` TINYINT NULL,
  `ifaoUrl` VARCHAR(100) NULL,
  `ifaoTitle` VARCHAR(100) NULL,
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
  PRIMARY KEY (`ifaoSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMemberJoinQna` (
  `ifjqSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifjqQuestionCd` TINYINT NOT NULL,
  `ifjqAnswer` VARCHAR(50) NOT NULL,
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
  PRIMARY KEY (`ifjqSeq`),
  INDEX `fk_infrMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrMemberNationality` (
  `ifmnSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  `ifnaSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmnSeq`),
  INDEX `fk_sample_copy1_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  INDEX `fk_sample_copy1_infrNationality1_idx` (`ifnaSeq` ASC) VISIBLE,
  CONSTRAINT `fk_sample_copy1_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sample_copy1_infrNationality1`
    FOREIGN KEY (`ifnaSeq`)
    REFERENCES `infrNationality` (`ifnaSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;



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



CREATE TABLE IF NOT EXISTS `infrNationality` (
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
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrAuth` (
  `ifatSeq` BIGINT UNSIGNED NOT NULL,
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

CREATE TABLE IF NOT EXISTS `infrLogLogin` (
  `iflgSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmmId` VARCHAR(50) NULL,
  `ifmmSeq` BIGINT NULL COMMENT '아이디조회(멤버로부터)',
  `iflgResultNy` TINYINT NULL COMMENT '로그인 성공실패',
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


CREATE TABLE IF NOT EXISTS `infrMenu` (
  `ifmuSeq` BIGINT UNSIGNED NOT NULL,
  `ifmuAdminNy` TINYINT NULL,
  `ifmuName` VARCHAR(50) NOT NULL,
  `ifmuNameEng` VARCHAR(50) NULL,
  `ifmuUrl` VARCHAR(100) NULL,
  `ifmuParents` BIGINT NULL,
  `ifmuDepth` TINYINT NULL,
  `ifmuUseNy` TINYINT NULL,
  `ifmuOrder` TINYINT NULL,
  `ifmuDesc` VARCHAR(255) NULL,
  `ifmuDelNY` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifmuSeq`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `infrAuth` (
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

CREATE TABLE IF NOT EXISTS `infrMenu` (
  `ifmuSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmuAdminNy` TINYINT NULL,
  `ifmuName` VARCHAR(50) NOT NULL,
  `ifmuNameEng` VARCHAR(50) NULL,
  `ifmuUrl` VARCHAR(100) NULL,
  `ifmuParents` BIGINT NULL,
  `ifmuDepth` TINYINT NULL,
  `ifmuUseNy` TINYINT NULL,
  `ifmuOrder` TINYINT NULL,
  `ifmuDesc` VARCHAR(255) NULL,
  `ifmuDelNY` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifmuSeq`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `infrAuthmember` (
  `ifamSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
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
    REFERENCES `infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrAuthmember_infrAuth1`
    FOREIGN KEY (`ifatSeq`)
    REFERENCES `infrAuth` (`ifatSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `infrAuthmenu` (
  `ifauSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifauRoleCd` BIGINT NULL ,
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
    REFERENCES `infrAuth` (`ifatSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrAuthmenu_infrMenu1`
    FOREIGN KEY (`ifmuSeq`)
    REFERENCES`infrMenu` (`ifmuSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


