CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código do Usuário',
  `id_templo` INT NOT NULL COMMENT 'Código do Templo',  
  `nome_usuario` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_usuario` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha_usuario` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `situacao_usuario` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_usuario` datetime DEFAULT NULL,
  `nivel_usuario` int(11) NOT NULL DEFAULT '1',
  `foto_usuario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_usuario`) COMMENT 'Código do Usuário',
  KEY `idx_nm_usuaropo` (`nome_usuario`) COMMENT 'Nome do Usuário'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;