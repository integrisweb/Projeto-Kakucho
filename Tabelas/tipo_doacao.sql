CREATE TABLE `tipo_doacao` ( 
`id_tipo_doacao` INT NOT NULL AUTO_INCREMENT COMMENT'C�digo da Doa��o' , 
`nome_tipo_doacao` VARCHAR(40) NOT NULL COMMENT 'Tipo de Doa��o' , 
`centro_custo`VARCHAR(20) NOT NULL COMMENT 'Centro de Custo', 
`situacao_doacao` CHAR(1) NOT NULL COMMENT'Situa��o da Doa��o' , 
PRIMARY KEY (`id_tipo_doacao`) COMMENT 'id_Doacao') ENGINE = MyISAM;