--Procedure com opções
--opcao [obt,lst]
--parâmetros de entrada[Intid_grau, Strnome_grau]
--create procedure sp_listar_tipo_graus(in Intid_grau INTEGER, in Strnome_grau VARCHAR(30), In Strsituacao_grau CHAR(1))

delimiter $$
drop procedure if exists sp_listar_tipo_grau

create procedure sp_listar_tipo_grau(in opcao CHAR(3), in Intid_grau INTEGER, in Strnome_grau VARCHAR(30), In Strsituacao_grau CHAR(1))
begin
  if opcao = 'obt' then --obter
     if Intid_grau is not null then --obter pelo código do grau
        select id_grau, nome_grau, situacao_grau from grau where id_grau = Intid_grau;
     else if Strnome_grau is not null then --obter por nome do grau
           select id_grau, nome_grau, situacao_grau from grau where nome_grau like '%'+Strnome_grau+'%';
     end if;
  else if opcao = 'lst' then --listar apenas dados ativos
        select id_grau, nome_grau, situacao_grau from grau where situacao_grau = 'A';
  end if;
end $$
delimiter ;
