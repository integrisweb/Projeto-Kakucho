CREATE TABLE `tipo_cotas` (
`id_tipo_cota` INT NOT NULL AUTO_INCREMENT COMMENT 'Código Tipo da Cota',
`nome_tipo_cota` VARCHAR(20) NULL DEFAULT NULL COMMENT 'Nome do Fiel',
`controle_tipo_cota` INT  NULL COMMENT 'Número de Controle Tipo Cota',
`valor_tipo_cota` DECIMAL(15,2) NOT NULL COMMENT 'Valor do Tipo de Cota',
PRIMARY KEY (`id_tipo_cota`) COMMENT 'Código do Tipo de Cota' 
);