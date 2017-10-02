CREATE TABLE `fiel_associacao` (
`id_fiel_associacao` INT NOT NULL AUTO_INCREMENT COMMENT 'Código da Associação',
`id_associacao` INT NOT NULL COMMENT 'Código da Associação',
`id_templo` INT NOT NULL 'Código do Templo',
`id_cargo` int NOT NULL 'Campo Código do Cargo, Auto Incremento',
`id_grau` INT NOT NULL 'Código do Grau' ,
`data_ultima_graduacao` DATETIME NOT COMMENT 'Data da Última Graduação',
`data_ultima_graduacao_JP` DATETIME NOT COMMENT 'Data Última Graduação_JP'
`quantidade_de_pontos` INT NULL 'Quantidade de Pontos',
`grau_atual` INT NULL 'Quantidade de Pontos',
`data_graduacao_atual_JP` DATETIME NOT COMMENT 'Data Graduacao Atual_JP'
`Observacao` varchar(100) NULL COMMENT 'Observação do Fiel Associação',
`situacao_fiel_associacao` CHAR(1) NULL DEFAULT NULL COMMENT 'Situacao Fiel Associacao',
PRIMARY KEY (`id_fiel_associacao`) COMMENT 'Código do Fiel Associação');