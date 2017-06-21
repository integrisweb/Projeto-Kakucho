CREATE TABLE `culto` ( 
`id_culto` INT NOT NULL AUTO_INCREMENT COMMENT 'Código do Culto' ,
`id_tipo_culto`     INT NOT NULL COMMENT 'Código do Culto' ,
`id_sacerdote`      INT NULL COMMENT 'Código do Fiel/Sacerdote' ,
`id_templo`         INT NULL COMMENT 'Código do Templo' ,
`id_regiao`         INT NULL COMMENT 'Código da Região do Culto' ,
`id_associacao`     INT NULL COMMENT 'Código da Associação Promotora do Culto' ,
`id_grupo`          INT  COMMENT 'Código do Grupo' ,
`id_fiel`           INT NULL COMMENT 'Código do Fiel' ,
`data_culto`        DATETIME NULL COMMENT 'Data do culto',
`hora_culto`        DATETIME NULL COMMENT 'Hora do culto',
`localizacao_culto` VARCHAR(50) NOT NULL COMMENT 'Localização do Culto' , 
`situacao_culto`    CHAR(1)     NOT NULL COMMENT 'Situação do Culto (A)tivo (I)nativo' , 
PRIMARY KEY (`id_culto`) COMMENT 'id_culto' 
);