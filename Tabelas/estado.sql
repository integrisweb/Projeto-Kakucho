CREATE TABLE `estado` ( 
`id_estado` int(11) NOT NULL AUTO_INCREMENT COMMENT 'código do Estado' ,
 `nome_estado` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT  'Nome do Estado',
 `estado`  char(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT  'Sigla do Estado' , 
 `situacao_estado` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT  'Situação do Estado' , 
 PRIMARY KEY (`id_estado`) COMMENT'id_estado' ) ENGINE = MyISAM;