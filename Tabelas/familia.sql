CREATE TABLE `familia` (
`id_familia`           INT NOT NULL  AUTO_INCREMENT COMMENT 'Código da Família',
`id_responsavel`       INT NOT NULL COMMENT 'Código do Responsável da Família',
`nome_familia`         VARCHAR(50) NOT NULL COMMENT ' da Associação', 
`data_inicio_familia`  DATETIME NULL COMMENT 'Data de Início da Familia',
`data_termino_familia` DATETIME NULL COMMENT 'Data de Término da Família',
`situacao_familia`     CHAR(1) NULL DEFAULT NULL COMMENT 'Situação da Família (A/I)',
PRIMARY KEY (`id_familia`) COMMENT 'Código da Família');