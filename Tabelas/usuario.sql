CREATE TABLE usuario(
id_usuario INT( 11 ) NOT NULL AUTO_INCREMENT ,
nome_usuario VARCHAR( 60 ) COLLATE utf8_unicode_ci DEFAULT NULL ,
email_usuario VARCHAR( 50 ) COLLATE utf8_unicode_ci DEFAULT NULL ,
senha_usuario VARCHAR( 32 ) COLLATE utf8_unicode_ci DEFAULT NULL ,
situacao_usuarioCHAR( 1 ) COLLATE utf8_unicode_ci DEFAULT NULL ,
data_usuario DATETIME DEFAULT NULL ,
nivel_usuario INT( 11 ) NOT NULL DEFAULT  '1',
foto_usuario VARCHAR( 100 ) COLLATE utf8_unicode_ci NOT NULL ,
PRIMARY KEY (  `id_usuario` ) COMMENT  'Código do Usuário',
INDEX  `idx_nm_usuaropo` (  `nome_usuario` ( 60 ) ) COMMENT  'Nome do Usuário'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into usuario(nome_usuario,senha_usuario,situacao_usuario) values('admin','zcx#21','N');