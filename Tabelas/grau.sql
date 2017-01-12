CREATE TABLE `grau` ( 
`id_grau` INT NOT NULL AUTO_INCREMENT COMMENT 'Código do Grau' , 
`Nome_Grau` VARCHAR(30) NULL DEFAULT NULL COMMENT 'nome_grau' , 
`situacao_grau` CHAR(1) NULL DEFAULT NULL COMMENT'situacao_grau' , 
PRIMARY KEY (`id_grau`) COMMENT 'Código do Grau' ) ENGINE= MyISAM;