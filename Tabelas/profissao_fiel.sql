CREATE TABLE `profissao_fiel` ( 
`id_profissao_fiel` INT NOT NULL AUTO_INCREMENT COMMENT 'C�digo Profiss�o Fiel' , 
`nome_profissao_fiel`VARCHAR(30) NOT NULL COMMENT 'Nome da Profiss�o do Fiel' , 
`situacao_fiel`CHAR(1) NOT NULL COMMENT 'Situa��o do Fiel' , 
PRIMARY KEY(`id_profissao_fiel`)) ENGINE = MyISAM;