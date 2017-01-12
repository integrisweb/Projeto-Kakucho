CREATE TABLE `profissao_fiel` ( 
`id_profissao_fiel` INT NOT NULL AUTO_INCREMENT COMMENT 'Código Profissão Fiel' , 
`nome_profissao_fiel`VARCHAR(30) NOT NULL COMMENT 'Nome da Profissão do Fiel' , 
`situacao_fiel`CHAR(1) NOT NULL COMMENT 'Situação do Fiel' , 
PRIMARY KEY(`id_profissao_fiel`)) ENGINE = MyISAM;