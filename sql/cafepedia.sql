CREATE DATABASE IF NOT EXISTS `cafepedia` CHAR SET utf8;
USE `cafepedia`;


DROP TABLE IF EXISTS `new_table`;
CREATE TABLE `new_table` (
  `TableId` int(11) NOT NULL AUTO_INCREMENT,
  `TableName` varchar(45) NOT NULL,
  `TableStatus` varchar(45) NOT NULL,
  PRIMARY KEY (`TableId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `Receipt`;
CREATE  TABLE `cafepedia`.`Receipt` (
  `ReceiptId` CHAR(20) NOT NULL ,
  `TableId` INT NULL ,
  `CreatedTime` DATETIME NOT NULL ,
  `ModifiedTime` DATETIME NOT NULL ,
  `Price` FLOAT NOT NULL ,
  PRIMARY KEY (`ReceiptId`) ,
  INDEX `TableId_idx` (`TableId` ASC) ,
  CONSTRAINT `TableId`
    FOREIGN KEY (`TableId` )
    REFERENCES `cafepedia`.`new_table` (`TableId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
DEFAULT CHARACTER SET = utf8;


DROP TABLE IF EXISTS `Category`;
CREATE  TABLE `cafepedia`.`Category` (
  `CategoryId` INT NOT NULL ,
  `CategoryName` VARCHAR(45) NOT NULL ,
  `Description` TEXT NOT NULL ,
  `CreatedTime` DATETIME NOT NULL ,
  `ModifiedTime` DATETIME NOT NULL ,
  `IconLink` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`CategoryId`) )
DEFAULT CHARACTER SET = utf8;


DROP TABLE IF EXISTS `Product`;
CREATE  TABLE `cafepedia`.`Product` (
  `ProductId` INT NOT NULL ,
  `ProductName` VARCHAR(45) NOT NULL ,
  `Description` TEXT NOT NULL ,
  `CreatedTime` DATETIME NOT NULL ,
  `ModifiedTime` DATETIME NOT NULL ,
  `CategoryId` INT NULL ,
  `IconLink` VARCHAR(45) NOT NULL ,
  `Price` FLOAT NOT NULL ,
  PRIMARY KEY (`ProductId`) ,
  INDEX `CategoryId_idx` (`CategoryId` ASC) ,
  CONSTRAINT `CategoryId`
    FOREIGN KEY (`CategoryId` )
    REFERENCES `cafepedia`.`category` (`CategoryId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
DEFAULT CHARACTER SET = utf8;


DROP TABLE IF EXISTS `Order`;
CREATE  TABLE `cafepedia`.`Order` (
  `OrderId` VARCHAR(20) NOT NULL ,
  `TableId` INT NULL ,
  `ProductId` INT NULL ,
  `ReceiptId` VARCHAR(20) NULL ,
  `Qty` INT NOT NULL ,
  `Status` TINYINT NOT NULL ,
  `OrderTime` DATETIME NOT NULL ,
  `ModifiedTime` DATETIME NOT NULL ,
  `Description` TEXT NOT NULL ,
  `isLock` TINYINT NOT NULL ,
  PRIMARY KEY (`OrderId`) ,
  INDEX `TableId_idx` (`TableId` ASC) ,
  INDEX `ProductId_idx` (`ProductId` ASC) ,
  INDEX `ReceiptId_idx` (`ReceiptId` ASC) ,
    FOREIGN KEY (`TableId` )
    REFERENCES `cafepedia`.`new_table` (`TableId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ProductId`
    FOREIGN KEY (`ProductId` )
    REFERENCES `cafepedia`.`product` (`ProductId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ReceiptId`
    FOREIGN KEY (`ReceiptId` )
    REFERENCES `cafepedia`.`receipt` (`ReceiptId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
DEFAULT CHARACTER SET = utf8;


