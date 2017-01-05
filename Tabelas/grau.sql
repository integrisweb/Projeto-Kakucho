CREATE TABLE `budis479_hbs`.`grau` ( 
`id_grau` INT NOT NULL AUTO_INCREMENTCOMMENT 'Código do Grau' , 
`Nome_Grau` VARCHAR(30) NULL DEFAULT NULLCOMMENT 'nome_grau' , 
`situacao_grau` CHAR(1) NULL DEFAULT NULL COMMENT'situacao_grau' , 
PRIMARY KEY (`id_grau`) COMMENT 'Código do Grau' ) ENGINE= MyISAM;