CREATE TABLE `budis479_hbs`.`tipo_doacao` ( `id_doacao` INT NOT NULL COMMENT'C�digo da Doa��o' , `tipo_doacao` VARCHAR(40) NOT NULL COMMENT 'Tipo de Doa��o' , `centro_custo`VARCHAR(20) NOT NULL COMMENT 'Centro de Custo', `situacao_doacao` CHAR(1) NOT NULL COMMENT'Situa��o da Doa��o' , PRIMARY KEY (`id_doacao`)COMMENT 'id_Doacao') ENGINE = MyISAM;