CREATE TABLE `gohonzon` ( 
`id_gohonzon` INT NOT NULL AUTO_INCREMENT COMMENT 'Código do Tipo de Gohozon', 
`nome_gohonzon` VARCHAR(40) NOT NULL COMMENT 'Tipo de Gohozon', 
`situacao_gohonzon` CHAR(1) NOT NULL COMMENT'Situação do Gohozon (A)tivo (I)nativo', 
PRIMARY KEY (`id_gohonzon`) COMMENT 'Código do Tipo de Gohozon');