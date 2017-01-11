CREATE TABLE `budis479_hbs`.`culto` ( 
`id_cultoc` INT NOT NULL AUTO_INCREMENT COMMENT'Código do Culto' , 
`nome_culto` VARCHAR(30) NOT NULL COMMENT 'Tipo do Culto' ,
`especial` CHAR(1) NOT NULL COMMENT 'Culto Especial (S/N)' , 
`situacao_Culto`CHAR(1) NOT NULL COMMENT 'Situação do Culto' , PRIMARY KEY (`id_Culto`)COMMENT 'Id_Culto' ) ENGINE = MyISAM;