CREATE TABLE `budis479_hbs`.`parentesco` ( 
`id_parentesco` INT NOT NULL AUTO_INCREMENT COMMENT 'C�digo do Parentesco' , 
`parentesco` VARCHAR(40) NOTNULL COMMENT 'Tipo do Parentesco' , 
`situacao_parentesco` CHAR(1) NOT NULLCOMMENT 'Situa��o Tipo de Parentesco' , 
PRIMARY KEY (`id_parentesco`) COMMENT'idParentesco' ) ENGINE = MyISAM;