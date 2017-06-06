CREATE TABLE `templo_doacao`( 
`id_templo` INT NOT NULL COMMENT 'Código do Templo', 
`id_templo_doacao` INT NOT NULL COMMENT 'Código do Doacao no Templo',
`data_templo_doacao` DATETIME NULL COMMENT 'Data da Doação',
`valor_templo_doacao` DECIMAL(15,2) NULL COMMENT 'valor recebido Templo Doação',
`situacao_templo_doacao` CHAR(1) NULL DEFAULT NULL COMMENT 'Situação do Templo (A/I)',
PRIMARY KEY (`id_templo`,`id_templo_doacao`) COMMENT 'Código da Doação no Templo');