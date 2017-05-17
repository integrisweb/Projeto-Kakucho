CREATE TABLE `templo_culto`( 
`id_templo` INT NOT NULL COMMENT 'Código do Templo', 
`id_templo_culto` INT NOT NULL COMMENT 'Código do Culto no Templo',
`situacao_templo_regiao` CHAR(1) NULL DEFAULT NULL COMMENT 'Situação do Culto no Templo (A/I)',
PRIMARY KEY (`id_templo`,`id_templo_culto`) COMMENT 'Código do Culto no Templo');