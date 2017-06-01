CREATE TABLE `regiao` (
`id_regiao` INT NOT NULL COMMENT 'Código da Região',
`nome_regiao` VARCHAR(40) NULL DEFAULT NULL COMMENT 'Nome da Região',
`situacao_regiao` CHAR(1) NULL DEFAULT NULL COMMENT 'Situação da Região',
PRIMARY KEY (`id_regiao`) COMMENT 'Código da Região');