CREATE TABLE `doacao` ( 
`id_doacao` INT NOT NULL AUTO_INCREMENT COMMENT 'Código da Doação',
`id_templo` INT NOT NULL COMMENT 'Código do Templo',
`id_tipo_doacao` INT NOT NULL 'Código da Doação',
`data_doacao` DATETIME NULL COMMENT 'Data de Doacao',
`situacao_doacao`CHAR(1) NOT NULL COMMENT 'Situação da Doação (A)tivo (I)nativo' , 
PRIMARY KEY (`id_culto`) COMMENT 'id_culto' 
);