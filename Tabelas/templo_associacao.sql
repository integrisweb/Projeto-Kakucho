CREATE TABLE `templo_associacao` (
`id_templo_associacao` INT NOT NULL COMMENT 'Código do Cargo no Templo',
`id_templo` INT NOT NULL COMMENT 'Código do Templo', 
`id_templo_fiel` INT NOT NULL COMMENT 'Código do Fiel no Templo',
`id_templo_cargo` INT NOT NULL COMMENT 'Código do Cargo no Templo',
`data_inicio_templo_associacao` DATETIME NOT NULL COMMENT 'Data de Início do Cargo no Templo',
`data_fim_templo_associacao` DATETIME NOT NULL COMMENT 'Data Fim do Cargo no Templo',
`situacao_templo_associacao` CHAR(1) NULL DEFAULT NULL COMMENT 'Situação do Templo (A/I)',
PRIMARY KEY (`id_templo`,`id_templo_associacao`,`id_templo_cargo`,`id_templo_fiel`) COMMENT 'Código da Associação no Templo');