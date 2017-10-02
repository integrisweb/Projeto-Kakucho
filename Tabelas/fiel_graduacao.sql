CREATE TABLE `fiel_graduacao` (
`ano_referencia_graduacao` INT NOT NULL COMMENT 'Ano de Refeência do Histórico do Fiel',
`id_fiel` INT NOT NULL COMMENT 'Código do Fiel' ,
`id_associacao` INT NOT NULL COMMENT 'Código da Associação',
`id_templo` INT NOT NULL COMMENT 'Código do Templo',
`id_grupo` INT NOT NULL COMMENT 'Código do Grupo',
`id_cargo` int NOT NULL COMMENT 'Campo Código do Cargo, Auto Incremento',
`id_grau` INT NOT NULL COMMENT 'Código do Grau',
`graduacao_atual` INT NULL COMMENT 'Quantidade de Pontos',
`graduacao_anterior` INT NULL COMMENT 'Quantidade de Pontos',
`data_graduacao_atual_BR` DATETIME NULL COMMENT 'Data Graduacao Atual BR',
`data_graduacao_atual_JP` DATETIME NULL COMMENT 'Data Graduacao Atual JP',
`data_ultima_graduacao_atual_BR` DATETIME NULL COMMENT 'Última Graduação BR',
`data_ultima_graduacao_atual_JP` DATETIME NULL COMMENT 'Última Graduacao JP',
`total_contribuicao` DECIMAL(15,2) NULL COMMENT 'Valor Total Recebido do Fiel',
`data_ultima_graduacao` DATETIME NULL COMMENT 'Data da Última Graduação',
`data_ultima_graduacao_JP` DATETIME NULL COMMENT 'Data Última Graduação_JP',
`quantidade_de_pontos` INT NULL COMMENT 'Quantidade de Pontos',
`total_culto_assistencia` INT NULL COMMENT 'Total de Cultos Assistenciais',
`total_promotor_culto` INT NULL COMMENT 'Total em Promover Cultos',
`total_participacao_culto` INT NULL COMMENT 'Total de Participaçã(ões) em Culto(s)',
`Observacao` varchar(100) NULL COMMENT 'Observação do Fiel Associação',
`situacao_fiel_graduacao` CHAR(1) NULL DEFAULT NULL COMMENT 'Situacao Fiel Associacao',
INDEX `idx_historico` (`ano_referencia_graduacao`,`id_fiel`) COMMENT 'Ano de Referência e Código do Fiel' );