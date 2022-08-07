CREATE TABLE `PlatziBlog`.`People` (
    `PersonId` INT NOT NULL AUTO_INCREMENT
    ,`LastName` NVARCHAR(255) NULL
    ,`FirstName` NVARCHAR(255) NULL
    ,`Address` NVARCHAR(255) NULL
    ,`City` NVARCHAR(255) NULL
    ,PRIMARY KEY(`PersonId`)
);