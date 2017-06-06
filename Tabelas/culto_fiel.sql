CREATE TABLE `culto_fiel` (
`id_culto_fiel` INT NOT NULL AUTO_INCREMENT COMMENT 'Código do Culto do Fiel',
`id_templo` INT NOT NULL COMMENT 'Código do Templo',
`id_culto` INT NOT NULL COMMENT 'Código do Culto',
`id_fiel` INT NOT NULL COMMENT 'Código do Fiel',
`situacao_culto_fiel` CHAR(1) NULL DEFAULT NULL COMMENT 'Situação do Culto Fiel (A/I)',
PRIMARY KEY (`id_culto_fiel`) COMMENT 'Código do Fiel');