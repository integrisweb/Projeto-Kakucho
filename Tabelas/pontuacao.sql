CREATE TABLE `budis479_hbs`.`pontuacao` ( 
`id_fiel` INT NULL DEFAULT NULLCOMMENT 'C�digo do Fiel' , 
`id_templo` INT NULL DEFAULT NULL COMMENT'C�digo do Templo' , 
`id_grau` INT NULL DEFAULT NULL COMMENT 'C�digo da Pontua��o' , 
`id_cargo` INT NULL DEFAULT NULL COMMENT 'Cargo do Fiel/Sacerdote'
`pontuacao_fiel` INT NULL DEFAULT NULL COMMENT 'Pontua��o do Fiel', 
`pontuacao_cargo` INT NULL DEFAULT NULL COMMENT 'Pontua��o do Cargo', 
`data_pontuacao` DATE NULL DEFAULT NULL COMMENT 'Data da Pontua��o do Fiel' , 
`situacao_pontuacao` CHAR(1) NULL DEFAULT NULL COMMENT 'Situa��o da Pontua��o' ) ENGINE = MyISAM;