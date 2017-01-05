CREATE TABLE `budis479_hbs`.`regiao` ( 
`id_regiao` INT NOT NULL COMMENT'Código da Região' , 
`id_estado` INT NULL DEFAULT NULL COMMENT 'Código do Estado' , 
`nome_regiao` VARCHAR(30) NOT NULL COMMENT 'Região do Templo' ,
`situacao_regiao` CHAR(1) NOT NULL COMMENT 'Situação da Região' ) ENGINE =MyISAM;