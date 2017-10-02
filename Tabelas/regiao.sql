CREATE TABLE `regiao` (
`id_regiao` INT NOT NULL AUTO_INCREMENT COMMENT 'Código da Região',
`id_templo` INT NOT NULL COMMENT 'Código do Templo do Fiel',
`nome_regiao` VARCHAR(40) NOT NULL COMMENT 'Nome da Região',
`situacao_regiao` CHAR(1) NULL DEFAULT NULL COMMENT 'Situação da Região',
PRIMARY KEY (`id_regiao`) COMMENT 'Código da Região');