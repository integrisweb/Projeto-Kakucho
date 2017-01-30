CREATE TABLE `cultos` ( 
`id_culto` INT NOT NULL AUTO_INCREMENT COMMENT'Código do Culto' , 
`nome_culto` VARCHAR(30) NOT NULL COMMENT 'Tipo do Culto' ,
`especial` CHAR(1) NOT NULL COMMENT 'Culto Especial (S/N)' , 
`situacao_culto`CHAR(1) NOT NULL COMMENT 'Situação do Culto' , 
PRIMARY KEY (`id_culto`) COMMENT 'id_culto' 
) ENGINE = MyISAM;