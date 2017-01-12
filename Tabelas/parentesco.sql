CREATE TABLE `parentesco` ( 
`id_parentesco` INT NOT NULL AUTO_INCREMENT COMMENT 'Código do Parentesco' , 
`parentesco` VARCHAR(40) NOT NULL COMMENT 'Tipo do Parentesco' , 
`situacao_parentesco` CHAR(1) NOT NULL COMMENT 'Situação Tipo de Parentesco' , 
PRIMARY KEY (`id_parentesco`) COMMENT'idParentesco' ) ENGINE = MyISAM;