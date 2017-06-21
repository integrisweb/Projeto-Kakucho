
CREATE TABLE `cargo` (
 `id_cargo` int NOT NULL AUTO_INCREMENT COMMENT 'Campo Código do Cargo, Auto Incremento',
 `nome_cargo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nome do Cargo para Membros da HBS',
 `situacao_cargo` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Situação do Cargo para HBS',
 PRIMARY KEY (`id_cargo`) COMMENT 'Chave Primária'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabela de Cargos para HBS'