--Procedure com opções
--opcao [obt,lst]
--parâmetros de entrada[Intid_templo, Strnome_templo]
--create procedure sp_listar_tipo_templos(in Intid_templo INTEGER, in Strnome_templo CHAR(40))

delimiter $$
drop procedure if exists sp_listar_templos

create procedure sp_listar_templos(in opcao char(3), in Intid_templo INTEGER, in Strnome_templo CHAR(40))
begin
  if opcao = 'obt' then --obter
     if Intid_templo is not null then --obter pelo código do templo
        select id_templo, nome_templo, situacao_templo from templo where id_templo = Intid_templo;
     else if Strnome_templo is not null then --obter por nome do templo
           select id_templo, nome_templo, situacao_templo from templo where nome_templo like '%'+Strnome_templo+'%';
     end if;
  else if opcao = 'lst' then --listar apenas dados ativos
        select id_templo, nome_templo, situacao_templo from templo where situacao_templo = 'A';
  end if;
end $$
delimiter ;
