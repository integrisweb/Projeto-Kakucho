--Procedure com opções
--opcao [obt,lst]
--parâmetros de entrada[Intid_tipo_doacao, Strnome_tipo_doacao]
--create procedure sp_listar_tipo_tipo_doacaos(in Intid_tipo_doacao INTEGER, Strcentro_custo ,Strnome_tipo_doacao VARCHAR(40))

delimiter $$
drop procedure if exists sp_listar_tipo_tipo_doacao

create procedure sp_listar_tipo_tipo_doacao(in opcao CHAR(3), in Intid_tipo_doacao INTEGER, in Strnome_tipo_doacao VARCHAR(40), in Strcentro_custo VARCHAR(20))
begin
  if opcao = 'obt' then --obter
     if Intid_tipo_doacao is not null then --obter pelo código do tipo_doacao
        select id_tipo_doacao, nome_tipo_doacao, centro_custo, situacao_tipo_doacao from tipo_doacao where id_tipo_doacao = Intid_tipo_doacao;
     else if Strnome_tipo_doacao is not null then --obter por nome do tipo_doacao
           select id_tipo_doacao, nome_tipo_doacao, centro_custo, situacao_tipo_doacao from tipo_doacao where nome_tipo_doacao like '%'+Strnome_tipo_doacao+'%';
     end if;
  else if opcao = 'lst' then --listar apenas dados ativos
        select id_tipo_doacao, nome_tipo_doacao, centro_custo, situacao_tipo_doacao from tipo_doacao from tipo_doacao where situacao_tipo_doacao = 'A';
  end if;
end $$
delimiter ;
