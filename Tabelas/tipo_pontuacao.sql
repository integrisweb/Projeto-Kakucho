CREATE TABLE `budis479_hbs`.`tipo_pontuacao` ( 
`id_tipo_pontuacao` INT NULL DEFAULT NULL AUTO_INCREMENT COMMENT 'Código da Pontuação' , 
`pontuacao_fiel` INT NULL DEFAULT NULL COMMENT 'Pontuação do Fiel', 
`situacao_pontuacao_fiel` CHAR(1) NULL DEFAULT NULL COMMENT 'Situação da Pontuação' ) ENGINE = MyISAM;