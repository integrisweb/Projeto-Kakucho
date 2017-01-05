--Procedure com opções
--opcao [obt,lst]
--parâmetros de entrada[Intid_regiao, Strnome_regiao]
--create procedure sp_listar_tipo_regiaos(in Intid_regiao INTEGER, Strnome_regiao VARCHAR(40))

delimiter $$
drop procedure if exists sp_listar_tipo_regiao

create procedure sp_listar_tipo_regiao(in opcao CHAR(3), in Intid_regiao INTEGER, in Strnome_regiao VARCHAR(40))
begin
  if opcao = 'obt' then --obter
     if Intid_regiao is not null then --obter pelo código do regiao
        select id_regiao, nome_regiao, situacao_regiao from regiao where id_regiao = Intid_regiao;
     else if Strnome_regiao is not null then --obter por nome do regiao
           select id_regiao, nome_regiao, situacao_regiao from regiao where nome_regiao like '%'+Strnome_regiao+'%';
     end if;
  else if opcao = 'lst' then --listar apenas dados ativos
        select id_regiao, nome_regiao, situacao_regiao from regiao where situacao_regiao = 'A';
  end if;
end $$
delimiter ;
