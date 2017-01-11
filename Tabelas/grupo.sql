CREATE TABLE `budis479_hbs`.`grupo` ( 
`id_grupo` INT NOT NULL AUTO_INCREMENT COMMENT 'C�digo do Grupo' , 
`id_templo` INT NOT NULL COMMENT 'C�digo do Templo' , 
`nome_grupo` VARCHAR(40) NULL DEFAULT NULL COMMENT'Nome do Grupo' , 
`situacao_grupo` CHAR(1) NULL DEFAULT NULL COMMENT'Situacao do Grupo' , 
PRIMARY KEY (`id_grupo`) COMMENT 'C�digo do Grupo' ,
INDEX `idx_idgrupo_idtemplo` (`id_templo`) COMMENT 'id_grupo x id_templo' )ENGINE = MyISAM;