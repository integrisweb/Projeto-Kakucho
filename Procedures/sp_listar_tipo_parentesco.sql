--Procedure com opções
--opcao [obt,lst]
--parâmetros de entrada[Intid_parentesco, Strnome_parentesco]
--create procedure sp_listar_tipo_parentesco(in Intid_parentesco INTEGER, Strnome_parentesco VARCHAR(40))

delimiter $$
drop procedure if exists sp_listar_tipo_parentesco

create procedure sp_listar_tipo_parentesco(in opcao CHAR(3), in Intid_parentesco INTEGER, in Strnome_parentesco VARCHAR(40))
begin
  if opcao = 'obt' then --obter
     if Intid_parentesco is not null then --obter pelo código do parentesco
        select id_parentesco, nome_parentesco, situacao_parentesco from parentesco where id_parentesco = Intid_parentesco;
     else if Strnome_parentesco is not null then --obter por nome do parentesco
           select id_parentesco, nome_parentesco, situacao_parentesco from parentesco where nome_parentesco like '%'+Strnome_parentesco+'%';
     end if;
  else if opcao = 'lst' then --listar apenas dados ativos
        select id_parentesco, nome_parentesco, situacao_parentesco from parentesco where situacao_parentesco = 'A';
  end if;
end $$
delimiter ;
