CREATE TABLE `doacao_fiel` (
`id_doacao_fiel` INT NOT NULL AUTO_INCREMENT COMMENT 'Código da Doação do Fiel',
`id_doacao` INT NOT NULL COMMENT 'Código da Doação',
`id_fiel` INT NOT NULL COMMENT 'Código do Fiel',
`valor_doacao_fiel` DECIMAL(15,2) NULL COMMENT 'valor recebido Templo Doação',
PRIMARY KEY (`id_doacao_fiel`) COMMENT 'Código da Doação do Fiel');
