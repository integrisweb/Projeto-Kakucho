CREATE TABLE `associacao_fiel` (
`id_fiel` INT NOT NULL COMMENT 'Código do Fiel',
`id_templo` INT NOT NULL COMMENT 'Código do Templo do Fiel',
`id_regiao` INT NOT NULL COMMENT 'Código da Região do Fiel',
`id_grupo` INT NOT NULL COMMENT 'Código do Grupo do Fiel',
`id_templo_anterior_associacao` INT NOT NULL COMMENT 'Código do Templo Anterior do Fiel',
`id_grupo_anterior_associacao` INT NOT NULL COMMENT 'Código do Grupo Anterior do Fiel',
`data_ingresso_associacao` DATETIME NOT NULL COMMENT 'Data de Ingresso do Fiel',
`data_desligamento_associacao` DATETIME NOT NULL COMMENT 'Data de Desligamento do Fiel',
PRIMARY KEY (`id_fiel`,`id_templo`,`id_regiao`,`id_grupo`) COMMENT 'Código do Fiel');