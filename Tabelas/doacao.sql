CREATE TABLE `doacao` ( 
`id_doacao` INT NOT NULL AUTO_INCREMENT COMMENT 'Código da Doação',
`id_templo_doacao` INT NOT NULL COMMENT 'Código do Templo Doação',
`id_templo_fiel` INT NOT NULL COMMENT 'Código do Templo do Fiel',
`id_tipo_doacao` INT NOT NULL COMMENT 'Código da Doação',
`id_fiel` INT NOT NULL COMMENT 'Código do Fiel',
`valor_doacao_fiel` DECIMAL(15,2) NOT NULL COMMENT 'valor recebido Templo Doação',
`data_doacao` DATETIME NOT NULL COMMENT 'Data de Doacao',
`situacao_doacao` CHAR(1) NOT NULL COMMENT 'Situação da Doação (A)tivo (I)nativo' , 
PRIMARY KEY (`id_doacao`) COMMENT 'id_doacao' 
);