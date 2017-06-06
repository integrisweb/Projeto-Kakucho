CREATE TABLE `tipo_doacao` ( 
`id_tipo_doacao` INT NOT NULL AUTO_INCREMENT COMMENT 'Código do Tipo da Doação', 
`nome_tipo_doacao` VARCHAR(40) NOT NULL COMMENT 'Tipo de Doação', 
`centro_custo` VARCHAR(20) NULL COMMENT 'Centro de Custo', 
`situacao_doacao` CHAR(1) NOT NULL COMMENT'Situação da Doação', 
PRIMARY KEY (`id_tipo_doacao`) COMMENT 'Código da Doação');