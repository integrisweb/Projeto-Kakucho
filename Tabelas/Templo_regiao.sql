CREATE TABLE `templo_regiao`( 
`id_templo` INT NOT NULL COMMENT 'Código do Templo', 
`id_templo_regiao` INT NOT NULL COMMENT 'Código do Cargo no Templo',
`situacao_templo_regiao` CHAR(1) NULL DEFAULT NULL COMMENT 'Situação do Templo (A/I)',
PRIMARY KEY (`id_templo`,`id_templo_regiao`) COMMENT 'Código da Região no Culto');
