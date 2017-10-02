CREATE TABLE `grupo` ( 
`id_grupo` INT NOT NULL AUTO_INCREMENT COMMENT 'Código do Grupo' , 
`id_templo` INT NOT NULL COMMENT 'Código do Templo' , 
`id_regiao` INT NOT NULL COMMENT 'Código da Região do Templo' , 
`nome_grupo` VARCHAR(40) NULL DEFAULT NULL COMMENT'Nome do Grupo' , 
`situacao_grupo` CHAR(1) NULL DEFAULT NULL COMMENT'Situacao do Grupo' , 
PRIMARY KEY (`id_grupo`) COMMENT 'Código do Grupo' ,
INDEX `idx_idgrupo_idtemplo` (`id_templo`) COMMENT 'id_grupo x id_templo' );