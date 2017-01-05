--Procedure Estado - com opções
--opcao [obt,lst]
--parâmetros de entrada[Intid_estado,estado ,Strnome_estado, Strsituacao_estado]
--create procedure sp_listar_tipo_estados(in opcao CHAR(3), in Intid_estado INTEGER, in Strestado CHAR(2), in Strnome_estado CHAR(40), in Strsituacao_estado CHAR(1))

delimiter $$
drop procedure if exists sp_listar_tipo_estados

create procedure sp_listar_tipo_estados(in opcao CHAR(3), in Intid_estado INTEGER, in Strestado CHAR(2), in Strnome_estado CHAR(40), in Strsituacao_estado CHAR(1))
begin
  if opcao = 'obt' then --obter
     if Intid_estado is not null then --obter pelo código do estado
        select id_estado, nome_estado, estado, situacao_estado from estado where id_estado = Intid_estado and Strsituacao_estado = 'A';
     else if Strestado is not null then --obter pela sigla do Estado
             select id_estado, nome_estado, estado, situacao_estado from estado where estado = Strestado and Strsituacao_estado = 'A';
	 else if Strnome_estado is not null then --obter por nome do estado
             select id_estado, nome_estado, estado, situacao_estado from estado where nome_estado like '%'+Strnome_estado+'%' and Strsituacao_estado = 'A';
     else if Strsituacao_estado is not null then --obter apenas a Situação do Estado (Ativo/Inativo)
             select id_estado, nome_estado, estado, situacao_estado from estado where especial = Strespecial;
     end if;
  else if opcao = 'lst' then --listar apenas dados ativos
        select id_estado, nome_estado, estado, situacao_estado from estado where Strsituacao_estado = 'A';
  end if;
end $$
delimiter ;
