CREATE TABLE `associacao` (
`id_associacao` INT NOT NULL COMMENT 'Código da Associação',
`nome_associacao` INT NOT NULL COMMENT ' da Associação',
`situacao_associacao` CHAR(1) NULL DEFAULT NULL COMMENT 'Situação do Fiel (A/I)',
PRIMARY KEY (`id_associacao`) COMMENT 'Código da Associação');