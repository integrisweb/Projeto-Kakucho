CREATE TABLE `parentesco` ( 
`id_parentesco` INT NOT NULL AUTO_INCREMENT COMMENT 'C�digo do Parentesco' , 
`parentesco` VARCHAR(40) NOT NULL COMMENT 'Tipo do Parentesco' , 
`situacao_parentesco` CHAR(1) NOT NULL COMMENT 'Situa��o Tipo de Parentesco' , 
PRIMARY KEY (`id_parentesco`) COMMENT'idParentesco' ) ENGINE = MyISAM;