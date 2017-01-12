CREATE TABLE `pontuacao_cargo` ( 
`id_pontuacao_cargo` INT NULL DEFAULT NULL COMMENT 'Código do Fiel' , 
`id_cargo` INT NULL DEFAULT NULL COMMENT 'Cargo do Fiel/Sacerdote',
`tempo` INT NULL DEFAULT NULL COMMENT 'tempo mínimo do exercício do cargo',
`pontuacao_cargo` INT NULL DEFAULT NULL COMMENT 'Pontuação do Fiel', 
`situacao_pontuacao_cargo` CHAR(1) NULL DEFAULT NULL COMMENT 'Situação da Pontuação' ) ENGINE = MyISAM;