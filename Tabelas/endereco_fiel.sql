CREATE TABLE `endereco_fiel` (
`id_fiel` INT NOT NULL COMMENT 'Código do Fiel',
`endereco_fiel` VARCHAR(40) NULL DEFAULT NULL COMMENT 'Endereço do Fiel',
`numero_res_com_fiel` INT NOT NULL COMMENT 'Número Residencial/Comercial do Fiel',
`complemento_fiel` VARCHAR(20) NULL DEFAULT NULL COMMENT 'Complemento de Endereço do Fiel',
`bairro_fiel` VARCHAR(40) NULL DEFAULT NULL COMMENT 'Bairro do Fiel',
`cidade_fiel` VARCHAR(50) NULL DEFAULT NULL COMMENT 'Cidade do Fiel',
`uf_fiel` CHAR(2) NULL DEFAULT NULL COMMENT 'Estado do Fiel',
`cep_fiel` CHAR(10) NULL DEFAULT NULL COMMENT 'Estado do Fiel',
`cx_postal_fiel` VARCHAR(15) NULL DEFAULT NULL COMMENT 'Cidade do Fiel',
`tipo_endereco_fiel` CHAR(1) NULL DEFAULT NULL COMMENT 'Tipo de Endereço do Fiel (Residencial/Comercial)',
PRIMARY KEY (`id_fiel`) COMMENT 'Código do Fiel');