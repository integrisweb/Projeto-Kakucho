CREATE TABLE `budis479_hbs`.`pontuacao` ( 
`id_fiel` INT NULL DEFAULT NULLCOMMENT 'Código do Fiel' , 
`id_templo` INT NULL DEFAULT NULL COMMENT'Código do Templo' , 
`id_grau` INT NULL DEFAULT NULL COMMENT 'Código da Pontuação' , 
`id_cargo` INT NULL DEFAULT NULL COMMENT 'Cargo do Fiel/Sacerdote'
`pontuacao_fiel` INT NULL DEFAULT NULL COMMENT 'Pontuação do Fiel', 
`pontuacao_cargo` INT NULL DEFAULT NULL COMMENT 'Pontuação do Cargo', 
`data_pontuacao` DATE NULL DEFAULT NULL COMMENT 'Data da Pontuação do Fiel' , 
`situacao_pontuacao` CHAR(1) NULL DEFAULT NULL COMMENT 'Situação da Pontuação' ) ENGINE = MyISAM;