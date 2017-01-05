--Procedure com opções
--opcao [obt,lst]
--parâmetros de entrada[Intid_profissao_fiel, Strnome_profissao_fiel]
--create procedure sp_listar_tipo_profissao_fiels(in Intid_profissao_fiel INTEGER, Strnome_profissao_fiel VARCHAR(40))

delimiter $$
drop procedure if exists sp_listar_tipo_profissao_fiel

create procedure sp_listar_tipo_profissao_fiel(in opcao CHAR(3), in Intid_profissao_fiel INTEGER, in Strnome_profissao_fiel VARCHAR(40))
begin
  if opcao = 'obt' then --obter
     if Intid_profissao_fiel is not null then --obter pelo código do profissao_fiel
        select id_profissao_fiel, nome_profissao_fiel, situacao_profissao_fiel from profissao_fiel where id_profissao_fiel = Intid_profissao_fiel;
     else if Strnome_profissao_fiel is not null then --obter por nome do profissao_fiel
           select id_profissao_fiel, nome_profissao_fiel, situacao_profissao_fiel from profissao_fiel where nome_profissao_fiel like '%'+Strnome_profissao_fiel+'%';
     end if;
  else if opcao = 'lst' then --listar apenas dados ativos
        select id_profissao_fiel, nome_profissao_fiel, situacao_profissao_fiel from profissao_fiel where situacao_profissao_fiel = 'A';
  end if;
end $$
delimiter ;
