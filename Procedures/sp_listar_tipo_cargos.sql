--Procedure com opções
--opcao [obt,lst]
--parâmetros de entrada[Intid_cargo, Strnome_cargo]
--create procedure sp_listar_tipo_cargos(in Intid_cargo INTEGER, Strnome_cargo VARCHAR(40))

delimiter $$
drop procedure if exists sp_listar_tipo_cargos

create procedure sp_listar_tipo_cargos(in opcao CHAR(3), in Intid_cargo INTEGER, in Strnome_cargo VARCHAR(40))
begin
  if opcao = 'obt' then --obter
     if Intid_cargo is not null then --obter pelo código do cargo
        select id_cargo, nome_cargo, situacao_cargo from cargo where id_cargo = Intid_cargo;
     else if Strnome_cargo is not null then --obter por nome do cargo
           select id_cargo, nome_cargo, situacao_cargo from cargo where nome_cargo like '%'+Strnome_cargo+'%';
     end if;
  else if opcao = 'lst' then --listar apenas dados ativos
        select id_cargo, nome_cargo, situacao_cargo from cargo where situacao_cargo = 'A';
  end if;
end $$
delimiter ;
