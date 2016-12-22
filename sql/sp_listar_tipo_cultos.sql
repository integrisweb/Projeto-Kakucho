--Procedure com opções
--opcao [obt,lst]
--parâmetros de entrada[Intid_culto, Strnome_culto, Strespecial]
--create procedure sp_listar_tipo_cultos(in Intid_culto INTEGER, in Strnome_culto VARCHAR(30), Strespecial CHAR(1))

delimiter $$
drop procedure if exists sp_listar_tipo_cultos

create procedure sp_listar_tipo_cultos(in opcao CHAR(3), in Intid_culto INTEGER, in Strnome_culto CHAR(30), in Strespecial CHAR(1))
begin
  if opcao = 'obt' then --obter
     if Intid_culto is not null then --obter pelo código do culto
        select id_culto, nome_culto, especial, situacao_culto from culto where id_culto = Intid_culto and situacao_culto = 'A';
     else if Strnome_culto is not null then --obter por nome do culto
             select id_culto, nome_culto, especial, situacao_culto from culto where nome_culto like '%Strnome_culto%' and situacao_culto = 'A';
     else if Strespecial is not null then --obter apenas cultos especiais
             select id_culto, nome_culto, especial, situacao_culto from culto where especial = Strespecial;
     end if;
  else if opcao = 'lst' then --listar apenas dados ativos
        select id_culto, nome_culto, especial, situacao_culto from culto where situacao_culto = 'A';
  end if;
end $$
delimiter ;
