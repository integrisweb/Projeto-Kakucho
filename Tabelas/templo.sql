CREATE TABLE `budis479_hbs`.`templo` ( 
`id_templo` INT NOT NULL AUTO_INCREMENT COMMENT 'C�digo do Templo' , 
`nome_templo` VARCHAR(30) NULL DEFAULT NULLCOMMENT 'Nome do Templo' , 
`situacao_templo` CHAR(1) NULL DEFAULT NULL COMMENT'Situa��o do Templo (A/I)' , 
PRIMARY KEY (`id_templo`) COMMENT 'C�digo do Templo' , 
INDEX `idx_nm_templo` (`nome_templo`(30)) COMMENT 'Nome do Templo' )ENGINE = MyISAM COMMENT = 'Armazena os nomes dos Templos';