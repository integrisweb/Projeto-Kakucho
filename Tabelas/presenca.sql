CREATE TABLE `budis479_hbs`.`presenca` ( 
`id_presenca` INT NULL DEFAULT NULLCOMMENT 'Código da Presenca' ,
`id_fiel` INT NULL DEFAULT NULLCOMMENT 'Código do Fiel' , 
`id_templo` INT NULL DEFAULT NULL COMMENT 'Código do templo' , 
`id_culto` INT NULL DEFAULT NULL COMMENT 'Código do Culto' ,
`id_grupo` INT NULL DEFAULT NULL COMMENT 'Código do Grupo' ,
`data_presenca` DATE NULL DEFAULT NULL COMMENT 'Data de Comparecimento' ,
`situacao_presenca` INT NOT NULL ,
PRIMARY KEY (`id_presenca`) COMMENT 'Chave Primário'
) ENGINE = MyISAM;