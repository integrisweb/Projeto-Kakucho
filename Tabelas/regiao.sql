CREATE TABLE `regiao` ( 
`id_regiao` INT NOT NULL AUTO_INCREMENT COMMENT'Código da Região' , 
`id_estado` INT NULL DEFAULT NULL COMMENT 'Código do Estado' , 
`nome_regiao` VARCHAR(30) NOT NULL COMMENT 'Região do Templo' ,
`situacao_regiao` CHAR(1) NOT NULL COMMENT 'Situação da Região' ,
PRIMARY KEY(`id_regiao`)
) ENGINE =MyISAM;