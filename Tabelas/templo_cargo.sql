CREATE TABLE `templo_cargo` ( 
`id_templo_cargo` INT NOT NULL COMMENT 'Código do Cargo no Templo',
`id_templo` INT NOT NULL COMMENT 'Código do Templo', 
`id_templo_fiel` INT NOT NULL COMMENT 'Código do Fiel no Templo',
`data_inicio_Templo_Cargo` DATETIME NULL COMMENT 'Data de Início do Cargo no Templo',
`data_fim_templo_cargo` DATETIME  NULL COMMENT 'Data Fim do Cargo no Templo',
`situacao_templo_cargo` CHAR(1) NULL DEFAULT 'A' COMMENT 'Situação do Templo (A/I)',
PRIMARY KEY (`id_templo`,`id_templo_cargo`,`id_templo_fiel`) COMMENT 'Chave primária');