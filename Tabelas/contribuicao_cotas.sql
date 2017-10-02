CREATE TABLE `contribuicao_cotas` (
`id_tipo_cota` INT NOT NULL COMMENT 'Código do Fiel',
`id_fiel` INT NOT NULL COMMENT 'Código do Fiel',
`quantidade_cotas` INT NULL COMMENT 'Quantidade de Cotas',
`valor_unitario` DECIMAL(15,2) NOT NULL COMMENT 'Valor Unitário da Cota',
`valor_contribuicao_cota` DECIMAL(15,2) NOT NULL COMMENT 'Valor Contribuição da Cota',
`situacao_fiel_historico` CHAR(1) NULL DEFAULT NULL COMMENT 'Situação do Fiel (A/I)',
INDEX `idx_contribuicao_cotas` (`id_tipo_cota`,`id_fiel`) COMMENT 'Ano de Referência e Código do Fiel' );