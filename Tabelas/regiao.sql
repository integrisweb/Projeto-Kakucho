CREATE TABLE `budis479_hbs`.`regiao` ( 
`id_regiao` INT NOT NULL COMMENT'C�digo da Regi�o' , 
`id_estado` INT NULL DEFAULT NULL COMMENT 'C�digo do Estado' , 
`nome_regiao` VARCHAR(30) NOT NULL COMMENT 'Regi�o do Templo' ,
`situacao_regiao` CHAR(1) NOT NULL COMMENT 'Situa��o da Regi�o' ) ENGINE =MyISAM;